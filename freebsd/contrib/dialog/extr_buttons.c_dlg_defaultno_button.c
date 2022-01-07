
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nocancel; scalar_t__ defaultno; } ;


 scalar_t__ DLG_EXIT_CANCEL ;
 int DLG_TRACE (char*) ;
 TYPE_1__ dialog_vars ;
 scalar_t__ dlg_ok_buttoncode (int) ;

int
dlg_defaultno_button(void)
{
    int result = 0;

    if (dialog_vars.defaultno && !dialog_vars.nocancel) {
 while (dlg_ok_buttoncode(result) != DLG_EXIT_CANCEL)
     ++result;
    }
    DLG_TRACE(("# dlg_defaultno_button() = %d\n", result));
    return result;
}
