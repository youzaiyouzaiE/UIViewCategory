//
//  UIView+IndexPath.m
//  AFNetworking
//
//  Created by jiahui on 2018/1/3.
//

#import "UIView+IndexPath.h"
#import <objc/runtime.h>

static const NSString *indexPath_K = @"indexPath_K";


@implementation UIView (IndexPath)

- (void)setIndexPath:(NSIndexPath *)indexPath {
    objc_setAssociatedObject(self,&indexPath_K, indexPath, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSIndexPath *)indexPath {
    NSIndexPath * indexPath = objc_getAssociatedObject(self,&indexPath_K);
    return indexPath;
}


@end
