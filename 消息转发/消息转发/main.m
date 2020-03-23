//
//  main.m
//  消息转发
//
//  Created by Alan on 3/23/20.
//  Copyright © 2020 zhaixingzhi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XZPerson.h"
#import "XZTeacher.h"
#import "NSObject+XZ.h"
#import <objc/runtime.h>

extern void instrumentObjcMessageSends(BOOL flag);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        XZTeacher *teacher = [XZTeacher alloc];
//        方法调用日志打开
//        instrumentObjcMessageSends(true);
        [teacher saySomthing];
        [XZTeacher sayLove];
//        instrumentObjcMessageSends(false);
    }
    return 0;
}
