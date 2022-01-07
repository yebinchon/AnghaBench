
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int code; struct TYPE_4__* next; } ;
typedef TYPE_1__ mseRegion ;


 TYPE_1__* regionList ;

__attribute__((used)) static mseRegion *
find_region_by_code(int code)
{
    mseRegion *butPtr;

    for (butPtr = regionList; butPtr; butPtr = butPtr->next) {
 if (code == butPtr->code)
     break;
    }
    return butPtr;
}
