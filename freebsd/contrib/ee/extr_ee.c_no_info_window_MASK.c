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
 scalar_t__ FALSE ; 
 scalar_t__ LINES ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  clear_com_win ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  info_win ; 
 scalar_t__ info_window ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ last_line ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  point ; 
 int /*<<< orphan*/  scr_vert ; 
 int /*<<< orphan*/  text_win ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void 
FUNC7()
{
	if (!info_window)
		return;
	FUNC1(info_win);
	FUNC1(text_win);
	info_window = FALSE;
	last_line = LINES - 2;
	text_win = FUNC5((LINES - 1), COLS, 0, 0);
	FUNC3(text_win, TRUE);
	FUNC2(text_win, TRUE);
	FUNC0(text_win, TRUE);
	FUNC4(scr_vert, point);
	FUNC6(text_win);
	clear_com_win = TRUE;
}