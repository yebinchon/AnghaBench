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
 int /*<<< orphan*/  COLS ; 
 int /*<<< orphan*/  CONTROL_KEYS ; 
 int LINES ; 
 void* TRUE ; 
 void* clear_com_win ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  info_type ; 
 int /*<<< orphan*/  info_win ; 
 void* info_window ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int last_line ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  point ; 
 int /*<<< orphan*/  scr_vert ; 
 int /*<<< orphan*/  text_win ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void 
FUNC10()
{
	if (info_window)
		return;
	last_line = LINES - 8;
	FUNC1(text_win);
	text_win = FUNC6((LINES - 7), COLS, 6, 0);
	FUNC3(text_win, TRUE);
	FUNC2(text_win, TRUE);
	FUNC8(text_win);
	info_window = TRUE;
	info_win = FUNC6(6, COLS, 0, 0);
	FUNC8(info_win);
	info_type = CONTROL_KEYS;
	FUNC4(FUNC5(scr_vert, last_line), point);
	FUNC0(info_win, TRUE);
	FUNC7();
	FUNC9(text_win);
	clear_com_win = TRUE;
}