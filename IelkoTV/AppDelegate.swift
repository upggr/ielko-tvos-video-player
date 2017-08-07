//
//  AppDelegate.swift
//  IelkoTV
//
//  Created by Ioannis Kokkinis on 14/11/2015.
//  Copyright © 2015 ielko.com. All rights reserved.
//
import UIKit
import TVMLKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, TVApplicationControllerDelegate {
    var window: UIWindow?
    var appController: TVApplicationController?
    static let TVBaseURL = "-BSURL-"
    static let TVBootURL = "\(AppDelegate.TVBaseURL)js/application.js"

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let appControllerContext = TVApplicationControllerContext()
        guard let javaScriptURL = URL(string: AppDelegate.TVBootURL) else {
            fatalError("unable to create NSURL")
        }
        appControllerContext.javaScriptApplicationURL = javaScriptURL
        appControllerContext.launchOptions["BASEURL"] = AppDelegate.TVBaseURL
        appController = TVApplicationController(context: appControllerContext, window: window, delegate: self)
        return true
    }

}


