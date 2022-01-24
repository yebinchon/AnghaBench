#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct wait_opts {int wo_flags; scalar_t__ wo_stat; scalar_t__ wo_rusage; int /*<<< orphan*/  wo_info; } ;
struct task_struct {TYPE_2__* sighand; TYPE_1__* signal; } ;
typedef  int pid_t ;
struct TYPE_6__ {int /*<<< orphan*/  uid; } ;
struct TYPE_5__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CLD_CONTINUED ; 
 int /*<<< orphan*/  RUSAGE_BOTH ; 
 int /*<<< orphan*/  SIGCONT ; 
 int SIGNAL_STOP_CONTINUED ; 
 int WCONTINUED ; 
 int WNOWAIT ; 
 TYPE_3__* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int FUNC3 (struct task_struct*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (struct wait_opts*,struct task_struct*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct wait_opts *wo, struct task_struct *p)
{
	int retval;
	pid_t pid;
	uid_t uid;

	if (!FUNC10(wo->wo_flags & WCONTINUED))
		return 0;

	if (!(p->signal->flags & SIGNAL_STOP_CONTINUED))
		return 0;

	FUNC7(&p->sighand->siglock);
	/* Re-check with the lock held.  */
	if (!(p->signal->flags & SIGNAL_STOP_CONTINUED)) {
		FUNC8(&p->sighand->siglock);
		return 0;
	}
	if (!FUNC10(wo->wo_flags & WNOWAIT))
		p->signal->flags &= ~SIGNAL_STOP_CONTINUED;
	uid = FUNC1(p)->uid;
	FUNC8(&p->sighand->siglock);

	pid = FUNC9(p);
	FUNC2(p);
	FUNC6(&tasklist_lock);

	if (!wo->wo_info) {
		retval = wo->wo_rusage
			? FUNC3(p, RUSAGE_BOTH, wo->wo_rusage) : 0;
		FUNC4(p);
		if (!retval && wo->wo_stat)
			retval = FUNC5(0xffff, wo->wo_stat);
		if (!retval)
			retval = pid;
	} else {
		retval = FUNC11(wo, p, pid, uid,
					     CLD_CONTINUED, SIGCONT);
		FUNC0(retval == 0);
	}

	return retval;
}