//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Zoltan Vegh on 20/04/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var email: String = ""
    
    var disableForm: Bool {
        username.count < 5 || email.count < 5
    }
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
            }
            
            Section {
                Button("Create Account") {
                    print("Creating account...")
                }
            }
            .disabled(disableForm)
        }
    }
}

#Preview {
    ContentView()
}
