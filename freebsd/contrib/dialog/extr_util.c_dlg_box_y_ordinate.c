
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int begin_set; int begin_y; } ;


 int SLINES ;
 TYPE_1__ dialog_vars ;

int
dlg_box_y_ordinate(int height)
{
    int y;

    if (dialog_vars.begin_set == 1) {
 y = dialog_vars.begin_y;
    } else {

 y = (SLINES - height) / 2;
    }
    return y;
}
