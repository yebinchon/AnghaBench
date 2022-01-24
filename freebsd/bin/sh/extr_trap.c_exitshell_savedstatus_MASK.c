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
struct jmploc {int /*<<< orphan*/  loc; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FORCEINTON ; 
 int SIGSTOP ; 
 int SIGTSTP ; 
 int SIGTTIN ; 
 int SIGTTOU ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ evalskip ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exiting ; 
 int exiting_exitstatus ; 
 int exitstatus ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct jmploc* handler ; 
 scalar_t__ in_dotrap ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int last_trapsig ; 
 int oexitstatus ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char** trap ; 

void
FUNC11(void)
{
	struct jmploc loc1, loc2;
	char *p;
	int sig = 0;
	sigset_t sigs;

	if (!exiting) {
		if (in_dotrap && last_trapsig) {
			sig = last_trapsig;
			exiting_exitstatus = sig + 128;
		} else
			exiting_exitstatus = oexitstatus;
	}
	exitstatus = oexitstatus = exiting_exitstatus;
	if (!FUNC5(loc1.loc)) {
		handler = &loc1;
		if ((p = trap[0]) != NULL && *p != '\0') {
			/*
			 * Reset evalskip, or the trap on EXIT could be
			 * interrupted if the last command was a "return".
			 */
			evalskip = 0;
			trap[0] = NULL;
			FORCEINTON;
			FUNC1(p, 0);
		}
	}
	if (!FUNC5(loc2.loc)) {
		handler = &loc2;		/* probably unnecessary */
		FORCEINTON;
		FUNC2();
#if JOBS
		setjobctl(0);
#endif
	}
	if (sig != 0 && sig != SIGSTOP && sig != SIGTSTP && sig != SIGTTIN &&
	    sig != SIGTTOU) {
		FUNC9(sig, SIG_DFL);
		FUNC8(&sigs);
		FUNC7(&sigs, sig);
		FUNC10(SIG_UNBLOCK, &sigs, NULL);
		FUNC4(FUNC3(), sig);
		/* If the default action is to ignore, fall back to _exit(). */
	}
	FUNC0(exiting_exitstatus);
}