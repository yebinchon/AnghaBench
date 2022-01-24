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
 scalar_t__ COMMANDS ; 
 scalar_t__ CONTROL_KEYS ; 
 int /*<<< orphan*/ * command_strings ; 
 int /*<<< orphan*/ * control_keys ; 
 int /*<<< orphan*/ * emacs_control_keys ; 
 scalar_t__ emacs_keys_mode ; 
 scalar_t__ info_type ; 
 int /*<<< orphan*/  info_win ; 
 int /*<<< orphan*/  info_window ; 
 int /*<<< orphan*/  nohighlight ; 
 int /*<<< orphan*/  separator ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void 
FUNC7()
{
	int counter;

	if (!info_window)
		return;

	FUNC2(info_win);
	for (counter = 0; counter < 5; counter++)
	{
		FUNC3(info_win, counter, 0);
		FUNC1(info_win);
		if (info_type == CONTROL_KEYS)
			FUNC0(info_win, (emacs_keys_mode) ? 
			  emacs_control_keys[counter] : control_keys[counter]);
		else if (info_type == COMMANDS)
			FUNC0(info_win, command_strings[counter]);
	}
	FUNC3(info_win, 5, 0);
	if (!nohighlight)
		FUNC6(info_win);
	FUNC0(info_win, separator);
	FUNC5(info_win);
	FUNC4(info_win);
}