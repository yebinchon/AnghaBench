
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ mseRegion ;


 int free (TYPE_1__*) ;
 TYPE_1__* regionList ;

void
dlg_mouse_free_regions(void)
{
    while (regionList != 0) {
 mseRegion *butPtr = regionList->next;
 free(regionList);
 regionList = butPtr;
    }
}
