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
 int /*<<< orphan*/  COMMANDS ; 
 int /*<<< orphan*/  CONTROL_KEYS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  com_win ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  command_str ; 
 int /*<<< orphan*/  commands ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ horiz_offset ; 
 int /*<<< orphan*/  info_type ; 
 int /*<<< orphan*/  non_unique_cmd_msg ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ scr_horz ; 
 int /*<<< orphan*/  scr_vert ; 
 int /*<<< orphan*/  text_win ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unkn_cmd_str ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void 
FUNC9()
{
	char *cmd_str;
	int result;

	info_type = COMMANDS;
	FUNC3();
	cmd_str = FUNC2(command_str, TRUE);
	if ((result = FUNC4(cmd_str, commands)) != 1)
	{
		FUNC5(com_win);
		FUNC6(com_win, 0, 0);
		if (result == 0)
			FUNC7(com_win, unkn_cmd_str, cmd_str);
		else
			FUNC7(com_win, non_unique_cmd_msg);

		FUNC8(com_win);

		info_type = CONTROL_KEYS;
		FUNC3();

		if (cmd_str != NULL)
			FUNC1(cmd_str);
		return;
	}
	FUNC0(cmd_str);
	FUNC8(com_win);
	FUNC6(text_win, scr_vert, (scr_horz - horiz_offset));
	info_type = CONTROL_KEYS;
	FUNC3();
	if (cmd_str != NULL)
		FUNC1(cmd_str);
}