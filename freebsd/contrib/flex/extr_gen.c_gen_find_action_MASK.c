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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ interactive ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ real_reject ; 
 scalar_t__ reject ; 
 scalar_t__ variable_trailing_context_rules ; 

void FUNC4 ()
{
	if (fullspd)
		FUNC1 ("yy_act = yy_current_state[-1].yy_nxt;");

	else if (fulltbl)
		FUNC1 ("yy_act = yy_accept[yy_current_state];");

	else if (reject) {
		FUNC1 ("yy_current_state = *--YY_G(yy_state_ptr);");
		FUNC1 ("YY_G(yy_lp) = yy_accept[yy_current_state];");

		FUNC3 ("goto find_rule; /* avoid `defined but not used' warning */");
		FUNC3 ("find_rule: /* we branch to this label when backing up */");

		FUNC1
			("for ( ; ; ) /* until we find what rule we matched */");

		FUNC2 ();

		FUNC1 ("{");

		FUNC1
			("if ( YY_G(yy_lp) && YY_G(yy_lp) < yy_accept[yy_current_state + 1] )");
		FUNC2 ();
		FUNC1 ("{");
		FUNC1 ("yy_act = yy_acclist[YY_G(yy_lp)];");

		if (variable_trailing_context_rules) {
			FUNC1
				("if ( yy_act & YY_TRAILING_HEAD_MASK ||");
			FUNC1 ("     YY_G(yy_looking_for_trail_begin) )");
			FUNC2 ();
			FUNC1 ("{");

			FUNC1
				("if ( yy_act == YY_G(yy_looking_for_trail_begin) )");
			FUNC2 ();
			FUNC1 ("{");
			FUNC1 ("YY_G(yy_looking_for_trail_begin) = 0;");
			FUNC1 ("yy_act &= ~YY_TRAILING_HEAD_MASK;");
			FUNC1 ("break;");
			FUNC1 ("}");
			FUNC0 ();

			FUNC1 ("}");
			FUNC0 ();

			FUNC1
				("else if ( yy_act & YY_TRAILING_MASK )");
			FUNC2 ();
			FUNC1 ("{");
			FUNC1
				("YY_G(yy_looking_for_trail_begin) = yy_act & ~YY_TRAILING_MASK;");
			FUNC1
				("YY_G(yy_looking_for_trail_begin) |= YY_TRAILING_HEAD_MASK;");

			if (real_reject) {
				/* Remember matched text in case we back up
				 * due to REJECT.
				 */
				FUNC1
					("YY_G(yy_full_match) = yy_cp;");
				FUNC1
					("YY_G(yy_full_state) = YY_G(yy_state_ptr);");
				FUNC1 ("YY_G(yy_full_lp) = YY_G(yy_lp);");
			}

			FUNC1 ("}");
			FUNC0 ();

			FUNC1 ("else");
			FUNC2 ();
			FUNC1 ("{");
			FUNC1 ("YY_G(yy_full_match) = yy_cp;");
			FUNC1
				("YY_G(yy_full_state) = YY_G(yy_state_ptr);");
			FUNC1 ("YY_G(yy_full_lp) = YY_G(yy_lp);");
			FUNC1 ("break;");
			FUNC1 ("}");
			FUNC0 ();

			FUNC1 ("++YY_G(yy_lp);");
			FUNC1 ("goto find_rule;");
		}

		else {
			/* Remember matched text in case we back up due to
			 * trailing context plus REJECT.
			 */
			FUNC2 ();
			FUNC1 ("{");
			FUNC1 ("YY_G(yy_full_match) = yy_cp;");
			FUNC1 ("break;");
			FUNC1 ("}");
			FUNC0 ();
		}

		FUNC1 ("}");
		FUNC0 ();

		FUNC1 ("--yy_cp;");

		/* We could consolidate the following two lines with those at
		 * the beginning, but at the cost of complaints that we're
		 * branching inside a loop.
		 */
		FUNC1 ("yy_current_state = *--YY_G(yy_state_ptr);");
		FUNC1 ("YY_G(yy_lp) = yy_accept[yy_current_state];");

		FUNC1 ("}");

		FUNC0 ();
	}

	else {			/* compressed */
		FUNC1 ("yy_act = yy_accept[yy_current_state];");

		if (interactive && !reject) {
			/* Do the guaranteed-needed backing up to figure out
			 * the match.
			 */
			FUNC1 ("if ( yy_act == 0 )");
			FUNC2 ();
			FUNC1 ("{ /* have to back up */");
			FUNC1
				("yy_cp = YY_G(yy_last_accepting_cpos);");
			FUNC1
				("yy_current_state = YY_G(yy_last_accepting_state);");
			FUNC1
				("yy_act = yy_accept[yy_current_state];");
			FUNC1 ("}");
			FUNC0 ();
		}
	}
}