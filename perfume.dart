import 'package:flutter/material.dart';

class PerfumeWid extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    List<Map>perfumeList=[
      {
        "image":'assets/images/perfume1.jpg',
        "name":"The One For Man",
        'price':"AED 510.00",
        'price2':'AED 339.00',


    },
     {
        "image":'assets/images/perfume2.webp',
        "name":"Acqua Di Gio Profondo",
        'price':"AED 465.00",
        'price2':'AED 399.00',


    },
      {
        "image":'assets/images/perfume3.webp',
        "name":"Sauvage",
        'price':"AED 590.00",
        'price2':'AED 450.00',


    },
     {
        "image":"assets/images/perfume4.webp",
        "name":"Grain de Poudre",
        'price':"AED 995.00",
        'price2':'AED 585.00',


    },
    
    
    ];

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("ZAHAAR"),
        centerTitle:true,
        actions: [
          Image.asset('assets/images/chat-balloon.png',height: 30,),
          SizedBox(width: 10,),
          Image.asset('assets/images/shopping-bag.png',height: 30,),
        ],
      ),
      body: Padding(padding: const EdgeInsets.all(5),
      child:GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        childAspectRatio: .7),
        itemCount: 4,
        itemBuilder: (context,index){
          return Container(color: Colors.white,
            
            child:Column(
              children: [
                Container(
                  decoration: BoxDecoration(image:DecorationImage(image: AssetImage(perfumeList[index]["image"]))),
                  height: 150,
                  width: double.infinity,),
                  SizedBox(height: 10,),
                  Text(perfumeList[index]['name']),
                  SizedBox(height: 10,),
                  Text(perfumeList[index]['price'],style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 11,),),
                  SizedBox(height: 10,),
                  Text(perfumeList[index]["price2"],style: TextStyle(color:Colors.red),),


              ],
                ),
        
            );
   } ),
        
          ),
        
         
      );
  }
    

  }

