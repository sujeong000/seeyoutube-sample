//
//  WatchingInfo.swift
//  SeeYoutubeSample
//
//  Created by 최수정 on 2022/11/26.
//

import Foundation

struct WatchingInfo: CustomStringConvertible {
    var playTime: Float = 0
    var gazeInfo: VideoGazeInfo?
    
    var description: String {
        return """
        --------------------------------------
        | Play Time |
            \(String(format: "%.2d", Int(playTime/60))):\(String(format: "%.2d", Int(playTime)%60)).\(Int(round(playTime*100))%100) sec
        | Gaze Info |
            Poisition           : \(gazeInfo?.positionDescription ?? "None")
            Tracking State      : \(gazeInfo?.trackingState.description ?? "None")
            Eye Movement State  : \(gazeInfo?.eyeMovementState.description ?? "None")
            Screen State        : \(gazeInfo?.screenState.description ?? "None")
        --------------------------------------
        """
    }
    
    mutating func updateGazeInfo(with gazeInfo: VideoGazeInfo?) {
        self.gazeInfo = gazeInfo
    }
    
    mutating func updatePlayTime(with playTime: Float) {
        self.playTime = playTime
    }
}
