
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
struct TYPE_7__ {int item_x; int tag_x; int menu_width; } ;
struct TYPE_6__ {char* name; char* text; int help; } ;
typedef int const Mode ;
typedef TYPE_1__ DIALOG_LISTITEM ;
typedef TYPE_2__ ALL_DATA ;



 int FALSE ;
 int GUTTER ;
 int INPUT_ROWS ;
 int ItemToRow (int) ;

 int TRUE ;

 int dialog_attr ;
 TYPE_5__ dialog_vars ;
 int dlg_attrset (int *,int ) ;
 int dlg_draw_box (int *,int,int,int,int,int ,int ) ;
 int dlg_get_attrs (int *) ;
 int dlg_item_help (int ) ;
 int dlg_print_listitem (int *,char const*,int,int,int const) ;
 int item_attr ;
 int item_selected_attr ;
 int menubox_attr ;
 int wmove (int *,int,int) ;
 int wprintw (int *,char*,int,char*) ;

__attribute__((used)) static void
print_item(ALL_DATA * data,
    WINDOW *win,
    DIALOG_LISTITEM * item,
    int choice,
    Mode selected,
    bool is_inputmenu)
{
    chtype save = dlg_get_attrs(win);
    int n;
    int climit = (data->item_x - data->tag_x - GUTTER);
    int my_width = data->menu_width;
    int my_x = data->item_x;
    int my_y = ItemToRow(choice);
    bool both = (!dialog_vars.no_tags && !dialog_vars.no_items);
    bool first = TRUE;
    chtype bordchar;
    const char *show = (dialog_vars.no_items
   ? item->name
   : item->text);

    switch (selected) {
    default:
    case 128:
 bordchar = item_attr;
 break;
    case 129:
 bordchar = item_selected_attr;
 break;
    case 130:
 bordchar = dialog_attr;
 break;
    }


    if (is_inputmenu) {
 dlg_attrset(win, (selected != 128) ? item_selected_attr : item_attr);
 for (n = my_y - 1; n < my_y + INPUT_ROWS - 1; n++) {
     wmove(win, n, 0);
     wprintw(win, "%*s", my_width, " ");
 }
    } else {
 dlg_attrset(win, menubox_attr);
 wmove(win, my_y, 0);
 wprintw(win, "%*s", my_width, " ");
    }


    if (both) {
 (void) wmove(win, my_y, data->tag_x);
 dlg_print_listitem(win, item->name, climit, first, selected);
 first = FALSE;
    }


    (void) wmove(win, my_y, my_x);
    if (is_inputmenu) {
 my_width -= 1;
 dlg_draw_box(win, my_y - 1, my_x, INPUT_ROWS, my_width - my_x - data->tag_x,
       bordchar,
       bordchar);
 my_width -= 1;
 ++my_x;
    }


    wmove(win, my_y, my_x);
    dlg_print_listitem(win, show, my_width - my_x, first, selected);

    if (selected) {
 dlg_item_help(item->help);
    }
    dlg_attrset(win, save);
}
