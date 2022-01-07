
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; } ;
typedef TYPE_1__ DIALOG_LISTITEM ;





 int dlg_add_help_listitem (int*,char**,TYPE_1__*) ;
 int dlg_add_string (char*) ;

__attribute__((used)) static int
handle_button(int code, DIALOG_LISTITEM * items, int choice)
{
    char *help_result;

    switch (code) {
    case 128:
    case 130:
 dlg_add_string(items[choice].name);
 break;
    case 129:
 dlg_add_help_listitem(&code, &help_result, &items[choice]);
 dlg_add_string(help_result);
 break;
    }
    return code;
}
