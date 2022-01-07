
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int chtype ;
typedef int WINDOW ;
struct TYPE_2__ {scalar_t__ use_scrollbar; } ;


 int ACS_BLOCK ;
 int ACS_HLINE ;
 int ACS_VLINE ;
 scalar_t__ ARROWS_COL ;
 int A_REVERSE ;
 int BARSIZE (long) ;
 long MAX (int ,long) ;
 int MIN (int,int) ;
 int ORDSIZE (long) ;
 int TRUE ;
 int WACS_BLOCK ;
 int border_attr ;
 TYPE_1__ dialog_state ;
 int dlg_attron (int *,int) ;
 int dlg_attrset (int *,int ) ;
 int dlg_boxchar (int ) ;
 int dlg_count_columns (char*) ;
 int dlg_draw_arrows2 (int *,int,int,scalar_t__,int,int,int ,int ) ;
 int dlg_draw_helpline (int *,int ) ;
 int dlg_get_attrs (int *) ;
 int getyx (int *,int,int) ;
 int position_indicator_attr ;
 int sprintf (char*,char*,int) ;
 int waddstr (int *,char*) ;
 int whline (int *,int ,int) ;
 int wmove (int *,int,int) ;
 int wvline (int *,int,int) ;
 int wvline_set (int *,int ,int) ;

void
dlg_draw_scrollbar(WINDOW *win,
     long first_data,
     long this_data,
     long next_data,
     long total_data,
     int left,
     int right,
     int top,
     int bottom,
     chtype attr,
     chtype borderattr)
{
    char buffer[80];
    int percent;
    int len;
    int oldy, oldx;

    chtype save = dlg_get_attrs(win);
    int top_arrow = (first_data != 0);
    int bottom_arrow = (next_data < total_data);

    getyx(win, oldy, oldx);

    dlg_draw_helpline(win, TRUE);
    if (bottom_arrow || top_arrow || dialog_state.use_scrollbar) {
 percent = (!total_data
     ? 100
     : (int) ((next_data * 100)
       / total_data));

 if (percent < 0)
     percent = 0;
 else if (percent > 100)
     percent = 100;

 dlg_attrset(win, position_indicator_attr);
 (void) sprintf(buffer, "%d%%", percent);
 (void) wmove(win, bottom, right - 7);
 (void) waddstr(win, buffer);
 if ((len = dlg_count_columns(buffer)) < 4) {
     dlg_attrset(win, border_attr);
     whline(win, dlg_boxchar(ACS_HLINE), 4 - len);
 }
    }



    if (dialog_state.use_scrollbar) {
 int all_high = (bottom - top - 1);

 this_data = MAX(0, this_data);

 if (total_data > 0 && all_high > 0) {
     int all_diff = (int) (total_data + 1);
     int bar_diff = (int) (next_data + 1 - this_data);
     int bar_high;
     int bar_y;

     bar_high = (int) ((double) ((all_high * (int) (bar_diff)) / (double) all_diff));
     if (bar_high <= 0)
  bar_high = 1;

     if (bar_high < all_high) {
  int bar_last = (int) (0.5 + (double) ((all_high * (int) (next_data)) / (double) total_data));

  wmove(win, top + 1, right);

  dlg_attrset(win, save);
  wvline(win, ACS_VLINE | A_REVERSE, all_high);

  bar_y = (int) ((double) ((all_high * (int) (this_data)) / (double) all_diff));
  if (bar_y >= bar_last && bar_y > 0)
      bar_y = bar_last - 1;
  if (bar_last - bar_y > bar_high && bar_high > 1)
      ++bar_y;
  bar_last = MIN(bar_last, all_high);

  wmove(win, top + 1 + bar_y, right);

  dlg_attrset(win, position_indicator_attr);
  dlg_attron(win, A_REVERSE);



  wvline(win, ACS_BLOCK, bar_last - bar_y);

     }
 }
    }
    dlg_draw_arrows2(win,
       top_arrow,
       bottom_arrow,
       left + ARROWS_COL,
       top,
       bottom,
       attr,
       borderattr);

    dlg_attrset(win, save);
    wmove(win, oldy, oldx);
}
