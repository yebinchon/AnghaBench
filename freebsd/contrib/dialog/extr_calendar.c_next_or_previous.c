
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_DAYS ;
 int beep () ;

__attribute__((used)) static int
next_or_previous(int key, int two_d)
{
    int result = 0;

    switch (key) {
    case 128:
 result = two_d ? -MAX_DAYS : -1;
 break;
    case 130:
 result = -1;
 break;
    case 131:
 result = two_d ? MAX_DAYS : 1;
 break;
    case 129:
 result = 1;
 break;
    default:
 beep();
 break;
    }
    return result;
}
