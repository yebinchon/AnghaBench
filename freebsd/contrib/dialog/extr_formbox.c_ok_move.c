
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 scalar_t__ ERR ;
 scalar_t__ in_window (int *,int,int) ;
 scalar_t__ wmove (int *,int,int) ;

__attribute__((used)) static bool
ok_move(WINDOW *win, int scrollamt, int y, int x)
{
    return in_window(win, scrollamt, y)
 && (wmove(win, y - scrollamt, x) != ERR);
}
