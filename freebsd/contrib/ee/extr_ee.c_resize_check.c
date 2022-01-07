
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COLS ;
 scalar_t__ LINES ;
 int com_win ;
 int delwin (int ) ;
 int help_win ;
 int info_win ;
 scalar_t__ info_window ;
 scalar_t__ local_COLS ;
 scalar_t__ local_LINES ;
 int redraw () ;
 int set_up_term () ;
 int text_win ;
 int wrefresh (int ) ;

void
resize_check()
{
 if ((LINES == local_LINES) && (COLS == local_COLS))
  return;

 if (info_window)
  delwin(info_win);
 delwin(text_win);
 delwin(com_win);
 delwin(help_win);
 set_up_term();
 redraw();
 wrefresh(text_win);
}
