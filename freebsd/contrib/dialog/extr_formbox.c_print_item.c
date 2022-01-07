
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int chtype ;
typedef int WINDOW ;
struct TYPE_5__ {int name_len; int text_len; scalar_t__ text_x; scalar_t__ text_y; int text; scalar_t__ name_x; scalar_t__ name_y; int name; } ;
typedef TYPE_1__ DIALOG_FORMITEM ;


 int FALSE ;
 int MIN (int,scalar_t__) ;
 int dlg_show_string (int *,int ,int ,int ,scalar_t__,scalar_t__,int,int ,int ) ;
 int form_active_text_attr ;
 int form_item_readonly_attr ;
 int form_text_attr ;
 scalar_t__ getmaxx (int *) ;
 int is_hidden (TYPE_1__*) ;
 int is_readonly (TYPE_1__*) ;
 int menubox_attr ;
 int move_past (int *,scalar_t__,scalar_t__) ;
 scalar_t__ ok_move (int *,int,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
print_item(WINDOW *win, DIALOG_FORMITEM * item, int scrollamt, bool choice)
{
    int count = 0;
    int len;

    if (ok_move(win, scrollamt, item->name_y, item->name_x)) {
 len = item->name_len;
 len = MIN(len, getmaxx(win) - item->name_x);
 if (len > 0) {
     dlg_show_string(win,
       item->name,
       0,
       menubox_attr,
       item->name_y - scrollamt,
       item->name_x,
       len,
       FALSE,
       FALSE);
     move_past(win, item->name_y - scrollamt, item->name_x + len);
     count = 1;
 }
    }
    if (item->text_len && ok_move(win, scrollamt, item->text_y, item->text_x)) {
 chtype this_item_attribute;

 len = item->text_len;
 len = MIN(len, getmaxx(win) - item->text_x);

 if (!is_readonly(item)) {
     this_item_attribute = choice
  ? form_active_text_attr
  : form_text_attr;
 } else {
     this_item_attribute = form_item_readonly_attr;
 }

 if (len > 0) {
     dlg_show_string(win,
       item->text,
       0,
       this_item_attribute,
       item->text_y - scrollamt,
       item->text_x,
       len,
       is_hidden(item),
       FALSE);
     move_past(win, item->text_y - scrollamt, item->text_x + len);
     count = 1;
 }
    }
    return count;
}
