
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIALOG_VARS ;


 int dialog_vars ;

void
dlg_save_vars(DIALOG_VARS * vars)
{
    *vars = dialog_vars;
}
