
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int window; scalar_t__ width; scalar_t__ height; scalar_t__ x; scalar_t__ y; int parent; } ;
typedef TYPE_1__ BOX ;


 int MARGIN ;
 int dlg_attrset (int ,int ) ;
 int dlg_draw_box (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int item_attr ;
 int menubox_border2_attr ;
 int menubox_border_attr ;
 int werase (int ) ;
 int wprintw (int ,char*,int ) ;

__attribute__((used)) static int
draw_cell(BOX * data)
{
    werase(data->window);
    dlg_draw_box(data->parent,
   data->y - MARGIN, data->x - MARGIN,
   data->height + (2 * MARGIN), data->width + (2 * MARGIN),
   menubox_border_attr, menubox_border2_attr);

    dlg_attrset(data->window, item_attr);
    wprintw(data->window, "%02d", data->value);
    return 0;
}
