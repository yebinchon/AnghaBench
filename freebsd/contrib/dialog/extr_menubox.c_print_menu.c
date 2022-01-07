
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int menu_height; int menu_width; int box_x; scalar_t__ box_y; int item_no; int dialog; int menu; int * items; } ;
typedef TYPE_1__ ALL_DATA ;


 int INPUT_ROWS ;
 int Selected ;
 int Unselected ;
 int dlg_attrset (int ,int ) ;
 int dlg_draw_scrollbar (int ,int,int,int,int ,int,int,scalar_t__,scalar_t__,int ,int ) ;
 int menubox_attr ;
 int menubox_border2_attr ;
 int menubox_border_attr ;
 int print_item (TYPE_1__*,int ,int *,int,int ,int) ;
 int waddch (int ,char) ;
 int wmove (int ,int,int ) ;
 int wnoutrefresh (int ) ;

__attribute__((used)) static void
print_menu(ALL_DATA * data, int choice, int scrollamt, int max_choice, bool is_inputmenu)
{
    int i;

    for (i = 0; i < max_choice; i++) {
 print_item(data,
     data->menu,
     &data->items[i + scrollamt],
     i,
     (i == choice) ? Selected : Unselected,
     is_inputmenu);
    }


    if (is_inputmenu) {
 int spare_lines, x_count;
 spare_lines = data->menu_height % INPUT_ROWS;
 dlg_attrset(data->menu, menubox_attr);
 for (; spare_lines; spare_lines--) {
     wmove(data->menu, data->menu_height - spare_lines, 0);
     for (x_count = 0; x_count < data->menu_width;
   x_count++) {
  waddch(data->menu, ' ');
     }
 }
    }

    (void) wnoutrefresh(data->menu);

    dlg_draw_scrollbar(data->dialog,
         scrollamt,
         scrollamt,
         scrollamt + max_choice,
         data->item_no,
         data->box_x,
         data->box_x + data->menu_width,
         data->box_y,
         data->box_y + data->menu_height + 1,
         menubox_border2_attr,
         menubox_border_attr);
}
