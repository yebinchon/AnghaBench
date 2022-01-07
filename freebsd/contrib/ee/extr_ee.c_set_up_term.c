
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A_NC_BIG5 ;
 int COLS ;
 int CONTROL_KEYS ;
 scalar_t__ FALSE ;
 int LINES ;
 scalar_t__ TRUE ;
 void* com_win ;
 scalar_t__ curses_initialized ;
 scalar_t__ ee_chinese ;
 void* help_win ;
 int idlok (void*,scalar_t__) ;
 int info_type ;
 void* info_win ;
 scalar_t__ info_window ;
 int initscr () ;
 int keypad (void*,scalar_t__) ;
 int last_col ;
 int last_line ;
 int local_COLS ;
 int local_LINES ;
 int nc_setattrib (int ) ;
 void* newwin (int,int,int,int ) ;
 int noecho () ;
 int nonl () ;
 int paint_info_win () ;
 int raw () ;
 int savetty () ;
 void* stdscr ;
 void* text_win ;
 int werase (void*) ;
 int wrefresh (void*) ;

void
set_up_term()
{
 if (!curses_initialized)
 {
  initscr();
  savetty();
  noecho();
  raw();
  nonl();
  curses_initialized = TRUE;
 }

 if (((LINES > 15) && (COLS >= 80)) && info_window)
  last_line = LINES - 8;
 else
 {
  info_window = FALSE;
  last_line = LINES - 2;
 }

 idlok(stdscr, TRUE);
 com_win = newwin(1, COLS, (LINES - 1), 0);
 keypad(com_win, TRUE);
 idlok(com_win, TRUE);
 wrefresh(com_win);
 if (!info_window)
  text_win = newwin((LINES - 1), COLS, 0, 0);
 else
  text_win = newwin((LINES - 7), COLS, 6, 0);
 keypad(text_win, TRUE);
 idlok(text_win, TRUE);
 wrefresh(text_win);
 help_win = newwin((LINES - 1), COLS, 0, 0);
 keypad(help_win, TRUE);
 idlok(help_win, TRUE);
 if (info_window)
 {
  info_type = CONTROL_KEYS;
  info_win = newwin(6, COLS, 0, 0);
  werase(info_win);
  paint_info_win();
 }

 last_col = COLS - 1;
 local_LINES = LINES;
 local_COLS = COLS;






}
