
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;
typedef int DLG_KEYS_BINDING ;



 int DLG_EXIT_CANCEL ;
 int DLG_EXIT_ESC ;
 int DLG_EXIT_OK ;
 int DLG_EXIT_UNKNOWN ;


 int ERR ;
 int ESC ;
 int FALSE ;



 int MARGIN ;
 int MAX (int,int) ;
 int MIN (int,int) ;
 int TRUE ;
 char* _ (char*) ;
 int dlg_attrset (int *,int ) ;
 int dlg_count_columns (char const*) ;
 int dlg_del_window (int *) ;
 int dlg_draw_box2 (int *,int ,int ,int,int,int ,int ,int ) ;
 scalar_t__ dlg_edit_string (char*,int*,int,int,int) ;
 int dlg_getc (int *,int*) ;
 int* dlg_index_wchars (char const*) ;
 int dlg_limit_columns (char const*,int,int ) ;
 int * dlg_new_modal_window (int *,int,int,int,int) ;
 int dlg_register_window (int *,char*,int *) ;
 int dlg_show_string (int *,char*,int,int ,int,int,int,int,int) ;
 int getbegyx (int *,int,int) ;
 int getmaxx (int *) ;
 int keypad (int *,int) ;
 int napms (int) ;
 int searchbox_attr ;
 int searchbox_border2_attr ;
 int searchbox_border_attr ;
 int searchbox_title_attr ;
 int waddnstr (int *,char const*,int const) ;
 int wmove (int *,int ,int) ;

__attribute__((used)) static int
get_search_term(WINDOW *dialog, char *input, int height, int width)
{

    static DLG_KEYS_BINDING binding[] = {
 129,
 130,
 131,
 132
    };


    int old_x, old_y;
    int box_x, box_y;
    int box_height, box_width;
    int offset = 0;
    int key = 0;
    int fkey = 0;
    bool first = TRUE;
    int result = DLG_EXIT_UNKNOWN;
    const char *caption = _("Search");
    int len_caption = dlg_count_columns(caption);
    const int *indx;
    int limit;
    WINDOW *widget;

    getbegyx(dialog, old_y, old_x);

    box_height = 1 + (2 * MARGIN);
    box_width = len_caption + (2 * (MARGIN + 2));
    box_width = MAX(box_width, 30);
    box_width = MIN(box_width, getmaxx(dialog) - 2 * MARGIN);
    len_caption = MIN(len_caption, box_width - (2 * (MARGIN + 1)));

    box_x = (width - box_width) / 2;
    box_y = (height - box_height) / 2;
    widget = dlg_new_modal_window(dialog,
      box_height, box_width,
      old_y + box_y, old_x + box_x);
    keypad(widget, TRUE);
    dlg_register_window(widget, "searchbox", binding);

    dlg_draw_box2(widget, 0, 0, box_height, box_width,
    searchbox_attr,
    searchbox_border_attr,
    searchbox_border2_attr);
    dlg_attrset(widget, searchbox_title_attr);
    (void) wmove(widget, 0, (box_width - len_caption) / 2);

    indx = dlg_index_wchars(caption);
    limit = dlg_limit_columns(caption, len_caption, 0);
    (void) waddnstr(widget, caption + indx[0], indx[limit] - indx[0]);

    box_width -= 2;
    offset = dlg_count_columns(input);

    while (result == DLG_EXIT_UNKNOWN) {
 if (!first) {
     key = dlg_getc(widget, &fkey);
     if (fkey) {
  switch (fkey) {

  case 128:
      result = DLG_EXIT_CANCEL;
      continue;

  case 133:
      result = DLG_EXIT_OK;
      continue;
  }
     } else if (key == ESC) {
  result = DLG_EXIT_ESC;
  continue;
     } else if (key == ERR) {
  napms(50);
  continue;
     }
 }
 if (dlg_edit_string(input, &offset, key, fkey, first)) {
     dlg_show_string(widget, input, offset, searchbox_attr,
       1, 1, box_width, FALSE, first);
     first = FALSE;
 }
    }
    dlg_del_window(widget);
    return result;
}
