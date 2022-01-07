
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int clear_com_win ;
 int com_win ;
 int restricted ;
 int restricted_msg ;
 int wclrtoeol (int ) ;
 int wmove (int ,int ,int ) ;
 int wprintw (int ,int ) ;
 int wrefresh (int ) ;

int
restrict_mode()
{
 if (!restricted)
  return(FALSE);

 wmove(com_win, 0, 0);
 wprintw(com_win, restricted_msg);
 wclrtoeol(com_win);
 wrefresh(com_win);
 clear_com_win = TRUE;
 return(TRUE);
}
