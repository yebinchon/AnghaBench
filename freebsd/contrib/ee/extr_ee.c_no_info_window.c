
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLS ;
 scalar_t__ FALSE ;
 scalar_t__ LINES ;
 int TRUE ;
 int clear_com_win ;
 int clearok (int ,int ) ;
 int delwin (int ) ;
 int idlok (int ,int ) ;
 int info_win ;
 scalar_t__ info_window ;
 int keypad (int ,int ) ;
 scalar_t__ last_line ;
 int midscreen (int ,int ) ;
 int newwin (scalar_t__,int ,int ,int ) ;
 int point ;
 int scr_vert ;
 int text_win ;
 int wrefresh (int ) ;

void
no_info_window()
{
 if (!info_window)
  return;
 delwin(info_win);
 delwin(text_win);
 info_window = FALSE;
 last_line = LINES - 2;
 text_win = newwin((LINES - 1), COLS, 0, 0);
 keypad(text_win, TRUE);
 idlok(text_win, TRUE);
 clearok(text_win, TRUE);
 midscreen(scr_vert, point);
 wrefresh(text_win);
 clear_com_win = TRUE;
}
