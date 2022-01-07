
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int chtype ;
struct TYPE_2__ {int * backtitle; } ;


 int ACS_HLINE ;
 int A_NORMAL ;
 int COLS ;
 TYPE_1__ dialog_vars ;
 int dlg_attrset (int ,int ) ;
 char dlg_boxchar (int ) ;
 int dlg_count_columns (int *) ;
 int dlg_print_text (int ,int *,int,int *) ;
 int screen_attr ;
 int stdscr ;
 int waddch (int ,char) ;
 int wmove (int ,int,int) ;
 int wnoutrefresh (int ) ;

void
dlg_put_backtitle(void)
{
    int i;

    if (dialog_vars.backtitle != ((void*)0)) {
 chtype attr = A_NORMAL;
 int backwidth = dlg_count_columns(dialog_vars.backtitle);

 dlg_attrset(stdscr, screen_attr);
 (void) wmove(stdscr, 0, 1);
 dlg_print_text(stdscr, dialog_vars.backtitle, COLS - 2, &attr);
 for (i = 0; i < COLS - backwidth; i++)
     (void) waddch(stdscr, ' ');
 (void) wmove(stdscr, 1, 1);
 for (i = 0; i < COLS - 2; i++)
     (void) waddch(stdscr, dlg_boxchar(ACS_HLINE));
    }

    (void) wnoutrefresh(stdscr);
}
