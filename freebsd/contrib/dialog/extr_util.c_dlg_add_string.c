
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ quoted; } ;


 TYPE_1__ dialog_vars ;
 int dlg_add_quoted (char*) ;
 int dlg_add_result (char*) ;

void
dlg_add_string(char *string)
{
    if (dialog_vars.quoted) {
 dlg_add_quoted(string);
    } else {
 dlg_add_result(string);
    }
}
