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
struct sigaction {void (* sa_handler ) (int) ;scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JOB ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void FUNC2 (int) ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int make_suspended ; 
 int /*<<< orphan*/  FUNC6 (int,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(int signo)
{
    sigset_t nmask, omask;
    struct sigaction act;

    /* Suppress job started/continued messages */
    make_suspended = 1;

    /* Pass the signal onto every job */
    FUNC1(signo);

    /*
     * Send ourselves the signal now we've given the message to everyone else.
     * Note we block everything else possible while we're getting the signal.
     * This ensures that all our jobs get continued when we wake up before
     * we take any other signal.
     */
    FUNC9(&nmask);
    FUNC7(&nmask, signo);
    (void)FUNC10(SIG_SETMASK, &nmask, &omask);

    act.sa_handler = SIG_DFL;
    FUNC8(&act.sa_mask);
    act.sa_flags = 0;
    (void)FUNC6(signo, &act, NULL);

    if (FUNC0(JOB)) {
	(void)FUNC3(debug_file,
		       "JobPassSig passing signal %d to self.\n", signo);
    }

    (void)FUNC5(FUNC4(), signo);

    /*
     * We've been continued.
     *
     * A whole host of signals continue to happen!
     * SIGCHLD for any processes that actually suspended themselves.
     * SIGCHLD for any processes that exited while we were alseep.
     * The SIGCONT that actually caused us to wakeup.
     *
     * Since we defer passing the SIGCONT on to our children until
     * the main processing loop, we can be sure that all the SIGCHLD
     * events will have happened by then - and that the waitpid() will
     * collect the child 'suspended' events.
     * For correct sequencing we just need to ensure we process the
     * waitpid() before passign on the SIGCONT.
     *
     * In any case nothing else is needed here.
     */

    /* Restore handler and signal mask */
    act.sa_handler = JobPassSig_suspend;
    (void)FUNC6(signo, &act, NULL);
    (void)FUNC10(SIG_SETMASK, &omask, NULL);
}