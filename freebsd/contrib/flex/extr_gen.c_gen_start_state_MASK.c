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
 scalar_t__ bol_needed ; 
 scalar_t__ fullspd ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ reject ; 

void FUNC2 ()
{
	if (fullspd) {
		if (bol_needed) {
			FUNC0
				("yy_current_state = yy_start_state_list[YY_G(yy_start) + YY_AT_BOL()];");
		}
		else
			FUNC0
				("yy_current_state = yy_start_state_list[YY_G(yy_start)];");
	}

	else {
		FUNC0 ("yy_current_state = YY_G(yy_start);");

		if (bol_needed)
			FUNC0 ("yy_current_state += YY_AT_BOL();");

		if (reject) {
			/* Set up for storing up states. */
			FUNC1 ("m4_ifdef( [[M4_YY_USES_REJECT]],\n[[");
			FUNC0
				("YY_G(yy_state_ptr) = YY_G(yy_state_buf);");
			FUNC0
				("*YY_G(yy_state_ptr)++ = yy_current_state;");
			FUNC1 ("]])");
		}
	}
}