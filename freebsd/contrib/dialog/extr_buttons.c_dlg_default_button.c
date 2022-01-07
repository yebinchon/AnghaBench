
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int default_button; } ;


 int DLG_TRACE (char*) ;
 TYPE_1__ dialog_vars ;
 int dlg_ok_buttoncode (int) ;

int
dlg_default_button(void)
{
    int i, n;
    int result = 0;

    if (dialog_vars.default_button >= 0) {
 for (i = 0; (n = dlg_ok_buttoncode(i)) >= 0; i++) {
     if (n == dialog_vars.default_button) {
  result = i;
  break;
     }
 }
    }
    DLG_TRACE(("# dlg_default_button() = %d\n", result));
    return result;
}
