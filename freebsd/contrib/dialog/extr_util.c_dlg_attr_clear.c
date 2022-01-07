
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chtype ;
typedef int WINDOW ;


 int dlg_attrset (int *,int ) ;
 int touchwin (int *) ;
 int waddch (int *,char) ;
 int wmove (int *,int,int ) ;

void
dlg_attr_clear(WINDOW *win, int height, int width, chtype attr)
{
    int i, j;

    dlg_attrset(win, attr);
    for (i = 0; i < height; i++) {
 (void) wmove(win, i, 0);
 for (j = 0; j < width; j++)
     (void) waddch(win, ' ');
    }
    (void) touchwin(win);
}
