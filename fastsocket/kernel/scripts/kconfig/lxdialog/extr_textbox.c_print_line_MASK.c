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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int hscroll ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(WINDOW * win, int row, int width)
{
	int y, x;
	char *line;

	line = FUNC1();
	line += FUNC0(FUNC3(line), hscroll);	/* Scroll horizontally */
	FUNC7(win, row, 0);	/* move cursor to correct line */
	FUNC4(win, ' ');
	FUNC5(win, line, FUNC0(FUNC3(line), width - 2));

	FUNC2(win, y, x);
	/* Clear 'residue' of previous line */
#if OLD_NCURSES
	{
		int i;
		for (i = 0; i < width - x; i++)
			waddch(win, ' ');
	}
#else
	FUNC6(win);
#endif
}