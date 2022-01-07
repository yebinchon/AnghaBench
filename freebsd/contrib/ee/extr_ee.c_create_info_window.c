
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLS ;
 int CONTROL_KEYS ;
 int LINES ;
 void* TRUE ;
 void* clear_com_win ;
 int clearok (int ,void*) ;
 int delwin (int ) ;
 int idlok (int ,void*) ;
 int info_type ;
 int info_win ;
 void* info_window ;
 int keypad (int ,void*) ;
 int last_line ;
 int midscreen (int ,int ) ;
 int min (int ,int) ;
 int newwin (int,int ,int,int ) ;
 int paint_info_win () ;
 int point ;
 int scr_vert ;
 int text_win ;
 int werase (int ) ;
 int wrefresh (int ) ;

void
create_info_window()
{
 if (info_window)
  return;
 last_line = LINES - 8;
 delwin(text_win);
 text_win = newwin((LINES - 7), COLS, 6, 0);
 keypad(text_win, TRUE);
 idlok(text_win, TRUE);
 werase(text_win);
 info_window = TRUE;
 info_win = newwin(6, COLS, 0, 0);
 werase(info_win);
 info_type = CONTROL_KEYS;
 midscreen(min(scr_vert, last_line), point);
 clearok(info_win, TRUE);
 paint_info_win();
 wrefresh(text_win);
 clear_com_win = TRUE;
}
