
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftclicked =1;
  int rightclicked =1;
  void clicked(){
    leftclicked = Random().nextInt(6)+1;
    rightclicked= Random().nextInt(6)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children:<Widget> [Expanded(child:TextButton(
          onPressed: ()
          { setState(() {
            clicked();

          });
           },
          child: Image.asset('images/dice$leftclicked.png'),
        )
        ),
          Expanded(child:TextButton(
              onPressed: (){setState(() {

                clicked();
              });
                },
              child: Image.asset('images/dice$rightclicked.png'))


          )],
      ),
    );
  }
}





