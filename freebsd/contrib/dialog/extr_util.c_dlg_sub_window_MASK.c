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
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int,int,int) ; 

WINDOW *
FUNC4(WINDOW *parent, int height, int width, int y, int x)
{
    WINDOW *win;

    if ((win = FUNC3(parent, height, width, y, x)) == 0) {
	FUNC1("Can't make sub-window at (%d,%d), size (%d,%d).\n",
		    y, x, height, width);
    }

    FUNC0(parent, win);
    (void) FUNC2(win, TRUE);
    return win;
}