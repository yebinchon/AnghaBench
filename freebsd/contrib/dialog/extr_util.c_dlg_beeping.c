
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ beep_signal; } ;


 int beep () ;
 TYPE_1__ dialog_vars ;

void
dlg_beeping(void)
{
    if (dialog_vars.beep_signal) {
 (void) beep();
 dialog_vars.beep_signal = 0;
    }
}
