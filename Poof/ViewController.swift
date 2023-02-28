//
//  ViewController.swift
//  Poof
//
//  Created by usagimaru on 2023/03/01.
//

import Cocoa

class ViewController: NSViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override func mouseDown(with event: NSEvent) {
		super.mouseDown(with: event)
		
		guard let window = self.view.window
		else { return }
		
		let center = window.convertPoint(toScreen: event.locationInWindow)
		let size = NSSize(width: 128, height: 128)
		
		let effect = NSAnimationEffect.poof
		//let effect = NSAnimationEffect.disappearingItemDefault // Same result
		effect.show(centeredAt: center, size: size)
	}


}

