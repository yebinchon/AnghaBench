
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dialog; scalar_t__ use_height; scalar_t__ box_y; scalar_t__ use_width; scalar_t__ box_x; scalar_t__ check_x; scalar_t__ item_no; int list; int * depths; int states; int * items; } ;
typedef TYPE_1__ ALL_DATA ;


 int dlg_draw_scrollbar (int ,long,long,long,long,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int getyx (int ,int,int) ;
 int menubox_border2_attr ;
 int menubox_border_attr ;
 int print_item (TYPE_1__*,int *,int ,int ,int,int) ;
 int wmove (int ,int,int) ;
 int wnoutrefresh (int ) ;

__attribute__((used)) static void
print_list(ALL_DATA * data,
    int choice,
    int scrollamt,
    int max_choice)
{
    int i;
    int cur_y, cur_x;

    getyx(data->dialog, cur_y, cur_x);

    for (i = 0; i < max_choice; i++) {
 print_item(data,
     &data->items[scrollamt + i],
     data->states,
     data->depths[scrollamt + i],
     i, i == choice);
    }
    (void) wnoutrefresh(data->list);

    dlg_draw_scrollbar(data->dialog,
         (long) (scrollamt),
         (long) (scrollamt),
         (long) (scrollamt + max_choice),
         (long) (data->item_no),
         data->box_x + data->check_x,
         data->box_x + data->use_width,
         data->box_y,
         data->box_y + data->use_height + 1,
         menubox_border2_attr,
         menubox_border_attr);

    (void) wmove(data->dialog, cur_y, cur_x);
}
