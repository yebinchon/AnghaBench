
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char chtype ;
typedef int WINDOW ;


 int ACS_HLINE ;
 int ACS_LLCORNER ;
 int ACS_LRCORNER ;
 int ACS_ULCORNER ;
 int ACS_URCORNER ;
 int ACS_VLINE ;
 int dlg_attrset (int *,char) ;
 char dlg_boxchar (int ) ;
 char dlg_get_attrs (int *) ;
 int waddch (int *,char) ;
 int wmove (int *,int,int) ;

void
dlg_draw_box2(WINDOW *win, int y, int x, int height, int width,
       chtype boxchar, chtype borderchar, chtype borderchar2)
{
    int i, j;
    chtype save = dlg_get_attrs(win);

    dlg_attrset(win, 0);
    for (i = 0; i < height; i++) {
 (void) wmove(win, y + i, x);
 for (j = 0; j < width; j++)
     if (!i && !j)
  (void) waddch(win, borderchar | dlg_boxchar(ACS_ULCORNER));
     else if (i == height - 1 && !j)
  (void) waddch(win, borderchar | dlg_boxchar(ACS_LLCORNER));
     else if (!i && j == width - 1)
  (void) waddch(win, borderchar2 | dlg_boxchar(ACS_URCORNER));
     else if (i == height - 1 && j == width - 1)
  (void) waddch(win, borderchar2 | dlg_boxchar(ACS_LRCORNER));
     else if (!i)
  (void) waddch(win, borderchar | dlg_boxchar(ACS_HLINE));
     else if (i == height - 1)
  (void) waddch(win, borderchar2 | dlg_boxchar(ACS_HLINE));
     else if (!j)
  (void) waddch(win, borderchar | dlg_boxchar(ACS_VLINE));
     else if (j == width - 1)
  (void) waddch(win, borderchar2 | dlg_boxchar(ACS_VLINE));
     else
  (void) waddch(win, boxchar | ' ');
    }
    dlg_attrset(win, save);
}
