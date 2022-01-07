
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int atr; } ;
struct TYPE_4__ {int * backtitle; TYPE_1__ screen; } ;


 int ACS_HLINE ;
 int COLS ;
 int LINES ;
 int attr_clear (int ,int ,int,int ) ;
 TYPE_2__ dlg ;
 int mvwaddstr (int ,int ,int,char*) ;
 int stdscr ;
 int waddch (int ,int ) ;
 int wattrset (int ,int ) ;
 int wmove (int ,int,int) ;
 int wnoutrefresh (int ) ;

void dialog_clear(void)
{
 attr_clear(stdscr, LINES, COLS, dlg.screen.atr);

 if (dlg.backtitle != ((void*)0)) {
  int i;

  wattrset(stdscr, dlg.screen.atr);
  mvwaddstr(stdscr, 0, 1, (char *)dlg.backtitle);
  wmove(stdscr, 1, 1);
  for (i = 1; i < COLS - 1; i++)
   waddch(stdscr, ACS_HLINE);
 }
 wnoutrefresh(stdscr);
}
