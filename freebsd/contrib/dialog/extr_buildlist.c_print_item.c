
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int chtype ;
typedef int WINDOW ;
struct TYPE_8__ {scalar_t__ no_items; int no_tags; } ;
struct TYPE_7__ {int item_x; int check_x; } ;
struct TYPE_6__ {char* name; char* text; int help; } ;
typedef TYPE_1__ DIALOG_LISTITEM ;
typedef TYPE_2__ ALL_DATA ;


 int FALSE ;
 int TRUE ;
 TYPE_5__ dialog_vars ;
 int dlg_attrset (int *,int ) ;
 int dlg_get_attrs (int *) ;
 int dlg_item_help (int ) ;
 int dlg_print_listitem (int *,char const*,int,int,int) ;
 int getmaxx (int *) ;
 int menubox_attr ;
 int waddch (int *,char) ;
 int wmove (int *,int,int) ;

__attribute__((used)) static void
print_item(ALL_DATA * all,
    WINDOW *win,
    DIALOG_LISTITEM * item,
    int row,
    int selected)
{
    chtype save = dlg_get_attrs(win);
    int i;
    bool both = (!dialog_vars.no_tags && !dialog_vars.no_items);
    bool first = TRUE;
    int climit = (all->item_x - all->check_x - 1);
    const char *show = (dialog_vars.no_items
   ? item->name
   : item->text);


    dlg_attrset(win, menubox_attr);
    (void) wmove(win, row, 0);
    for (i = 0; i < getmaxx(win); i++)
 (void) waddch(win, ' ');

    (void) wmove(win, row, all->check_x);
    dlg_attrset(win, menubox_attr);

    if (both) {
 dlg_print_listitem(win, item->name, climit, first, selected);
 (void) waddch(win, ' ');
 first = FALSE;
    }

    (void) wmove(win, row, all->item_x);
    climit = (getmaxx(win) - all->item_x + 1);
    dlg_print_listitem(win, show, climit, first, selected);

    if (selected) {
 dlg_item_help(item->help);
    }
    dlg_attrset(win, save);
}
