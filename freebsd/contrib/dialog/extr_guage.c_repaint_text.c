
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int chtype ;
typedef int WINDOW ;
struct TYPE_4__ {int * win; } ;
struct TYPE_5__ {int height; int width; int percent; int prompt; int title; TYPE_1__ obj; } ;
typedef TYPE_2__ MY_OBJ ;


 int A_REVERSE ;
 int FALSE ;
 int MARGIN ;
 int border2_attr ;
 int border_attr ;
 int dialog_attr ;
 int dlg_attroff (int *,int) ;
 int dlg_attrset (int *,int) ;
 int dlg_draw_box2 (int *,int,int,int,int,int,int ,int ) ;
 int dlg_draw_helpline (int *,int ) ;
 int dlg_draw_title (int *,int ) ;
 int dlg_print_autowrap (int *,int ,int,int) ;
 int gauge_attr ;
 int waddch (int *,int) ;
 int werase (int *) ;
 int winch (int *) ;
 int wmove (int *,int,int) ;
 int wprintw (int *,char*,int) ;
 int wrefresh (int *) ;

__attribute__((used)) static void
repaint_text(MY_OBJ * obj)
{
    WINDOW *dialog = obj->obj.win;
    int i, x;

    if (dialog != 0) {
 (void) werase(dialog);
 dlg_draw_box2(dialog, 0, 0, obj->height, obj->width, dialog_attr,
        border_attr, border2_attr);

 dlg_draw_title(dialog, obj->title);

 dlg_attrset(dialog, dialog_attr);
 dlg_draw_helpline(dialog, FALSE);
 dlg_print_autowrap(dialog, obj->prompt, obj->height, obj->width);

 dlg_draw_box2(dialog,
        obj->height - 4, 2 + MARGIN,
        2 + MARGIN, obj->width - 2 * (2 + MARGIN),
        dialog_attr,
        border_attr,
        border2_attr);






 (void) wmove(dialog, obj->height - 3, 4);
 dlg_attrset(dialog, gauge_attr);

 for (i = 0; i < (obj->width - 2 * (3 + MARGIN)); i++)
     (void) waddch(dialog, ' ');

 (void) wmove(dialog, obj->height - 3, (obj->width / 2) - 2);
 (void) wprintw(dialog, "%3d%%", obj->percent);






 x = (obj->percent * (obj->width - 2 * (3 + MARGIN))) / 100;
 if ((gauge_attr & A_REVERSE) != 0) {
     dlg_attroff(dialog, A_REVERSE);
 } else {
     dlg_attrset(dialog, A_REVERSE);
 }
 (void) wmove(dialog, obj->height - 3, 4);
 for (i = 0; i < x; i++) {
     chtype ch2 = winch(dialog);
     if (gauge_attr & A_REVERSE) {
  ch2 &= ~A_REVERSE;
     }
     (void) waddch(dialog, ch2);
 }

 (void) wrefresh(dialog);
    }
}
