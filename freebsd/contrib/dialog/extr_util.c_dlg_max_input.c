
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_input; } ;


 int MAX_LEN ;
 TYPE_1__ dialog_vars ;

int
dlg_max_input(int max_len)
{
    if (dialog_vars.max_input != 0 && dialog_vars.max_input < MAX_LEN)
 max_len = dialog_vars.max_input;

    return max_len;
}
