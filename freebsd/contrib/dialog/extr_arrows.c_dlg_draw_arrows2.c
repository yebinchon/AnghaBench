
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int chtype ;
typedef int WINDOW ;
struct TYPE_2__ {scalar_t__ title; } ;


 int ACS_DARROW ;
 int ACS_HLINE ;
 int ACS_UARROW ;
 int FALSE ;
 int KEY_NPAGE ;
 int KEY_PPAGE ;
 int MARGIN ;
 int ON_LEFT ;
 int TRUE ;
 int add_acs (int *,int ) ;
 int darrow_attr ;
 TYPE_1__ dialog_vars ;
 int dlg_attrset (int *,int ) ;
 int dlg_boxchar (int ) ;
 int dlg_count_columns (scalar_t__) ;
 int dlg_get_attrs (int *) ;
 int getbegy (int *) ;
 int getmaxx (int *) ;
 int getyx (int *,int,int) ;
 int merge_colors (int ,int ) ;
 int mouse_mkbutton (int,int,int,int ) ;
 scalar_t__ stdscr ;
 int uarrow_attr ;
 int waddstr (int *,char*) ;
 scalar_t__ wgetparent (int *) ;
 int whline (int *,int ,int ) ;
 int wmove (int *,int,int) ;
 int wrefresh (int *) ;

void
dlg_draw_arrows2(WINDOW *win,
   int top_arrow,
   int bottom_arrow,
   int x,
   int top,
   int bottom,
   chtype attr,
   chtype borderattr)
{
    chtype save = dlg_get_attrs(win);
    int cur_x, cur_y;
    int limit_x = getmaxx(win);
    bool draw_top = TRUE;
    bool is_toplevel = (wgetparent(win) == stdscr);

    getyx(win, cur_y, cur_x);




    if (dialog_vars.title && is_toplevel && (top - getbegy(win)) < MARGIN) {
 int have = (limit_x - dlg_count_columns(dialog_vars.title)) / 2;
 int need = x + 5;
 if (need > have)
     draw_top = FALSE;
    }

    if (draw_top) {
 (void) wmove(win, top, x);
 if (top_arrow) {
     dlg_attrset(win, merge_colors(uarrow_attr, attr));
     (void) add_acs(win, ACS_UARROW);
     (void) waddstr(win, "(-)");
 } else {
     dlg_attrset(win, attr);
     (void) whline(win, dlg_boxchar(ACS_HLINE), ON_LEFT);
 }
    }
    mouse_mkbutton(top, x - 1, 6, KEY_PPAGE);

    (void) wmove(win, bottom, x);
    if (bottom_arrow) {
 dlg_attrset(win, merge_colors(darrow_attr, borderattr));
 (void) add_acs(win, ACS_DARROW);
 (void) waddstr(win, "(+)");
    } else {
 dlg_attrset(win, borderattr);
 (void) whline(win, dlg_boxchar(ACS_HLINE), ON_LEFT);
    }
    mouse_mkbutton(bottom, x - 1, 6, KEY_NPAGE);

    (void) wmove(win, cur_y, cur_x);
    wrefresh(win);

    dlg_attrset(win, save);
}
