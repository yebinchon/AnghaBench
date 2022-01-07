
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int begin_y; scalar_t__ begin_set; } ;


 int SLINES ;
 TYPE_1__ dialog_vars ;

void
dlg_calc_listh(int *height, int *list_height, int item_no)
{

    int rows = SLINES - (dialog_vars.begin_set ? dialog_vars.begin_y : 0);
    if (rows - (*height) > 0) {
 if (rows - (*height) > item_no)
     *list_height = item_no;
 else
     *list_height = rows - (*height);
    }
    (*height) += (*list_height);
}
