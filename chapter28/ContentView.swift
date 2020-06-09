//
//  ContentView.swift
//  chapter28
//
//  Created by HEE TAE YANG on 2020/06/08.
//  Copyright © 2020 yht. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var foregroundColor = Color.black
    @State private var backgroundColor = Color.white
    
    var body: some View {
        
        Text("Hello, World!")
            .font(.largeTitle)
            .padding()
            .foregroundColor(foregroundColor)
            .background(backgroundColor)
            .contextMenu {
                Button(action: {
                    self.foregroundColor = .black
                    self.backgroundColor = .white
                }) {
                    Text("Normal Colors")
                    Image(systemName: "paintbrush")
                }
                Button(action: {
                    self.foregroundColor = .white
                    self.backgroundColor = .black
                }) {
                    Text("Inverted Colors")
                    Image(systemName: "paintbrush.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
