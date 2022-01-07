
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int chtype ;
typedef int WINDOW ;
struct TYPE_2__ {scalar_t__* help_line; } ;


 int A_NORMAL ;
 int ON_LEFT ;
 int ON_RIGHT ;
 TYPE_1__ dialog_vars ;
 int dlg_count_columns (scalar_t__*) ;
 int dlg_count_real_columns (scalar_t__*) ;
 int dlg_print_text (int *,scalar_t__*,int,int *) ;
 int getmaxx (int *) ;
 int getmaxy (int *) ;
 int getyx (int *,int,int) ;
 int waddch (int *,char) ;
 int wmove (int *,int,int) ;

void
dlg_draw_helpline(WINDOW *win, bool decorations)
{
    int cur_x, cur_y;
    int bottom;

    if (dialog_vars.help_line != 0
 && dialog_vars.help_line[0] != 0
 && (bottom = getmaxy(win) - 1) > 0) {
 chtype attr = A_NORMAL;
 int cols = dlg_count_columns(dialog_vars.help_line);
 int other = decorations ? (ON_LEFT + ON_RIGHT) : 0;
 int avail = (getmaxx(win) - other - 2);
 int limit = dlg_count_real_columns(dialog_vars.help_line) + 2;

 if (limit < avail) {
     getyx(win, cur_y, cur_x);
     other = decorations ? ON_LEFT : 0;
     (void) wmove(win, bottom, other + (avail - limit) / 2);
     waddch(win, '[');
     dlg_print_text(win, dialog_vars.help_line, cols, &attr);
     waddch(win, ']');
     wmove(win, cur_y, cur_x);
 }
    }
}
