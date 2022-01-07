
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ help_tags; } ;
struct TYPE_4__ {char* help; char* name; } ;
typedef TYPE_1__ DIALOG_FORMITEM ;


 int DLG_EXIT_ITEM_HELP ;
 int HELP_PREFIX ;
 scalar_t__ USE_ITEM_HELP (char*) ;
 TYPE_3__ dialog_vars ;
 int dlg_add_result (int ) ;

void
dlg_add_help_formitem(int *result, char **tag, DIALOG_FORMITEM * item)
{
    dlg_add_result(HELP_PREFIX);
    if (USE_ITEM_HELP(item->help)) {
 *tag = dialog_vars.help_tags ? item->name : item->help;
 *result = DLG_EXIT_ITEM_HELP;
    } else {
 *tag = item->name;
    }
}
