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
struct TYPE_3__ {int item_no; scalar_t__ items; int /*<<< orphan*/ * list; } ;
typedef  int /*<<< orphan*/  MY_DATA ;
typedef  TYPE_1__ ALL_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(ALL_DATA * all, int row, int selected)
{
    MY_DATA *data = all->list + selected;
    int result = -1;
    int n;
    for (n = 0; n < all->item_no; ++n) {
	FUNC0(("!... row %d: %p vs choice %d: %p\n",
	       row, FUNC1(data, row),
	       n, all->items + n));
	if (FUNC1(data, row) == all->items + n) {
	    result = n;
	    break;
	}
    }
    FUNC0(("! row2index(row %d, %s) = %d\n", row, FUNC2(selected), result));
    return result;
}