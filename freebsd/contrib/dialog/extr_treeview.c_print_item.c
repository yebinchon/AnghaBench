
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int chtype ;
typedef int WINDOW ;
struct TYPE_8__ {scalar_t__ no_items; } ;
struct TYPE_7__ {int check_x; int use_width; int item_x; scalar_t__ is_check; int * list; } ;
struct TYPE_6__ {char* name; char* text; size_t state; int help; } ;
typedef TYPE_1__ DIALOG_LISTITEM ;
typedef TYPE_2__ ALL_DATA ;


 char ACS_VLINE ;
 int INDENT ;
 int TRUE ;
 int check_attr ;
 int check_selected_attr ;
 TYPE_5__ dialog_vars ;
 int dlg_attrset (int *,int ) ;
 int dlg_get_attrs (int *) ;
 int dlg_item_help (int ) ;
 int dlg_print_listitem (int *,char const*,int,int,int) ;
 int getmaxx (int *) ;
 int item_attr ;
 int item_selected_attr ;
 int menubox_attr ;
 int waddch (int *,char) ;
 int wmove (int *,int,int) ;
 int wprintw (int *,char*,char const) ;

__attribute__((used)) static void
print_item(ALL_DATA * data,
    DIALOG_LISTITEM * item,
    const char *states,
    int depths,
    int choice,
    int selected)
{
    WINDOW *win = data->list;
    chtype save = dlg_get_attrs(win);
    int i;
    bool first = TRUE;
    int climit = (getmaxx(win) - data->check_x + 1);
    const char *show = (dialog_vars.no_items
   ? item->name
   : item->text);


    dlg_attrset(win, menubox_attr);
    (void) wmove(win, choice, 0);
    for (i = 0; i < data->use_width; i++)
 (void) waddch(win, ' ');

    (void) wmove(win, choice, data->check_x);
    dlg_attrset(win, selected ? check_selected_attr : check_attr);
    (void) wprintw(win,
     data->is_check ? "[%c]" : "(%c)",
     states[item->state]);
    dlg_attrset(win, menubox_attr);

    dlg_attrset(win, selected ? item_selected_attr : item_attr);
    for (i = 0; i < depths; ++i) {
 int j;
 (void) wmove(win, choice, data->item_x + INDENT * i);
 (void) waddch(win, ACS_VLINE);
 for (j = INDENT - 1; j > 0; --j)
     (void) waddch(win, ' ');
    }
    (void) wmove(win, choice, data->item_x + INDENT * depths);

    dlg_print_listitem(win, show, climit, first, selected);

    if (selected) {
 dlg_item_help(item->help);
    }
    dlg_attrset(win, save);
}
