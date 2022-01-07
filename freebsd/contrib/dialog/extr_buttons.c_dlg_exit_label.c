
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ help_button; int nook; int nocancel; scalar_t__ extra_button; } ;
typedef int DIALOG_VARS ;


 int TRUE ;
 TYPE_1__ dialog_vars ;
 char** dlg_ok_labels () ;
 int dlg_restore_vars (int *) ;
 int dlg_save_vars (int *) ;
 char* my_exit_label () ;
 char* my_help_label () ;

const char **
dlg_exit_label(void)
{
    const char **result;
    DIALOG_VARS save;

    if (dialog_vars.extra_button) {
 dlg_save_vars(&save);
 dialog_vars.nocancel = TRUE;
 result = dlg_ok_labels();
 dlg_restore_vars(&save);
    } else {
 static const char *labels[3];
 int n = 0;

 if (!dialog_vars.nook)
     labels[n++] = my_exit_label();
 if (dialog_vars.help_button)
     labels[n++] = my_help_label();
 if (n == 0)
     labels[n++] = my_exit_label();
 labels[n] = 0;

 result = labels;
    }
    return result;
}
