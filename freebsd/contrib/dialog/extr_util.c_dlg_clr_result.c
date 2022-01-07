
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ input_result; scalar_t__ input_length; } ;


 TYPE_1__ dialog_vars ;
 int free (scalar_t__) ;

void
dlg_clr_result(void)
{
    if (dialog_vars.input_length) {
 dialog_vars.input_length = 0;
 if (dialog_vars.input_result)
     free(dialog_vars.input_result);
    }
    dialog_vars.input_result = 0;
}
