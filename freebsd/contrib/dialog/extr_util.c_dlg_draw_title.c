
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chtype ;
typedef int WINDOW ;


 int A_NORMAL ;
 int centered (scalar_t__,char const*) ;
 int dlg_attrset (int *,int ) ;
 int dlg_finish_string (char const*) ;
 int dlg_get_attrs (int *) ;
 int dlg_print_text (int *,char const*,scalar_t__,int *) ;
 scalar_t__ getmaxx (int *) ;
 int title_attr ;
 int wmove (int *,int ,int) ;

void
dlg_draw_title(WINDOW *win, const char *title)
{
    if (title != ((void*)0)) {
 chtype attr = A_NORMAL;
 chtype save = dlg_get_attrs(win);
 int x = centered(getmaxx(win), title);

 dlg_attrset(win, title_attr);
 wmove(win, 0, x);
 dlg_print_text(win, title, getmaxx(win) - x, &attr);
 dlg_attrset(win, save);
 dlg_finish_string(title);
    }
}
