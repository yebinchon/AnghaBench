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
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int /*<<< orphan*/  dialog_attr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(WINDOW *win,
	    char **list,
	    int show_row,
	    int firstrow,
	    int lastrow,
	    int chr_offset)
{
    int limit = FUNC3(win);
    int row;

    FUNC1(win, FUNC3(win), FUNC2(win), dialog_attr);
    if (lastrow - firstrow >= limit)
	lastrow = firstrow + limit;
    for (row = firstrow; row < lastrow; ++row) {
	if (!FUNC0(win, list[row],
			 row, show_row, firstrow,
			 (row == show_row) ? chr_offset : 0))
	    break;
    }
}