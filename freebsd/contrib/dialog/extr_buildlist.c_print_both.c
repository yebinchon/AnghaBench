
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_7__ {scalar_t__ check_x; TYPE_1__* list; } ;
struct TYPE_6__ {int top_index; scalar_t__ box_y; scalar_t__ box_x; int * win; } ;
typedef TYPE_1__ MY_DATA ;
typedef TYPE_2__ ALL_DATA ;


 int KEY_MAX ;
 scalar_t__ MIN (int,int) ;
 int TRACE (char*) ;
 int dlg_draw_scrollbar (int *,long,long,long,long,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int dlg_mouse_setcode (int) ;
 scalar_t__ getmaxx (int *) ;
 int getmaxy (int *) ;
 int getyx (int *,int,int) ;
 int index2row (TYPE_2__*,int,int) ;
 int menubox_border2_attr ;
 int menubox_border_attr ;
 int print_1_list (TYPE_2__*,int,int) ;
 int * wgetparent (int *) ;
 int wmove (int *,int,int) ;

__attribute__((used)) static void
print_both(ALL_DATA * all,
    int choice)
{
    int selected;
    int cur_y, cur_x;
    WINDOW *dialog = wgetparent(all->list[0].win);

    TRACE(("! print_both %d\n", choice));
    getyx(dialog, cur_y, cur_x);
    for (selected = 0; selected < 2; ++selected) {
 MY_DATA *data = all->list + selected;
 WINDOW *win = data->win;
 int thumb_top = index2row(all, data->top_index, selected);
 int thumb_max = index2row(all, -1, selected);
 int thumb_end = thumb_top + getmaxy(win);

 print_1_list(all, choice, selected);

 dlg_mouse_setcode(selected * KEY_MAX);
 dlg_draw_scrollbar(dialog,
      (long) (data->top_index),
      (long) (thumb_top),
      (long) MIN(thumb_end, thumb_max),
      (long) thumb_max,
      data->box_x + all->check_x,
      data->box_x + getmaxx(win),
      data->box_y,
      data->box_y + getmaxy(win) + 1,
      menubox_border2_attr,
      menubox_border_attr);
    }
    (void) wmove(dialog, cur_y, cur_x);
    dlg_mouse_setcode(0);
}
