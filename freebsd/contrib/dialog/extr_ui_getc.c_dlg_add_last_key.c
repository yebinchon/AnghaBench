
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ last_key; } ;


 TYPE_1__ dialog_vars ;
 int dlg_add_separator () ;
 int dlg_add_string (char*) ;
 scalar_t__ dlg_need_separator () ;
 int last_getc ;
 int sprintf (char*,char*,int) ;

void
dlg_add_last_key(int mode)
{
    if (dialog_vars.last_key) {
 if (mode >= 0) {
     if (mode > 0) {
  dlg_add_last_key(-1);
     } else {
  if (dlg_need_separator())
      dlg_add_separator();
  dlg_add_last_key(-2);
     }
 } else {
     char temp[80];
     sprintf(temp, "%d", last_getc);
     dlg_add_string(temp);
     if (mode == -1)
  dlg_add_separator();
 }
    }
}
