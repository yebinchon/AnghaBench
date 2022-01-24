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
 scalar_t__ fullspd ; 
 scalar_t__ fulltbl ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ num_backing_up ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ reject ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3 ()
{
	if (reject || num_backing_up == 0)
		return;

	FUNC2 (3);

	FUNC0 ("case 0: /* must back up */");
	FUNC0 ("/* undo the effects of YY_DO_BEFORE_ACTION */");
	FUNC0 ("*yy_cp = YY_G(yy_hold_char);");

	if (fullspd || fulltbl)
		FUNC0 ("yy_cp = YY_G(yy_last_accepting_cpos) + 1;");
	else
		/* Backing-up info for compressed tables is taken \after/
		 * yy_cp has been incremented for the next state.
		 */
		FUNC0 ("yy_cp = YY_G(yy_last_accepting_cpos);");

	FUNC0 ("yy_current_state = YY_G(yy_last_accepting_state);");
	FUNC0 ("goto yy_find_action;");
	FUNC1 ('\n');

	FUNC2 (0);
}