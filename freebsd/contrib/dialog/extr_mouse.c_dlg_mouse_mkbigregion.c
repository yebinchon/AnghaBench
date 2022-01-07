
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; void* step_y; void* step_x; } ;
typedef TYPE_1__ mseRegion ;


 int DLGK_MOUSE (int) ;
 void* MAX (int,int) ;
 TYPE_1__* dlg_mouse_mkregion (int,int,int,int,int ) ;

void
dlg_mouse_mkbigregion(int y, int x,
        int height, int width,
        int code,
        int step_y, int step_x,
        int mode)
{
    mseRegion *butPtr = dlg_mouse_mkregion(y, x, height, width, -DLGK_MOUSE(code));
    butPtr->mode = mode;
    butPtr->step_x = MAX(1, step_x);
    butPtr->step_y = MAX(1, step_y);
}
