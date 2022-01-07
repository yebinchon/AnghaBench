
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tm {int tm_mon; } ;
struct TYPE_3__ {int window; scalar_t__ width; scalar_t__ height; scalar_t__ x; scalar_t__ y; int parent; } ;
typedef TYPE_1__ BOX ;


 int _ (char*) ;
 int dialog_attr ;
 int dlg_attrset (int ,int ) ;
 int dlg_draw_box2 (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ) ;
 int item_attr ;
 int menubox_attr ;
 int menubox_border2_attr ;
 int menubox_border_attr ;
 int mvwprintw (int ,int ,int ,char*,...) ;
 int nameOfMonth (int) ;
 int wmove (int ,int ,int ) ;

__attribute__((used)) static int
draw_month(BOX * data, struct tm *current)
{
    int month;

    month = current->tm_mon + 1;

    dlg_attrset(data->parent, dialog_attr);
    (void) mvwprintw(data->parent, data->y - 2, data->x - 1, _("Month"));
    dlg_draw_box2(data->parent,
    data->y - 1, data->x - 1,
    data->height + 2, data->width + 2,
    menubox_attr,
    menubox_border_attr,
    menubox_border2_attr);
    dlg_attrset(data->window, item_attr);
    mvwprintw(data->window, 0, 0, "%s", nameOfMonth(month - 1));
    wmove(data->window, 0, 0);
    return 0;
}
