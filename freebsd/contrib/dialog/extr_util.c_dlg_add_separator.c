
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* output_separator; scalar_t__ separate_output; } ;


 TYPE_1__ dialog_vars ;
 int dlg_add_result (char const*) ;

void
dlg_add_separator(void)
{
    const char *separator = (dialog_vars.separate_output) ? "\n" : " ";

    if (dialog_vars.output_separator)
 separator = dialog_vars.output_separator;

    dlg_add_result(separator);
}
