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
typedef  int /*<<< orphan*/  chtype ;

/* Variables and functions */
 int A_COLOR ; 
 int /*<<< orphan*/  A_NORMAL ; 
 int COLS ; 
 scalar_t__ LINES ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int itemhelp_attr ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(const char *txt)
{
    if (FUNC0(txt)) {
	chtype attr = A_NORMAL;
	int y, x;

	FUNC2(stdscr, itemhelp_attr);
	(void) FUNC6(stdscr, LINES - 1, 0);
	(void) FUNC5(stdscr);
	(void) FUNC1(' ');
	FUNC3(stdscr, txt, COLS - 1, &attr);
	if (itemhelp_attr & A_COLOR) {
	    /* fill the remainder of the line with the window's attributes */
	    FUNC4(stdscr, y, x);
	    (void) y;
	    while (x < COLS) {
		(void) FUNC1(' ');
		++x;
	    }
	}
	(void) FUNC7(stdscr);
    }
}