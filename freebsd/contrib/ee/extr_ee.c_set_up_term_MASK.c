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

/* Variables and functions */
 int /*<<< orphan*/  A_NC_BIG5 ; 
 int COLS ; 
 int /*<<< orphan*/  CONTROL_KEYS ; 
 scalar_t__ FALSE ; 
 int LINES ; 
 scalar_t__ TRUE ; 
 void* com_win ; 
 scalar_t__ curses_initialized ; 
 scalar_t__ ee_chinese ; 
 void* help_win ; 
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__) ; 
 int /*<<< orphan*/  info_type ; 
 void* info_win ; 
 scalar_t__ info_window ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__) ; 
 int last_col ; 
 int last_line ; 
 int local_COLS ; 
 int local_LINES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 void* stdscr ; 
 void* text_win ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 

void 
FUNC12()		/* set up the terminal for operating with ae	*/
{
	if (!curses_initialized)
	{
		FUNC1();
		FUNC9();
		FUNC5();
		FUNC8();
		FUNC6();
		curses_initialized = TRUE;
	}

	if (((LINES > 15) && (COLS >= 80)) && info_window)
		last_line = LINES - 8;
	else
	{
		info_window = FALSE;
		last_line = LINES - 2;
	}

	FUNC0(stdscr, TRUE);
	com_win = FUNC4(1, COLS, (LINES - 1), 0);
	FUNC2(com_win, TRUE);
	FUNC0(com_win, TRUE);
	FUNC11(com_win);
	if (!info_window)
		text_win = FUNC4((LINES - 1), COLS, 0, 0);
	else
		text_win = FUNC4((LINES - 7), COLS, 6, 0);
	FUNC2(text_win, TRUE);
	FUNC0(text_win, TRUE);
	FUNC11(text_win);
	help_win = FUNC4((LINES - 1), COLS, 0, 0);
	FUNC2(help_win, TRUE);
	FUNC0(help_win, TRUE);
	if (info_window)
	{
		info_type = CONTROL_KEYS;
		info_win = FUNC4(6, COLS, 0, 0);
		FUNC10(info_win);
		FUNC7();
	}

	last_col = COLS - 1;
	local_LINES = LINES;
	local_COLS = COLS;

#ifdef NCURSE
	if (ee_chinese)
		nc_setattrib(A_NC_BIG5);
#endif /* NCURSE */

}