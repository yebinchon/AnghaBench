#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_7__ {scalar_t__ check_x; TYPE_1__* list; } ;
struct TYPE_6__ {int top_index; scalar_t__ box_y; scalar_t__ box_x; int /*<<< orphan*/ * win; } ;
typedef  TYPE_1__ MY_DATA ;
typedef  TYPE_2__ ALL_DATA ;

/* Variables and functions */
 int KEY_MAX ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long,long,long,long,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC7 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  menubox_border2_attr ; 
 int /*<<< orphan*/  menubox_border_attr ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC11(ALL_DATA * all,
	   int choice)
{
    int selected;
    int cur_y, cur_x;
    WINDOW *dialog = FUNC9(all->list[0].win);

    FUNC1(("! print_both %d\n", choice));
    FUNC6(dialog, cur_y, cur_x);
    for (selected = 0; selected < 2; ++selected) {
	MY_DATA *data = all->list + selected;
	WINDOW *win = data->win;
	int thumb_top = FUNC7(all, data->top_index, selected);
	int thumb_max = FUNC7(all, -1, selected);
	int thumb_end = thumb_top + FUNC5(win);

	FUNC8(all, choice, selected);

	FUNC3(selected * KEY_MAX);
	FUNC2(dialog,
			   (long) (data->top_index),
			   (long) (thumb_top),
			   (long) FUNC0(thumb_end, thumb_max),
			   (long) thumb_max,
			   data->box_x + all->check_x,
			   data->box_x + FUNC4(win),
			   data->box_y,
			   data->box_y + FUNC5(win) + 1,
			   menubox_border2_attr,
			   menubox_border_attr);
    }
    (void) FUNC10(dialog, cur_y, cur_x);
    FUNC3(0);
}