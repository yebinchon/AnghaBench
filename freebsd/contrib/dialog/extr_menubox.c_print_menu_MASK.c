#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int menu_height; int menu_width; int box_x; scalar_t__ box_y; int /*<<< orphan*/  item_no; int /*<<< orphan*/  dialog; int /*<<< orphan*/  menu; int /*<<< orphan*/ * items; } ;
typedef  TYPE_1__ ALL_DATA ;

/* Variables and functions */
 int INPUT_ROWS ; 
 int /*<<< orphan*/  Selected ; 
 int /*<<< orphan*/  Unselected ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  menubox_attr ; 
 int /*<<< orphan*/  menubox_border2_attr ; 
 int /*<<< orphan*/  menubox_border_attr ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(ALL_DATA * data, int choice, int scrollamt, int max_choice, bool is_inputmenu)
{
    int i;

    for (i = 0; i < max_choice; i++) {
	FUNC2(data,
		   data->menu,
		   &data->items[i + scrollamt],
		   i,
		   (i == choice) ? Selected : Unselected,
		   is_inputmenu);
    }

    /* Clean bottom lines */
    if (is_inputmenu) {
	int spare_lines, x_count;
	spare_lines = data->menu_height % INPUT_ROWS;
	FUNC0(data->menu, menubox_attr);
	for (; spare_lines; spare_lines--) {
	    FUNC4(data->menu, data->menu_height - spare_lines, 0);
	    for (x_count = 0; x_count < data->menu_width;
		 x_count++) {
		FUNC3(data->menu, ' ');
	    }
	}
    }

    (void) FUNC5(data->menu);

    FUNC1(data->dialog,
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