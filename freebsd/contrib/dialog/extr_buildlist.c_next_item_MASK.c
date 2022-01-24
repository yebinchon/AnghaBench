#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * list; } ;
typedef  int /*<<< orphan*/  MY_DATA ;
typedef  TYPE_1__ ALL_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (TYPE_1__*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (TYPE_1__*,int,int) ; 

__attribute__((used)) static int
FUNC5(ALL_DATA * all, int choice, int selected)
{
    MY_DATA *data = all->list + selected;
    int result = choice;
    int row = FUNC1(all, choice, selected);
    FUNC0(("! given item %d, testing next-item on row %d\n", choice, row + 1));
    if (FUNC2(data, row + 1)) {
	result = FUNC4(all, row + 1, selected);
    }
    FUNC0(("! next_item(%d, %s) ->%d\n", choice, FUNC3(selected), result));
    return result;
}