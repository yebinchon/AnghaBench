
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ help_button; scalar_t__ extra_button; } ;


 int DLG_EXIT_CANCEL ;
 int DLG_EXIT_ERROR ;
 int DLG_EXIT_HELP ;
 int DLG_EXIT_OK ;
 TYPE_1__ dialog_vars ;
 int dlg_ok_buttoncode (int) ;

int
dlg_yes_buttoncode(int button)
{
    int result = DLG_EXIT_ERROR;

    if (dialog_vars.extra_button) {
 result = dlg_ok_buttoncode(button);
    } else if (button == 0) {
 result = DLG_EXIT_OK;
    } else if (button == 1) {
 result = DLG_EXIT_CANCEL;
    } else if (button == 2 && dialog_vars.help_button) {
 result = DLG_EXIT_HELP;
    }

    return result;
}
