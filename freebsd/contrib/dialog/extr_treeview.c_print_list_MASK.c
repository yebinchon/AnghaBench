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
struct TYPE_4__ {int /*<<< orphan*/  dialog; scalar_t__ use_height; scalar_t__ box_y; scalar_t__ use_width; scalar_t__ box_x; scalar_t__ check_x; scalar_t__ item_no; int /*<<< orphan*/  list; int /*<<< orphan*/ * depths; int /*<<< orphan*/  states; int /*<<< orphan*/ * items; } ;
typedef  TYPE_1__ ALL_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,long,long,long,long,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  menubox_border2_attr ; 
 int /*<<< orphan*/  menubox_border_attr ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(ALL_DATA * data,
	   int choice,
	   int scrollamt,
	   int max_choice)
{
    int i;
    int cur_y, cur_x;

    FUNC1(data->dialog, cur_y, cur_x);

    for (i = 0; i < max_choice; i++) {
	FUNC2(data,
		   &data->items[scrollamt + i],
		   data->states,
		   data->depths[scrollamt + i],
		   i, i == choice);
    }
    (void) FUNC4(data->list);

    FUNC0(data->dialog,
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

    (void) FUNC3(data->dialog, cur_y, cur_x);
}