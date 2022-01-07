
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int begin_set; int begin_x; } ;


 int SCOLS ;
 TYPE_1__ dialog_vars ;

int
dlg_box_x_ordinate(int width)
{
    int x;

    if (dialog_vars.begin_set == 1) {
 x = dialog_vars.begin_x;
    } else {

 x = (SCOLS - width) / 2;
    }
    return x;
}
