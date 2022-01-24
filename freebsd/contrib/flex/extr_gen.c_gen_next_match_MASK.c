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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ fullspd ; 
 scalar_t__ fulltbl ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ gentables ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ interactive ; 
 int /*<<< orphan*/  jambase ; 
 int /*<<< orphan*/  jamstate ; 
 scalar_t__ num_backing_up ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  reject ; 
 scalar_t__ useecs ; 

void FUNC9 ()
{
	/* NOTE - changes in here should be reflected in gen_next_state() and
	 * gen_NUL_trans().
	 */
	char   *char_map = useecs ?
		"yy_ec[YY_SC_TO_UI(*yy_cp)] " : "YY_SC_TO_UI(*yy_cp)";

	char   *char_map_2 = useecs ?
		"yy_ec[YY_SC_TO_UI(*++yy_cp)] " : "YY_SC_TO_UI(*++yy_cp)";

	if (fulltbl) {
		if (gentables)
			FUNC4
				("while ( (yy_current_state = yy_nxt[yy_current_state][ %s ]) > 0 )",
				 char_map);
		else
			FUNC4
				("while ( (yy_current_state = yy_nxt[yy_current_state*YY_NXT_LOLEN +  %s ]) > 0 )",
				 char_map);

		FUNC6 ();

		if (num_backing_up > 0) {
			FUNC5 ("{");
			FUNC1 ();
			FUNC8 ('\n');
		}

		FUNC5 ("++yy_cp;");

		if (num_backing_up > 0)

			FUNC5 ("}");

		FUNC3 ();

		FUNC8 ('\n');
		FUNC5 ("yy_current_state = -yy_current_state;");
	}

	else if (fullspd) {
		FUNC5 ("{");
		FUNC5
			("yyconst struct yy_trans_info *yy_trans_info;\n");
		FUNC5 ("YY_CHAR yy_c;\n");
		FUNC4 ("for ( yy_c = %s;", char_map);
		FUNC5
			("      (yy_trans_info = &yy_current_state[(unsigned int) yy_c])->");
		FUNC5 ("yy_verify == yy_c;");
		FUNC4 ("      yy_c = %s )", char_map_2);

		FUNC6 ();

		if (num_backing_up > 0)
			FUNC5 ("{");

		FUNC5 ("yy_current_state += yy_trans_info->yy_nxt;");

		if (num_backing_up > 0) {
			FUNC8 ('\n');
			FUNC1 ();
			FUNC5 ("}");
		}

		FUNC3 ();
		FUNC5 ("}");
	}

	else {			/* compressed */
		FUNC5 ("do");

		FUNC6 ();
		FUNC5 ("{");

		FUNC2 (false);

		FUNC5 ("++yy_cp;");


		FUNC5 ("}");
		FUNC3 ();

		FUNC0 ();

		if (interactive)
			FUNC7 ("while ( yy_base[yy_current_state] != %d );\n", jambase);
		else
			FUNC7 ("while ( yy_current_state != %d );\n",
				 jamstate);

		if (!reject && !interactive) {
			/* Do the guaranteed-needed backing up to figure out
			 * the match.
			 */
			FUNC5
				("yy_cp = YY_G(yy_last_accepting_cpos);");
			FUNC5
				("yy_current_state = YY_G(yy_last_accepting_state);");
		}
	}
}