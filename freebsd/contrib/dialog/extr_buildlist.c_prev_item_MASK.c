#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ALL_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int
FUNC4(ALL_DATA * all, int choice, int selected)
{
    int result = choice;
    int row = FUNC1(all, choice, selected);
    if (row > 0) {
	row--;
	result = FUNC3(all, row, selected);
    }
    FUNC0(("! prev_item choice %d, %s = %d\n", choice, FUNC2(selected), result));
    return result;
}