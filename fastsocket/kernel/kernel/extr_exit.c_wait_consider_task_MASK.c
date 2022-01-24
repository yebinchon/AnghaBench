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
struct wait_opts {int notask_error; } ;
struct task_struct {scalar_t__ exit_state; } ;

/* Variables and functions */
 scalar_t__ EXIT_DEAD ; 
 scalar_t__ EXIT_ZOMBIE ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct wait_opts*,struct task_struct*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct task_struct*) ; 
 int FUNC4 (struct task_struct*) ; 
 scalar_t__ FUNC5 (struct task_struct*,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct wait_opts*,struct task_struct*) ; 
 int FUNC8 (struct wait_opts*,int,struct task_struct*) ; 
 int FUNC9 (struct wait_opts*,struct task_struct*) ; 

__attribute__((used)) static int FUNC10(struct wait_opts *wo, int ptrace,
				struct task_struct *p)
{
	int ret = FUNC1(wo, p);
	if (!ret)
		return ret;

	ret = FUNC3(p);
	if (FUNC6(ret < 0)) {
		/*
		 * If we have not yet seen any eligible child,
		 * then let this error code replace -ECHILD.
		 * A permission error will give the user a clue
		 * to look for security policy problems, rather
		 * than for mysterious wait bugs.
		 */
		if (wo->notask_error)
			wo->notask_error = ret;
		return 0;
	}

	if (FUNC2(!ptrace) && FUNC6(FUNC4(p))) {
		/*
		 * This child is hidden by ptrace.
		 * We aren't allowed to see it now, but eventually we will.
		 */
		wo->notask_error = 0;
		return 0;
	}

	if (p->exit_state == EXIT_DEAD)
		return 0;

	/*
	 * We don't reap group leaders with subthreads.
	 */
	if (p->exit_state == EXIT_ZOMBIE && !FUNC0(p))
		return FUNC9(wo, p);

	/*
	 * It's stopped or running now, so it might
	 * later continue, exit, or stop again.
	 */
	wo->notask_error = 0;

	if (FUNC5(p, ptrace))
		return FUNC8(wo, ptrace, p);

	return FUNC7(wo, p);
}