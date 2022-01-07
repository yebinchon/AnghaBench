
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ win; int offset; int length; int choice; int par; scalar_t__* data; } ;
typedef TYPE_1__ LIST ;


 int dlg_attr_clear (scalar_t__,int,scalar_t__,int ) ;
 int dlg_attrset (scalar_t__,int ) ;
 int dlg_draw_scrollbar (int ,long,long,long,long,int,scalar_t__,int,int,int ,int ) ;
 scalar_t__ getmaxx (scalar_t__) ;
 int getmaxy (scalar_t__) ;
 int getparyx (scalar_t__,int,int) ;
 int item_attr ;
 int item_selected_attr ;
 int menubox_border2_attr ;
 int menubox_border_attr ;
 int waddstr (scalar_t__,scalar_t__) ;
 int wmove (scalar_t__,int,int ) ;
 int wnoutrefresh (scalar_t__) ;

__attribute__((used)) static void
display_list(LIST * list)
{
    int n;
    int x;
    int y;
    int top;
    int bottom;

    if (list->win != 0) {
 dlg_attr_clear(list->win, getmaxy(list->win), getmaxx(list->win), item_attr);
 for (n = list->offset; n < list->length && list->data[n]; n++) {
     y = n - list->offset;
     if (y >= getmaxy(list->win))
  break;
     (void) wmove(list->win, y, 0);
     if (n == list->choice)
  dlg_attrset(list->win, item_selected_attr);
     (void) waddstr(list->win, list->data[n]);
     dlg_attrset(list->win, item_attr);
 }
 dlg_attrset(list->win, item_attr);

 getparyx(list->win, y, x);

 top = y - 1;
 bottom = y + getmaxy(list->win);
 dlg_draw_scrollbar(list->par,
      (long) list->offset,
      (long) list->offset,
      (long) (list->offset + getmaxy(list->win)),
      (long) (list->length),
      x + 1,
      x + getmaxx(list->win),
      top,
      bottom,
      menubox_border2_attr,
      menubox_border_attr);

 (void) wmove(list->win, list->choice - list->offset, 0);
 (void) wnoutrefresh(list->win);
    }
}
