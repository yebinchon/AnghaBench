#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct signal_struct {int flags; scalar_t__ group_stop_count; } ;
struct sighand_struct {int /*<<< orphan*/  siglock; struct k_sigaction* action; } ;
struct pt_regs {int dummy; } ;
struct TYPE_11__ {scalar_t__ sa_handler; int sa_flags; } ;
struct k_sigaction {TYPE_1__ sa; } ;
struct TYPE_12__ {int /*<<< orphan*/  si_signo; } ;
typedef  TYPE_2__ siginfo_t ;
struct TYPE_13__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  blocked; int /*<<< orphan*/  group_leader; struct signal_struct* signal; struct sighand_struct* sighand; } ;

/* Variables and functions */
 int CLD_CONTINUED ; 
 int CLD_STOPPED ; 
 int /*<<< orphan*/  PF_SIGNALED ; 
 int SA_ONESHOT ; 
 int SIGKILL ; 
 int SIGNAL_CLD_MASK ; 
 int SIGNAL_STOP_CONTINUED ; 
 int SIGNAL_UNKILLABLE ; 
 int SIGSTOP ; 
 scalar_t__ SIG_DFL ; 
 scalar_t__ SIG_IGN ; 
 TYPE_3__* current ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 scalar_t__ print_fatal_signals ; 
 int FUNC8 (int,TYPE_2__*,struct pt_regs*,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 int /*<<< orphan*/  FUNC17 (int,TYPE_2__*,struct k_sigaction*) ; 
 int FUNC18 (TYPE_3__*,struct pt_regs*,TYPE_2__*,struct k_sigaction*) ; 
 int FUNC19 (int,int) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ FUNC21 (int) ; 

int FUNC22(siginfo_t *info, struct k_sigaction *return_ka,
			  struct pt_regs *regs, void *cookie)
{
	struct sighand_struct *sighand = current->sighand;
	struct signal_struct *signal = current->signal;
	int signr;

relock:
	/*
	 * We'll jump back here after any time we were stopped in TASK_STOPPED.
	 * While in TASK_STOPPED, we were considered "frozen enough".
	 * Now that we woke up, it's crucial if we're supposed to be
	 * frozen that we freeze now before running anything substantial.
	 */
	FUNC20();

	FUNC15(&sighand->siglock);
	/*
	 * Every stopped thread goes here after wakeup. Check to see if
	 * we should notify the parent, prepare_signal(SIGCONT) encodes
	 * the CLD_ si_code into SIGNAL_CLD_MASK bits.
	 */
	if (FUNC21(signal->flags & SIGNAL_CLD_MASK)) {
		int why = (signal->flags & SIGNAL_STOP_CONTINUED)
				? CLD_CONTINUED : CLD_STOPPED;
		signal->flags &= ~SIGNAL_CLD_MASK;

		why = FUNC19(why, CLD_CONTINUED);
		FUNC16(&sighand->siglock);

		if (why) {
			FUNC9(&tasklist_lock);
			FUNC3(current->group_leader, why);
			FUNC10(&tasklist_lock);
		}
		goto relock;
	}

	for (;;) {
		struct k_sigaction *ka;
		/*
		 * Tracing can induce an artifical signal and choose sigaction.
		 * The return value in @signr determines the default action,
		 * but @info->si_signo is the signal number we will report.
		 */
		signr = FUNC18(current, regs, info, return_ka);
		if (FUNC21(signr < 0))
			goto relock;
		if (FUNC21(signr != 0))
			ka = return_ka;
		else {
			if (FUNC21(signal->group_stop_count > 0) &&
			    FUNC4(0))
				goto relock;

			signr = FUNC0(current, &current->blocked,
					       info);

			if (!signr)
				break; /* will return 0 */

			if (signr != SIGKILL) {
				signr = FUNC8(signr, info,
						      regs, cookie);
				if (!signr)
					continue;
			}

			ka = &sighand->action[signr-1];
		}

		/* Trace actually delivered signals. */
		FUNC17(signr, info, ka);

		if (ka->sa.sa_handler == SIG_IGN) /* Do nothing.  */
			continue;
		if (ka->sa.sa_handler != SIG_DFL) {
			/* Run the handler.  */
			*return_ka = *ka;

			if (ka->sa.sa_flags & SA_ONESHOT)
				ka->sa.sa_handler = SIG_DFL;

			break; /* will return non-zero "signr" value */
		}

		/*
		 * Now we are doing the default action for this signal.
		 */
		if (FUNC12(signr)) /* Default is nothing. */
			continue;

		/*
		 * Global init gets no signals it doesn't want.
		 * Container-init gets no signals it doesn't want from same
		 * container.
		 *
		 * Note that if global/container-init sees a sig_kernel_only()
		 * signal here, the signal must have been generated internally
		 * or must have come from an ancestor namespace. In either
		 * case, the signal cannot be dropped.
		 */
		if (FUNC21(signal->flags & SIGNAL_UNKILLABLE) &&
				!FUNC13(signr))
			continue;

		if (FUNC14(signr)) {
			/*
			 * The default action is to stop all threads in
			 * the thread group.  The job control signals
			 * do nothing in an orphaned pgrp, but SIGSTOP
			 * always works.  Note that siglock needs to be
			 * dropped during the call to is_orphaned_pgrp()
			 * because of lock ordering with tasklist_lock.
			 * This allows an intervening SIGCONT to be posted.
			 * We need to check for that and bail out if necessary.
			 */
			if (signr != SIGSTOP) {
				FUNC16(&sighand->siglock);

				/* signals can be posted during this window */

				if (FUNC5())
					goto relock;

				FUNC15(&sighand->siglock);
			}

			if (FUNC6(FUNC4(info->si_signo))) {
				/* It released the siglock.  */
				goto relock;
			}

			/*
			 * We didn't actually stop, due to a race
			 * with SIGCONT or something like that.
			 */
			continue;
		}

		FUNC16(&sighand->siglock);

		/*
		 * Anything else is fatal, maybe with a core dump.
		 */
		current->flags |= PF_SIGNALED;

		if (FUNC11(signr)) {
			if (print_fatal_signals)
				FUNC7(regs, info->si_signo);
			/*
			 * If it was able to dump core, this kills all
			 * other threads in the group and synchronizes with
			 * their demise.  If we lost the race with another
			 * thread getting here, it set group_exit_code
			 * first and our do_group_exit call below will use
			 * that value and ignore the one we pass it.
			 */
			FUNC1(info->si_signo, info->si_signo, regs);
		}

		/*
		 * Death signals, no core dump.
		 */
		FUNC2(info->si_signo);
		/* NOTREACHED */
	}
	FUNC16(&sighand->siglock);
	return signr;
}