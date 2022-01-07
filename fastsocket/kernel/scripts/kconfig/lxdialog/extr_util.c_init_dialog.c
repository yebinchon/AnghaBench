
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* backtitle; } ;


 int ERRDISPLAYTOOSMALL ;
 int TRUE ;
 int cbreak () ;
 int color_setup (int ) ;
 int dialog_clear () ;
 TYPE_1__ dlg ;
 int endwin () ;
 int getenv (char*) ;
 int getmaxyx (int ,int,int) ;
 int initscr () ;
 int keypad (int ,int ) ;
 int noecho () ;
 int stdscr ;

int init_dialog(const char *backtitle)
{
 int height, width;

 initscr();
 getmaxyx(stdscr, height, width);
 if (height < 19 || width < 80) {
  endwin();
  return -ERRDISPLAYTOOSMALL;
 }

 dlg.backtitle = backtitle;
 color_setup(getenv("MENUCONFIG_COLOR"));

 keypad(stdscr, TRUE);
 cbreak();
 noecho();
 dialog_clear();

 return 0;
}
