
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ code; int y; int Y; int x; int X; struct TYPE_4__* next; } ;
typedef TYPE_1__ mseRegion ;


 TYPE_1__* regionList ;

__attribute__((used)) static mseRegion *
any_mouse_region(int y, int x, int small)
{
    mseRegion *butPtr;

    for (butPtr = regionList; butPtr; butPtr = butPtr->next) {
 if (small ^ (butPtr->code >= 0)) {
     continue;
 }
 if (y < butPtr->y || y >= butPtr->Y) {
     continue;
 }
 if (x < butPtr->x || x >= butPtr->X) {
     continue;
 }
 break;
    }
    return butPtr;
}
