
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tm {int tm_mday; int tm_wday; int tm_yday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct TYPE_5__ {scalar_t__ iso_week; } ;
struct TYPE_4__ {int y; int x; int week_start; scalar_t__ height; int parent; int window; scalar_t__ width; } ;
typedef TYPE_1__ BOX ;


 scalar_t__ ARROWS_COL ;
 scalar_t__ ERR ;
 int MARGIN ;
 int MAX_DAYS ;
 int MON_WIDE ;
 int TRUE ;
 int days_in_month (struct tm*,int) ;
 TYPE_3__ dialog_vars ;
 int dlg_attrset (int ,int ) ;
 int dlg_draw_arrows (int ,int ,int ,scalar_t__,int,scalar_t__) ;
 int dlg_draw_box2 (int ,int,int,scalar_t__,scalar_t__,int ,int ,int ) ;
 int* getisoweeks (scalar_t__,scalar_t__) ;
 int item_attr ;
 int item_selected_attr ;
 int menubox_attr ;
 int menubox_border2_attr ;
 int menubox_border_attr ;
 int mvwprintw (int ,int,int,char*,int,int,...) ;
 int nameOfDayOfWeek (int) ;
 int werase (int ) ;
 scalar_t__ wmove (int ,int,int) ;
 int wprintw (int ,char*,int,int) ;

__attribute__((used)) static int
draw_day(BOX * data, struct tm *current)
{
    int cell_wide = MON_WIDE;
    int y, x, this_x = 0;
    int save_y = 0, save_x = 0;
    int day = current->tm_mday;
    int mday;
    int week = 0;
    int windx = 0;
    int *weeks = 0;
    int last = days_in_month(current, 0);
    int prev = days_in_month(current, -1);

    werase(data->window);
    dlg_draw_box2(data->parent,
    data->y - MARGIN, data->x - MARGIN,
    data->height + (2 * MARGIN), data->width + (2 * MARGIN),
    menubox_attr,
    menubox_border_attr,
    menubox_border2_attr);

    dlg_attrset(data->window, menubox_attr);
    for (x = 0; x < MAX_DAYS; x++) {
 mvwprintw(data->window,
    0, (x + 1) * cell_wide, "%*.*s ",
    cell_wide - 1,
    cell_wide - 1,
    nameOfDayOfWeek(x + data->week_start));
    }

    mday = ((6 + current->tm_mday -
      current->tm_wday +
      data->week_start) % MAX_DAYS) - MAX_DAYS;
    if (mday <= -MAX_DAYS)
 mday += MAX_DAYS;

    if (dialog_vars.iso_week) {
 weeks = getisoweeks(current->tm_year + 1900, current->tm_mon + 1);
    } else {

 week = (current->tm_yday + 6 + mday - current->tm_mday) / MAX_DAYS;
    }

    for (y = 1; mday < last; y++) {
 dlg_attrset(data->window, menubox_attr);
 mvwprintw(data->window,
    y, 0,
    "%*d ",
    cell_wide - 1,
    weeks ? weeks[windx++] : ++week);
 for (x = 0; x < MAX_DAYS; x++) {
     this_x = 1 + (x + 1) * cell_wide;
     ++mday;
     if (wmove(data->window, y, this_x) == ERR)
  continue;
     dlg_attrset(data->window, item_attr);
     if (mday == day) {
  dlg_attrset(data->window, item_selected_attr);
  save_y = y;
  save_x = this_x;
     }
     if (mday > 0) {
  if (mday <= last) {
      wprintw(data->window, "%*d", cell_wide - 2, mday);
  } else if (mday == day) {
      wprintw(data->window, "%*d", cell_wide - 2, mday - last);
  }
     } else if (mday == day) {
  wprintw(data->window, "%*d", cell_wide - 2, mday + prev);
     }
 }
 wmove(data->window, save_y, save_x);
    }

    dlg_draw_arrows(data->parent, TRUE, TRUE,
      data->x + ARROWS_COL,
      data->y - 1,
      data->y + data->height);

    return 0;
}
