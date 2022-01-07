
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int getyx (int *,int,int) ;

int
dlg_getcurx(WINDOW *win)
{
    int y, x;
    getyx(win, y, x);
    return x;
}
