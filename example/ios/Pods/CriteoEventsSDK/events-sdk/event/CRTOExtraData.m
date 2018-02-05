//
//  CRTOExtraData.m
//  events-sdk
//
//  Copyright (c) 2017 Criteo
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import "CRTOExtraData.h"

@implementation CRTOExtraData

#pragma mark - Initializers

- (instancetype) init
{
    self = [super init];
    if (self) {
        _key   = @"";
        _value = @"";
        _type  = CRTOExtraDataTypeText;
    }
    return self;
}

- (instancetype) initWithKey:(NSString*)key value:(id)value type:(CRTOExtraDataType)type
{
    self = [self init];

    _key   = [NSString stringWithString:key];
    _value = value;
    _type  = type;

    return self;
}

#pragma mark - Static Methods

+ (instancetype) extraDataWithKey:(NSString*)key value:(id)value type:(CRTOExtraDataType)type
{
    return [[CRTOExtraData alloc] initWithKey:key value:value type:type];
}

@end
