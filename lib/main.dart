import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: numberPuzzles(),
    debugShowCheckedModeBanner: false,
  ));
}

class numberPuzzles extends StatefulWidget {
  const numberPuzzles({super.key});

  @override
  State<numberPuzzles> createState() => _numberPuzzlesState();
}
bool temp=true,count=true;
String winValue="Number Puzzle";
int second=0;
int minute=0;
class _numberPuzzlesState extends State<numberPuzzles> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    TimerCount();
  }


  List btn=["0","","","","","","","","",""];
  @override
  Widget build(BuildContext context) {
    if(temp){
      reset();
    }
    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 147, 85, 48),
        width: ScreenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              // width: ScreenWidth*0.5,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 10)],
                  color: Color.fromARGB(255, 124, 71, 43),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "$winValue",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 202, 140)
                      ),
                    ),
                  ),
                  Container(
                    width: ScreenWidth*0.4,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 202, 140),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    boxShadow: [BoxShadow(blurRadius: 4)],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 3,bottom: 3),
                          child: Icon(Icons.alarm),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "${(minute<10)?"0$minute":minute}:${(second<10)?"0$second":second}",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: ScreenWidth-20,
              height: ScreenHeight*0.50,
              decoration: BoxDecoration(
                color: Color.fromARGB(255,202, 108, 54),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(6))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: ScreenWidth-60,
                    height: ScreenHeight*0.45,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 56, 14, 3),
                        boxShadow: [BoxShadow(blurRadius: 15)],
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    height: 200,
                                    margin: EdgeInsets.only(top: 2,left: 2,right: 1,bottom: 1),
                                    decoration: BoxDecoration(
                                        color: (btn[1]!="")?Color.fromARGB(255, 254, 214, 163):null,
                                        border: (btn[1]!="")?Border.all(
                                          width: 3,
                                          color: Color.fromARGB(255, 250, 184, 106),
                                        ):null,
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: TextButton(
                                      onPressed: (){
                                        checkButton(1);
                                      },
                                      child: Text(
                                        "${btn[1]}",
                                        style: TextStyle(
                                          fontSize: 50,
                                          color: Color.fromARGB(255, 115, 75, 39),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ),
                                  )
                              ),
                              Expanded(
                                  child: Container(
                                    height: 200,
                                    margin: EdgeInsets.only(top: 2,left: 1,right: 1,bottom: 1),
                                    decoration: BoxDecoration(
                                        color: (btn[2]!="")?Color.fromARGB(255, 254, 214, 163):null,
                                        border: (btn[2]!="")?Border.all(
                                          width: 3,
                                          color: Color.fromARGB(255, 250, 184, 106),
                                        ):null,
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: TextButton(
                                      onPressed: (){
                                        checkButton(2);
                                      },
                                      child: Text(
                                        "${btn[2]}",
                                        style: TextStyle(
                                          fontSize: 50,
                                          color: Color.fromARGB(255, 115, 75, 39),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ),
                                  )
                              ),
                              Expanded(
                                  child: Container(
                                    height: 200,
                                    margin: EdgeInsets.only(top: 2,left: 1,right: 2,bottom: 1),
                                    decoration: BoxDecoration(
                                        color: (btn[3]!="")?Color.fromARGB(255, 254, 214, 163):null,
                                        border: (btn[3]!="")?Border.all(
                                          width: 3,
                                          color: Color.fromARGB(255, 250, 184, 106),
                                        ):null,
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: TextButton(
                                        onPressed: (){
                                          checkButton(3);
                                        },
                                        child: Text(
                                          "${btn[3]}",
                                          style: TextStyle(
                                            fontSize: 50,
                                            color: Color.fromARGB(255, 115, 75, 39),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    height: 200,
                                    margin: EdgeInsets.only(top: 1,left: 2,right: 1,bottom: 1),
                                    decoration: BoxDecoration(
                                      color: (btn[4]!="")?Color.fromARGB(255, 254, 214, 163):null,
                                      border: (btn[4]!="")?Border.all(
                                        width: 3,
                                        color: Color.fromARGB(255, 250, 184, 106),
                                      ):null,
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: TextButton(
                                        onPressed: (){
                                          checkButton(4);
                                        },
                                        child: Text(
                                          "${btn[4]}",
                                          style: TextStyle(
                                            fontSize: 50,
                                            color: Color.fromARGB(255, 115, 75, 39),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                    ),
                                  )
                              ),
                              Expanded(
                                  child: Container(
                                    height: 200,
                                    margin: EdgeInsets.only(top: 1,left: 1,right: 1,bottom: 1),
                                    decoration: BoxDecoration(
                                        color: (btn[5]!="")?Color.fromARGB(255, 254, 214, 163):null,
                                        border: (btn[5]!="")?Border.all(
                                          width: 3,
                                          color: Color.fromARGB(255, 250, 184, 106),
                                        ):null,
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: TextButton(
                                        onPressed: (){
                                          checkButton(5);
                                        },
                                        child: Text(
                                          "${btn[5]}",
                                          style: TextStyle(
                                            fontSize: 50,
                                            color: Color.fromARGB(255, 115, 75, 39),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                    ),
                                  )
                              ),
                              Expanded(
                                  child: Container(
                                    height: 200,
                                    margin: EdgeInsets.only(top: 1,left: 1,right: 2,bottom: 1),
                                    decoration: BoxDecoration(
                                        color: (btn[6]!="")?Color.fromARGB(255, 254, 214, 163):null,
                                        border: (btn[6]!="")?Border.all(
                                          width: 3,
                                          color: Color.fromARGB(255, 250, 184, 106),
                                        ):null,
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: TextButton(
                                        onPressed: (){
                                          checkButton(6);
                                        },
                                        child: Text(
                                          "${btn[6]}",
                                          style: TextStyle(
                                            fontSize: 50,
                                            color: Color.fromARGB(255, 115, 75, 39),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    height: 200,
                                    margin: EdgeInsets.only(top: 1,left: 2,right: 1,bottom: 2),
                                    decoration: BoxDecoration(
                                        color: (btn[7]!="")?Color.fromARGB(255, 254, 214, 163):null,
                                        border: (btn[7]!="")?Border.all(
                                          width: 3,
                                          color: Color.fromARGB(255, 250, 184, 106),
                                        ):null,
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: TextButton(
                                        onPressed: (){
                                          checkButton(7);
                                        },
                                        child: Text(
                                          "${btn[7]}",
                                          style: TextStyle(
                                            fontSize: 50,
                                            color: Color.fromARGB(255, 115, 75, 39),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                    ),
                                  )
                              ),
                              Expanded(
                                  child: Container(
                                    height: 200,
                                    margin: EdgeInsets.only(top: 1,left: 1,right: 1,bottom: 2),
                                    decoration: BoxDecoration(
                                        color: (btn[8]!="")?Color.fromARGB(255, 254, 214, 163):null,
                                        border: (btn[8]!="")?Border.all(
                                          width: 3,
                                          color: Color.fromARGB(255, 250, 184, 106),
                                        ):null,
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: TextButton(
                                        onPressed: (){
                                          checkButton(8);
                                        },
                                        child: Text(
                                          "${btn[8]}",
                                          style: TextStyle(
                                            fontSize: 50,
                                            color: Color.fromARGB(255, 115, 75, 39),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                    ),
                                  )
                              ),
                              Expanded(
                                  child: Container(
                                    height: 200,
                                    margin: EdgeInsets.only(top: 1,left: 1,right: 1,bottom: 2),
                                    decoration: BoxDecoration(
                                        color: (btn[9]!="")?Color.fromARGB(255, 254, 214, 163):null,
                                        border: (btn[9]!="")?Border.all(
                                          width: 3,
                                          color: Color.fromARGB(255, 250, 184, 106),
                                        ):null,
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: TextButton(
                                        onPressed: (){
                                          checkButton(9);
                                        },
                                        child: Text(
                                          "${btn[9]}",
                                          style: TextStyle(
                                            fontSize: 50,
                                            color: Color.fromARGB(255, 115, 75, 39),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ),
            Container(
              width: 130,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 72, 25, 9),
                borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              child: TextButton(
                onPressed: (){
                  reset();
                },
                child: Row(
                  children: [
                    Container(
                      child:Icon(
                          Icons.restart_alt,
                          color: Color.fromARGB(255, 254, 192, 125)
                      ),
                    ),
                    Container(
                      child: Text(
                        "RESET",
                        style: TextStyle(
                            color: Color.fromARGB(255, 254, 192, 125),
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              )
            ),
          ],
        ),
      )
    );
  }
  void checkButton(int num)
  {
    if(btn[num]!=""){
      if(num==1){
        if(btn[2]==""){
          btn[2]=btn[1];
          btn[1]="";
        }else if(btn[4]==""){
          btn[4]=btn[1];
          btn[1]="";
        }
      }else if(num==2){
        if(btn[1]==""){
          btn[1]=btn[2];
          btn[2]="";
        }else if(btn[3]==""){
          btn[3]=btn[2];
          btn[2]="";
        }else if(btn[5]==""){
          btn[5]=btn[2];
          btn[2]="";
        }
      }else if(num==3){
        if(btn[2]==""){
          btn[2]=btn[3];
          btn[3]="";
        }else if(btn[6]==""){
          btn[6]=btn[3];
          btn[3]="";
        }
      }else if(num==4){
        if(btn[1]==""){
          btn[1]=btn[4];
          btn[4]="";
        }else if(btn[5]==""){
          btn[5]=btn[4];
          btn[4]="";
        }else if(btn[7]==""){
          btn[7]=btn[4];
          btn[4]="";
        }
      }else if(num==5){
        if(btn[2]==""){
          btn[2]=btn[5];
          btn[5]="";
        }else if(btn[4]==""){
          btn[4]=btn[5];
          btn[5]="";
        }else if(btn[6]==""){
          btn[6]=btn[5];
          btn[5]="";
        }else if(btn[8]==""){
          btn[8]=btn[5];
          btn[5]="";
        }
      }else if(num==6){
        if(btn[3]==""){
          btn[3]=btn[6];
          btn[6]="";
        }else if(btn[5]==""){
          btn[5]=btn[6];
          btn[6]="";
        }else if(btn[9]==""){
          btn[9]=btn[6];
          btn[6]="";
        }
      }else if(num==7){
        if(btn[4]==""){
          btn[4]=btn[7];
          btn[7]="";
        }else if(btn[8]==""){
          btn[8]=btn[7];
          btn[7]="";
        }
      }else if(num==8){
        if(btn[5]==""){
          btn[5]=btn[8];
          btn[8]="";
        }else if(btn[7]==""){
          btn[7]=btn[8];
          btn[8]="";
        }else if(btn[9]==""){
          btn[9]=btn[8];
          btn[8]="";
        }
      }else if(num==9){
        if(btn[6]==""){
          btn[6]=btn[9];
          btn[9]="";
        }else if(btn[8]==""){
          btn[8]=btn[9];
          btn[9]="";
        }
      }
    }
    winStatus();
    setState(() { });
  }
  void winStatus() {
    if(btn.elementAt(1).toString()=="1" && btn.elementAt(2).toString()=="2" && btn.elementAt(3).toString()=="3" && btn.elementAt(4).toString()=="4" && btn.elementAt(5).toString()=="5" && btn.elementAt(6).toString()=="6" && btn.elementAt(7).toString()=="7" && btn.elementAt(8).toString()=="8"){
      count=false;
      winValue="You Are Win";
      Future.delayed(Duration(seconds: 5),(){
        reset();
      });
    }
  }
  void reset({bool? update})
  {
    count=true;
    second=0;
    minute=0;
    winValue="Number Puzzle";
    temp=false;
    int r,skip;
    while(true){
      skip=Random().nextInt(10);
      if(skip!=0){
        break;
      }
    }
    for(int i=1;i<btn.length;i++){
      btn[i]="";
    }
    for(int i=1;i<btn.length;i++){
      if(skip==i) {
        continue;
      }
      while(true) {
        r=Random().nextInt(10);
        if(!btn.contains(r) && r!=0 && r!=9){
          btn[i]=r;
          break;
        }
      }
    }
    if(update==null){
      setState(() { });
    }
    initState();
  }
  void TimerCount() {
    Future.delayed(Duration(seconds: 1), () {
      if (count) {
        setState(() {
          second++;
          if (second == 60) {
            minute++;
            second = 0;
          }
        });
        TimerCount();  // Restart the timer after each tick
      }
    });
  }
}
