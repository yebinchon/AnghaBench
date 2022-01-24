#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ win; int offset; int length; int choice; int /*<<< orphan*/  par; scalar_t__* data; } ;
typedef  TYPE_1__ LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,long,long,long,long,int,scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  item_attr ; 
 int /*<<< orphan*/  item_selected_attr ; 
 int /*<<< orphan*/  menubox_border2_attr ; 
 int /*<<< orphan*/  menubox_border_attr ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void
FUNC9(LIST * list)
{
    int n;
    int x;
    int y;
    int top;
    int bottom;

    if (list->win != 0) {
	FUNC0(list->win, FUNC4(list->win), FUNC3(list->win), item_attr);
	for (n = list->offset; n < list->length && list->data[n]; n++) {
	    y = n - list->offset;
	    if (y >= FUNC4(list->win))
		break;
	    (void) FUNC7(list->win, y, 0);
	    if (n == list->choice)
		FUNC1(list->win, item_selected_attr);
	    (void) FUNC6(list->win, list->data[n]);
	    FUNC1(list->win, item_attr);
	}
	FUNC1(list->win, item_attr);

	FUNC5(list->win, y, x);

	top = y - 1;
	bottom = y + FUNC4(list->win);
	FUNC2(list->par,
			   (long) list->offset,
			   (long) list->offset,
			   (long) (list->offset + FUNC4(list->win)),
			   (long) (list->length),
			   x + 1,
			   x + FUNC3(list->win),
			   top,
			   bottom,
			   menubox_border2_attr,
			   menubox_border_attr);

	(void) FUNC7(list->win, list->choice - list->offset, 0);
	(void) FUNC8(list->win);
    }
}