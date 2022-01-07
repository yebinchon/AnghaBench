
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int ACS_HLINE ;
 int FALSE ;
 int LINES ;
 int MARGIN ;
 char border_attr ;
 int copywin (int *,int *,int,int,int,int,int,int,int ) ;
 int delwin (int *) ;
 char dialog_attr ;
 int dlg_attrset (int *,char) ;
 int dlg_boxchar (int ) ;
 int dlg_count_columns (char const*) ;
 int dlg_print_autowrap (int *,char const*,int,int) ;
 int getyx (int *,int,int) ;
 int * newwin (int,int,int ,int ) ;
 char position_indicator_attr ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strlen (char*) ;
 int waddstr (int *,char*) ;
 int wbkgdset (int *,char) ;
 int werase (int *) ;
 int whline (int *,int ,int) ;
 int wmove (int *,int,int) ;

int
dlg_print_scrolled(WINDOW *win,
     const char *prompt,
     int offset,
     int height,
     int width,
     int pauseopt)
{
    int oldy, oldx;
    int last = 0;

    (void) pauseopt;

    getyx(win, oldy, oldx);
    {
 (void) offset;
 dlg_attrset(win, dialog_attr);
 dlg_print_autowrap(win, prompt, height + 1 + (3 * MARGIN), width);
 last = 0;
    }
    wmove(win, oldy, oldx);
    return last;
}
