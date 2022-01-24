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
struct stackmark {int dummy; } ;

/* Variables and functions */
 int NSIG ; 
 int SIGCHLD ; 
 int evalskip ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int exitstatus ; 
 scalar_t__* gotsig ; 
 int /*<<< orphan*/  ignore_sigchld ; 
 int /*<<< orphan*/  in_dotrap ; 
 int last_trapsig ; 
 scalar_t__ pendingsig ; 
 scalar_t__ pendingsig_waitcmd ; 
 int /*<<< orphan*/  FUNC1 (struct stackmark*) ; 
 int /*<<< orphan*/  FUNC2 (struct stackmark*) ; 
 int skipcount ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__* trap ; 

void
FUNC4(void)
{
	struct stackmark smark;
	int i;
	int savestatus, prev_evalskip, prev_skipcount;

	in_dotrap++;
	for (;;) {
		pendingsig = 0;
		pendingsig_waitcmd = 0;
		for (i = 1; i < NSIG; i++) {
			if (gotsig[i]) {
				gotsig[i] = 0;
				if (trap[i]) {
					/*
					 * Ignore SIGCHLD to avoid infinite
					 * recursion if the trap action does
					 * a fork.
					 */
					if (i == SIGCHLD)
						ignore_sigchld++;

					/*
					 * Backup current evalskip
					 * state and reset it before
					 * executing a trap, so that the
					 * trap is not disturbed by an
					 * ongoing break/continue/return
					 * statement.
					 */
					prev_evalskip  = evalskip;
					prev_skipcount = skipcount;
					evalskip = 0;

					last_trapsig = i;
					savestatus = exitstatus;
					FUNC2(&smark);
					FUNC0(FUNC3(trap[i]), 0);
					FUNC1(&smark);

					/*
					 * If such a command was not
					 * already in progress, allow a
					 * break/continue/return in the
					 * trap action to have an effect
					 * outside of it.
					 */
					if (evalskip == 0 ||
					    prev_evalskip != 0) {
						evalskip  = prev_evalskip;
						skipcount = prev_skipcount;
						exitstatus = savestatus;
					}

					if (i == SIGCHLD)
						ignore_sigchld--;
				}
				break;
			}
		}
		if (i >= NSIG)
			break;
	}
	in_dotrap--;
}