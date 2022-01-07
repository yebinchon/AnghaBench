
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ help_button; scalar_t__ extra_button; } ;


 TYPE_1__ dialog_vars ;
 char* my_extra_label () ;
 char* my_help_label () ;
 char* my_ok_label () ;

const char **
dlg_ok_label(void)
{
    static const char *labels[4];
    int n = 0;

    labels[n++] = my_ok_label();
    if (dialog_vars.extra_button)
 labels[n++] = my_extra_label();
    if (dialog_vars.help_button)
 labels[n++] = my_help_label();
    labels[n] = 0;
    return labels;
}
