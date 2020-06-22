//
//  ContentView.swift
//  ios-app-animation-01
//
//  Created by yuhei yamauchi on 2020/06/22.
//  Copyright © 2020 x0y14. All rights reserved.
//

import SwiftUI

struct GoogleCircle {
    
    let googleBlue = Color(red: 23 / 255, green: 107 / 255, blue: 239 / 255)
    let googleRed = Color(red: 255 / 255, green: 62 / 255, blue: 48 / 255)
    let googleYellow = Color(red: 247 / 255, green: 181 / 255, blue: 41 / 255)
    let googleGreen = Color(red: 23 / 255, green: 156 / 255, blue: 82 / 255)
    
    let circleSize: CGFloat = CGFloat(30)
    

}


struct ContentView: View {
//    @State private var animationAmount: CGFloat = 1
//    init() {let myBoundSize: CGSize = UIScreen.main.bounds.size
//        print("Bounds width: \(myBoundSize.width) height: \(myBoundSize.height)")
//    }
    
//    var cgrect:CGRect = CGRect(x:0, y:0, width:100, height:100)
    @State private var positionY: CGFloat = 10
    
    @State private var circleSize: CGFloat = CGFloat(20)
    
    let googleBlue = Color(red: 64 / 255, green: 135 / 255, blue: 244 / 255)
    let googleRed = Color(red: 235 / 255, green: 65 / 255, blue: 49 / 255)
    let googleYellow = Color(red: 251 / 255, green: 190 / 255, blue: 0 / 255)
    let googleGreen = Color(red: 48 / 255, green: 170 / 255, blue: 82 / 255)
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Group{
                    Circle()
                        .fill(googleBlue)
                        .frame(width:circleSize, height: circleSize)
                        .offset(x: 0, y: positionY)
                        .animation(
                            Animation.easeInOut(duration: 13)
                                .repeatForever(autoreverses: true)
                                .delay(0)
                                .speed(10))
                        .onAppear {
                            self.positionY -= 40
                            }
                    Circle()
                        .fill(googleRed)
                        .frame(width:circleSize, height: circleSize)
                        .offset(x: 0, y: positionY)
                        .animation(
                            Animation.easeInOut(duration: 13)
                                .repeatForever(autoreverses: true)
                                .delay(1)
                                .speed(10)
                    )

                    Circle()
                        .fill(googleYellow)
                        .frame(width:circleSize, height: circleSize)
                        .offset(x: 0, y: positionY)
                        .animation(
                            Animation.easeInOut(duration: 13)
                                .repeatForever(autoreverses: true)
                                .delay(2)
                                .speed(10))
                    Circle()
                        .fill(googleBlue)
                        .frame(width:circleSize, height: circleSize)
                        .offset(x: 0, y: positionY)
                        .animation(
                            Animation.easeInOut(duration: 13)
                                .repeatForever(autoreverses: true)
                                .delay(3)
                                .speed(10))
                    Circle()
                        .fill(googleGreen)
                        .frame(width:circleSize, height: circleSize)
                        .offset(x: 0, y: positionY)
                        .animation(
                            Animation.easeInOut(duration: 13)
                                .repeatForever(autoreverses: true)
                                .delay(4)
                                .speed(10))
                    Circle()
                        .fill(googleRed)
                        .frame(width:circleSize, height: circleSize)
                        .offset(x: 0, y: positionY)
                        .animation(
                            Animation.easeInOut(duration: 13)
                                .repeatForever(autoreverses: true)
                                .delay(5)
                                .speed(10))
                }
                .padding(5)
            }
        }
//        ZStack {
//            Text("Hello")
//            Circle()
//                .size(width: 50, height: 50)
//                .padding(40)
//                .foregroundColor(Color.blue)
//                .scaleEffect(animationAmount)
//                .offset(x: 0, y: positionY)
//                .animation(
//    //                Animation.easeInOut(duration: 2)
//    //                .delay(1)
//                    Animation.easeInOut(duration: 3)
//                        .repeatForever(autoreverses: true)
//                        .speed(30)
//                )
//                .onAppear {
////                    self.animationAmount += 1
//                    self.positionY += 50
//                    self.0 += 50
//                }
//        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
