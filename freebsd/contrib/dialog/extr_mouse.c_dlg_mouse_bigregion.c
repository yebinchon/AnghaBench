
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mseRegion ;


 int FALSE ;
 int * any_mouse_region (int,int,int ) ;

mseRegion *
dlg_mouse_bigregion(int y, int x)
{
    return any_mouse_region(y, x, FALSE);
}
