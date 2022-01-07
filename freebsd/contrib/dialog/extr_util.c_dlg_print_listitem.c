
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chtype ;
typedef int WINDOW ;


 int A_NORMAL ;
 int dlg_attrset (int *,int ) ;
 int* dlg_index_columns (char const*) ;
 int* dlg_index_wchars (char const*) ;
 int dlg_limit_columns (char const*,int,int) ;
 int dlg_print_text (int *,char const*,int const,int *) ;
 int item_attr ;
 int item_selected_attr ;
 scalar_t__ strlen (char const*) ;
 int tag_attr ;
 int tag_key_attr ;
 int tag_key_selected_attr ;
 int tag_selected_attr ;
 int waddnstr (int *,char const*,int const) ;

void
dlg_print_listitem(WINDOW *win,
     const char *text,
     int climit,
     bool first,
     int selected)
{
    chtype attr = A_NORMAL;
    int limit;
    const int *cols;
    chtype attrs[4];

    if (text == 0)
 text = "";

    if (first) {
 const int *indx = dlg_index_wchars(text);
 attrs[3] = tag_key_selected_attr;
 attrs[2] = tag_key_attr;
 attrs[1] = tag_selected_attr;
 attrs[0] = tag_attr;

 dlg_attrset(win, selected ? attrs[3] : attrs[2]);
 (void) waddnstr(win, text, indx[1]);

 if ((int) strlen(text) > indx[1]) {
     limit = dlg_limit_columns(text, climit, 1);
     if (limit > 1) {
  dlg_attrset(win, selected ? attrs[1] : attrs[0]);
  (void) waddnstr(win,
    text + indx[1],
    indx[limit] - indx[1]);
     }
 }
    } else {
 attrs[1] = item_selected_attr;
 attrs[0] = item_attr;

 cols = dlg_index_columns(text);
 limit = dlg_limit_columns(text, climit, 0);

 if (limit > 0) {
     dlg_attrset(win, selected ? attrs[1] : attrs[0]);
     dlg_print_text(win, text, cols[limit], &attr);
 }
    }
}
