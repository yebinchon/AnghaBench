
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chtype ;
typedef int WINDOW ;


 int A_NORMAL ;
 char* _ (char*) ;
 int dlg_attrset (int *,int ) ;
 int dlg_draw_box (int *,int,int,int,int,int ,int ) ;
 int dlg_get_attrs (int *) ;
 int dlg_print_text (int *,char const*,int,int *) ;
 int title_attr ;
 int wmove (int *,int,int) ;

__attribute__((used)) static void
mydraw_mixed_box(WINDOW *win, int y, int x, int height, int width,
   chtype boxchar, chtype borderchar)
{
    dlg_draw_box(win, y, x, height, width, boxchar, borderchar);
    {
 chtype attr = A_NORMAL;
 const char *message = _("Overall Progress");
 chtype save2 = dlg_get_attrs(win);
 dlg_attrset(win, title_attr);
 (void) wmove(win, y, x + 2);
 dlg_print_text(win, message, width, &attr);
 dlg_attrset(win, save2);
    }
}
