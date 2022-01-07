
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int getparyx (int *,int,int) ;

int
dlg_getpary(WINDOW *win)
{
    int y, x;
    getparyx(win, y, x);
    return y;
}
