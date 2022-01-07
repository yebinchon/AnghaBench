
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int getbegyx (int *,int,int) ;

int
dlg_getbegy(WINDOW *win)
{
    int y, x;
    getbegyx(win, y, x);
    return y;
}
