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
struct TYPE_4__ {int /*<<< orphan*/ * list; } ;
typedef  int /*<<< orphan*/  MY_DATA ;
typedef  TYPE_1__ ALL_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*,int,int) ; 

__attribute__((used)) static int
FUNC4(ALL_DATA * all, int selected)
{
    MY_DATA *data = all->list + selected;
    int result = -1;
    int n;

    for (n = 0; FUNC1(data, n) != 0; ++n) {
	result = n;
    }
    if (result >= 0) {
	result = FUNC3(all, result, selected);
    }
    FUNC0(("! last_item %s = %d\n", FUNC2(selected), result));
    return result;
}