
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ no_tags; } ;
struct TYPE_4__ {scalar_t__ state; int name; int text; } ;
typedef TYPE_1__ DIALOG_LISTITEM ;


 int FALSE ;
 int TRUE ;
 TYPE_2__ dialog_vars ;
 int dlg_last_getc () ;
 scalar_t__ dlg_match_char (int ,int ) ;

__attribute__((used)) static bool
check_hotkey(DIALOG_LISTITEM * items, int choice, int selected)
{
    bool result = FALSE;

    if ((items[choice].state != 0) == selected) {
 if (dlg_match_char(dlg_last_getc(),
      (dialog_vars.no_tags
       ? items[choice].text
       : items[choice].name))) {
     result = TRUE;
 }
    }
    return result;
}
