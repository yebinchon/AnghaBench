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
 scalar_t__ COLS ; 
 scalar_t__ LINES ; 
 int /*<<< orphan*/  com_win ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  help_win ; 
 int /*<<< orphan*/  info_win ; 
 scalar_t__ info_window ; 
 scalar_t__ local_COLS ; 
 scalar_t__ local_LINES ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  text_win ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void 
FUNC4()
{
	if ((LINES == local_LINES) && (COLS == local_COLS))
		return;

	if (info_window)
		FUNC0(info_win);
	FUNC0(text_win);
	FUNC0(com_win);
	FUNC0(help_win);
	FUNC2();
	FUNC1();
	FUNC3(text_win);
}