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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ num_backing_up ; 
 scalar_t__ reject ; 

void FUNC3 ()
{
	if (reject || num_backing_up == 0)
		return;

	if (fullspd)
		FUNC1 ("if ( yy_current_state[-1].yy_nxt )");
	else
		FUNC1 ("if ( yy_accept[yy_current_state] )");

	FUNC2 ();
	FUNC1 ("{");
	FUNC1 ("YY_G(yy_last_accepting_state) = yy_current_state;");
	FUNC1 ("YY_G(yy_last_accepting_cpos) = yy_cp;");
	FUNC1 ("}");
	FUNC0 ();
}