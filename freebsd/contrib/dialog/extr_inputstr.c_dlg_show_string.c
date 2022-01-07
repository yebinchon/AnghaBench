
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char chtype ;
typedef int WINDOW ;
struct TYPE_2__ {scalar_t__ insecure; } ;


 int MIN (int,int ) ;
 char TAB ;
 char UCH (char const) ;
 int compute_edit_offset (char const*,int,int,int*,int*) ;
 TYPE_1__ dialog_vars ;
 int dlg_attrset (int *,char) ;
 int dlg_count_wchars (char const*) ;
 int* dlg_index_columns (char const*) ;
 int* dlg_index_wchars (char const*) ;
 int getmaxx (int *) ;
 int waddch (int *,char) ;
 int wmove (int *,int,int) ;
 int wrefresh (int *) ;

void
dlg_show_string(WINDOW *win,
  const char *string,
  int chr_offset,
  chtype attr,
  int y_base,
  int x_base,
  int x_last,
  bool hidden,
  bool force)
{
    x_last = MIN(x_last + x_base, getmaxx(win)) - x_base;

    if (hidden && !dialog_vars.insecure) {
 if (force) {
     (void) wmove(win, y_base, x_base);
     wrefresh(win);
 }
    } else {
 const int *cols = dlg_index_columns(string);
 const int *indx = dlg_index_wchars(string);
 int limit = dlg_count_wchars(string);

 int i, j, k;
 int input_x;
 int scrollamt;

 compute_edit_offset(string, chr_offset, x_last, &input_x, &scrollamt);

 dlg_attrset(win, attr);
 (void) wmove(win, y_base, x_base);
 for (i = scrollamt, k = 0; i < limit && k < x_last; ++i) {
     int check = cols[i + 1] - cols[scrollamt];
     if (check <= x_last) {
  for (j = indx[i]; j < indx[i + 1]; ++j) {
      chtype ch = UCH(string[j]);
      if (hidden && dialog_vars.insecure) {
   waddch(win, '*');
      } else if (ch == TAB) {
   int count = cols[i + 1] - cols[i];
   while (--count >= 0)
       waddch(win, ' ');
      } else {
   waddch(win, ch);
      }
  }
  k = check;
     } else {
  break;
     }
 }
 while (k++ < x_last)
     waddch(win, ' ');
 (void) wmove(win, y_base, x_base + input_x);
 wrefresh(win);
    }
}
