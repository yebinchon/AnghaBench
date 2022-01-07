
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_3__ {int atr; } ;
struct TYPE_4__ {TYPE_1__ position_indicator; } ;


 int A_COLOR ;
 int buf ;
 TYPE_2__ dlg ;
 scalar_t__ getmaxx (int *) ;
 scalar_t__ getmaxy (int *) ;
 int page ;
 int strlen (int) ;
 int wattrset (int *,int) ;
 int wbkgdset (int *,int) ;
 int wmove (int *,scalar_t__,scalar_t__) ;
 int wprintw (int *,char*,int) ;

__attribute__((used)) static void print_position(WINDOW * win)
{
 int percent;

 wattrset(win, dlg.position_indicator.atr);
 wbkgdset(win, dlg.position_indicator.atr & A_COLOR);
 percent = (page - buf) * 100 / strlen(buf);
 wmove(win, getmaxy(win) - 3, getmaxx(win) - 9);
 wprintw(win, "(%3d%%)", percent);
}
