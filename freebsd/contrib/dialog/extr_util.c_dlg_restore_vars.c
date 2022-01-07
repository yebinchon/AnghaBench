
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* input_result; unsigned int input_length; } ;
typedef TYPE_1__ DIALOG_VARS ;


 TYPE_1__ dialog_vars ;

void
dlg_restore_vars(DIALOG_VARS * vars)
{
    char *save_result = dialog_vars.input_result;
    unsigned save_length = dialog_vars.input_length;

    dialog_vars = *vars;
    dialog_vars.input_result = save_result;
    dialog_vars.input_length = save_length;
}
