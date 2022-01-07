
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 scalar_t__ ERR ;
 int getmaxx (int *) ;
 scalar_t__ wmove (int *,int,int) ;

__attribute__((used)) static void
move_past(WINDOW *win, int y, int x)
{
    if (wmove(win, y, x) == ERR)
 wmove(win, y, getmaxx(win) - 1);
}
