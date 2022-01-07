
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ help_button; int nocancel; scalar_t__ extra_button; int nook; } ;


 int DLG_EXIT_CANCEL ;
 int DLG_EXIT_ERROR ;
 int DLG_EXIT_EXTRA ;
 int DLG_EXIT_HELP ;
 int DLG_EXIT_OK ;
 int DLG_TRACE (char*) ;
 TYPE_1__ dialog_vars ;

int
dlg_ok_buttoncode(int button)
{
    int result = DLG_EXIT_ERROR;
    int n = !dialog_vars.nook;

    if (!dialog_vars.nook && (button <= 0)) {
 result = DLG_EXIT_OK;
    } else if (dialog_vars.extra_button && (button == n++)) {
 result = DLG_EXIT_EXTRA;
    } else if (!dialog_vars.nocancel && (button == n++)) {
 result = DLG_EXIT_CANCEL;
    } else if (dialog_vars.help_button && (button == n)) {
 result = DLG_EXIT_HELP;
    }
    DLG_TRACE(("# dlg_ok_buttoncode(%d) = %d\n", button, result));
    return result;
}
