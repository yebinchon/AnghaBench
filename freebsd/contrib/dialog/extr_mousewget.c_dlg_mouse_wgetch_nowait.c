
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int FALSE ;
 int mouse_wgetch (int *,int*,int ) ;

int
dlg_mouse_wgetch_nowait(WINDOW *win, int *fkey)
{
    return mouse_wgetch(win, fkey, FALSE);
}
