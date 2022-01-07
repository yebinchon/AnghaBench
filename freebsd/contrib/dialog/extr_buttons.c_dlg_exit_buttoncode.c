
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nocancel; } ;
typedef int DIALOG_VARS ;


 int TRUE ;
 TYPE_1__ dialog_vars ;
 int dlg_ok_buttoncode (int) ;
 int dlg_restore_vars (int *) ;
 int dlg_save_vars (int *) ;

int
dlg_exit_buttoncode(int button)
{
    int result;
    DIALOG_VARS save;

    dlg_save_vars(&save);
    dialog_vars.nocancel = TRUE;

    result = dlg_ok_buttoncode(button);

    dlg_restore_vars(&save);

    return result;
}
