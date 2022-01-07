
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chtype ;
typedef int WINDOW ;


 int ACS_HLINE ;
 int ACS_LTEE ;
 int ACS_RTEE ;
 int dlg_attrset (int *,int ) ;
 char dlg_boxchar (int ) ;
 int getmaxx (int *) ;
 int getmaxy (int *) ;
 int waddch (int *,char) ;
 int wmove (int *,int,int) ;

void
dlg_draw_bottom_box2(WINDOW *win, chtype on_left, chtype on_right, chtype on_inside)
{
    int width = getmaxx(win);
    int height = getmaxy(win);
    int i;

    dlg_attrset(win, on_left);
    (void) wmove(win, height - 3, 0);
    (void) waddch(win, dlg_boxchar(ACS_LTEE));
    for (i = 0; i < width - 2; i++)
 (void) waddch(win, dlg_boxchar(ACS_HLINE));
    dlg_attrset(win, on_right);
    (void) waddch(win, dlg_boxchar(ACS_RTEE));
    dlg_attrset(win, on_inside);
    (void) wmove(win, height - 2, 1);
    for (i = 0; i < width - 2; i++)
 (void) waddch(win, ' ');
}
