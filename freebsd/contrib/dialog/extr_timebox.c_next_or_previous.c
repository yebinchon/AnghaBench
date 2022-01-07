
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int beep () ;

__attribute__((used)) static int
next_or_previous(int key)
{
    int result = 0;

    switch (key) {
    case 128:
 result = -1;
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
