#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int dfaacc_state; } ;

/* Variables and functions */
 int ACTION_POSITION ; 
 int EOB_POSITION ; 
 int* base ; 
 int* chk ; 
 int current_max_dfas ; 
 int current_max_xpairs ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* dfaacc ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ gentables ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int lastdfa ; 
 int lastsc ; 
 int num_rules ; 
 int numecs ; 
 size_t* nxt ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int tblend ; 
 int /*<<< orphan*/  FUNC6 (int,size_t) ; 
 scalar_t__ useecs ; 

void FUNC7 ()
{
	int i;
	int     end_of_buffer_action = num_rules + 1;

	/* Table of verify for transition and offset to next state. */
	if (gentables)
		FUNC4 ("static yyconst struct yy_trans_info yy_transition[%d] =\n    {\n", tblend + numecs + 1);
	else
		FUNC5 ("static yyconst struct yy_trans_info *yy_transition = 0;");

	/* We want the transition to be represented as the offset to the
	 * next state, not the actual state number, which is what it currently
	 * is.  The offset is base[nxt[i]] - (base of current state)].  That's
	 * just the difference between the starting points of the two involved
	 * states (to - from).
	 *
	 * First, though, we need to find some way to put in our end-of-buffer
	 * flags and states.  We do this by making a state with absolutely no
	 * transitions.  We put it at the end of the table.
	 */

	/* We need to have room in nxt/chk for two more slots: One for the
	 * action and one for the end-of-buffer transition.  We now *assume*
	 * that we're guaranteed the only character we'll try to index this
	 * nxt/chk pair with is EOB, i.e., 0, so we don't have to make sure
	 * there's room for jam entries for other characters.
	 */

	while (tblend + 2 >= current_max_xpairs)
		FUNC1 ();

	while (lastdfa + 1 >= current_max_dfas)
		FUNC3 ();

	base[lastdfa + 1] = tblend + 2;
	nxt[tblend + 1] = end_of_buffer_action;
	chk[tblend + 1] = numecs + 1;
	chk[tblend + 2] = 1;	/* anything but EOB */

	/* So that "make test" won't show arb. differences. */
	nxt[tblend + 2] = 0;

	/* Make sure every state has an end-of-buffer transition and an
	 * action #.
	 */
	for (i = 0; i <= lastdfa; ++i) {
		int     anum = dfaacc[i].dfaacc_state;
		int     offset = base[i];

		chk[offset] = EOB_POSITION;
		chk[offset - 1] = ACTION_POSITION;
		nxt[offset - 1] = anum;	/* action number */
	}

	for (i = 0; i <= tblend; ++i) {
		if (chk[i] == EOB_POSITION)
			FUNC6 (0, base[lastdfa + 1] - i);

		else if (chk[i] == ACTION_POSITION)
			FUNC6 (0, nxt[i]);

		else if (chk[i] > numecs || chk[i] == 0)
			FUNC6 (0, 0);	/* unused slot */

		else		/* verify, transition */
			FUNC6 (chk[i],
					       base[nxt[i]] - (i -
							       chk[i]));
	}


	/* Here's the final, end-of-buffer state. */
	FUNC6 (chk[tblend + 1], nxt[tblend + 1]);
	FUNC6 (chk[tblend + 2], nxt[tblend + 2]);

	if (gentables)
		FUNC5 ("    };\n");

	/* Table of pointers to start states. */
	if (gentables)
		FUNC4 ("static yyconst struct yy_trans_info *yy_start_state_list[%d] =\n", lastsc * 2 + 1);
	else
		FUNC5 ("static yyconst struct yy_trans_info **yy_start_state_list =0;");

	if (gentables) {
		FUNC5 ("    {");

		for (i = 0; i <= lastsc * 2; ++i)
			FUNC4 ("    &yy_transition[%d],\n", base[i]);

		FUNC0 ();
	}

	if (useecs)
		FUNC2 ();
}