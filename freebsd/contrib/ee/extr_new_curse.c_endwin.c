
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int curscr ;
 int delwin (int ) ;
 int initialized ;
 int keypad (int ,int ) ;
 int stdscr ;
 int virtual_scr ;

void
endwin()
{
 keypad(stdscr, FALSE);
 initialized = FALSE;
 delwin(curscr);
 delwin(virtual_scr);
 delwin(stdscr);

{
 int old_arg, value;


}

}
