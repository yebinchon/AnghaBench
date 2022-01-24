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
typedef  int /*<<< orphan*/  NUL_ec_str ;

/* Variables and functions */
 int NUL_ec ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ fullspd ; 
 scalar_t__ fulltbl ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ gentables ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int jamstate ; 
 scalar_t__ nultrans ; 
 scalar_t__ num_backing_up ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 scalar_t__ reject ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 

void FUNC9 ()
{				/* NOTE - changes in here should be reflected in gen_next_match() */
	/* Only generate a definition for "yy_cp" if we'll generate code
	 * that uses it.  Otherwise lint and the like complain.
	 */
	int     need_backing_up = (num_backing_up > 0 && !reject);

	if (need_backing_up && (!nultrans || fullspd || fulltbl))
		/* We're going to need yy_cp lying around for the call
		 * below to gen_backing_up().
		 */
		FUNC4 ("char *yy_cp = YY_G(yy_c_buf_p);");

	FUNC7 ('\n');

	if (nultrans) {
		FUNC4
			("yy_current_state = yy_NUL_trans[yy_current_state];");
		FUNC4 ("yy_is_jam = (yy_current_state == 0);");
	}

	else if (fulltbl) {
		FUNC0 ();
		if (gentables)
			FUNC6 ("yy_current_state = yy_nxt[yy_current_state][%d];\n", NUL_ec);
		else
			FUNC6 ("yy_current_state = yy_nxt[yy_current_state*YY_NXT_LOLEN + %d];\n", NUL_ec);
		FUNC4 ("yy_is_jam = (yy_current_state <= 0);");
	}

	else if (fullspd) {
		FUNC0 ();
		FUNC6 ("int yy_c = %d;\n", NUL_ec);

		FUNC4
			("yyconst struct yy_trans_info *yy_trans_info;\n");
		FUNC4
			("yy_trans_info = &yy_current_state[(unsigned int) yy_c];");
		FUNC4 ("yy_current_state += yy_trans_info->yy_nxt;");

		FUNC4
			("yy_is_jam = (yy_trans_info->yy_verify != yy_c);");
	}

	else {
		char    NUL_ec_str[20];

		FUNC8 (NUL_ec_str, sizeof(NUL_ec_str), "%d", NUL_ec);
		FUNC2 (NUL_ec_str);

		FUNC0 ();
		FUNC6 ("yy_is_jam = (yy_current_state == %d);\n",
			 jamstate);

		if (reject) {
			/* Only stack this state if it's a transition we
			 * actually make.  If we stack it on a jam, then
			 * the state stack and yy_c_buf_p get out of sync.
			 */
			FUNC4 ("if ( ! yy_is_jam )");
			FUNC5 ();
			FUNC4
				("*YY_G(yy_state_ptr)++ = yy_current_state;");
			FUNC3 ();
		}
	}

	/* If we've entered an accepting state, back up; note that
	 * compressed tables have *already* done such backing up, so
	 * we needn't bother with it again.
	 */
	if (need_backing_up && (fullspd || fulltbl)) {
		FUNC7 ('\n');
		FUNC4 ("if ( ! yy_is_jam )");
		FUNC5 ();
		FUNC4 ("{");
		FUNC1 ();
		FUNC4 ("}");
		FUNC3 ();
	}
}