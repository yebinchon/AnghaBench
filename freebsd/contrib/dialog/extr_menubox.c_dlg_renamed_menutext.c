
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* input_result; } ;
struct TYPE_4__ {char* name; } ;
typedef TYPE_1__ DIALOG_LISTITEM ;


 int DLG_EXIT_EXTRA ;
 TYPE_3__ dialog_vars ;
 int dlg_add_result (char*) ;
 int dlg_add_string (char*) ;

int
dlg_renamed_menutext(DIALOG_LISTITEM * items, int current, char *newtext)
{
    if (dialog_vars.input_result)
 dialog_vars.input_result[0] = '\0';
    dlg_add_result("RENAMED ");
    dlg_add_string(items[current].name);
    dlg_add_result(" ");
    dlg_add_string(newtext);
    return DLG_EXIT_EXTRA;
}
