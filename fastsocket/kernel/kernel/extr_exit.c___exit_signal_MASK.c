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
struct TYPE_2__ {scalar_t__ sum_exec_runtime; } ;
struct task_struct {int /*<<< orphan*/ * sighand; struct signal_struct* signal; int /*<<< orphan*/  pending; TYPE_1__ se; int /*<<< orphan*/  ioac; scalar_t__ nivcsw; scalar_t__ nvcsw; scalar_t__ maj_flt; scalar_t__ min_flt; int /*<<< orphan*/  gtime; int /*<<< orphan*/  stime; int /*<<< orphan*/  utime; } ;
struct signal_struct {scalar_t__ notify_count; int /*<<< orphan*/  shared_pending; int /*<<< orphan*/  sum_sched_runtime; int /*<<< orphan*/  ioac; int /*<<< orphan*/  oublock; int /*<<< orphan*/  inblock; int /*<<< orphan*/  nivcsw; int /*<<< orphan*/  nvcsw; int /*<<< orphan*/  maj_flt; int /*<<< orphan*/  min_flt; void* gtime; void* stime; void* utime; struct task_struct* curr_target; scalar_t__ group_exit_task; int /*<<< orphan*/  count; } ;
struct sighand_struct {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TIF_SIGPENDING ; 
 int /*<<< orphan*/  FUNC1 (struct sighand_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct signal_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 
 struct task_struct* FUNC10 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 
 struct sighand_struct* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (struct task_struct*) ; 
 scalar_t__ FUNC18 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC19 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC20 (struct signal_struct*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 

__attribute__((used)) static void FUNC23(struct task_struct *tsk)
{
	struct signal_struct *sig = tsk->signal;
	struct sighand_struct *sighand;

	FUNC0(!sig);
	FUNC0(!FUNC5(&sig->count));

	sighand = FUNC13(tsk->sighand);
	FUNC14(&sighand->siglock);

	FUNC11(tsk);
	if (FUNC4(&sig->count))
		FUNC12(tsk);
	else {
		/*
		 * This can only happen if the caller is de_thread().
		 * FIXME: this is the temporary hack, we should teach
		 * posix-cpu-timers to handle this case correctly.
		 */
		if (FUNC21(FUNC9(tsk)))
			FUNC12(tsk);

		/*
		 * If there is any task waiting for the group exit
		 * then notify it:
		 */
		if (sig->group_exit_task && FUNC5(&sig->count) == sig->notify_count)
			FUNC22(sig->group_exit_task);

		if (tsk == sig->curr_target)
			sig->curr_target = FUNC10(tsk);
		/*
		 * Accumulate here the counters for all threads but the
		 * group leader as they die, so they can be added into
		 * the process-wide totals when those are taken.
		 * The group leader stays around as a zombie as long
		 * as there are other threads.  When it gets reaped,
		 * the exit.c code will add its counts into these totals.
		 * We won't ever get here for the group leader, since it
		 * will have been the last reference on the signal_struct.
		 */
		sig->utime = FUNC7(sig->utime, tsk->utime);
		sig->stime = FUNC7(sig->stime, tsk->stime);
		sig->gtime = FUNC7(sig->gtime, tsk->gtime);
		sig->min_flt += tsk->min_flt;
		sig->maj_flt += tsk->maj_flt;
		sig->nvcsw += tsk->nvcsw;
		sig->nivcsw += tsk->nivcsw;
		sig->inblock += FUNC17(tsk);
		sig->oublock += FUNC18(tsk);
		FUNC16(&sig->ioac, &tsk->ioac);
		sig->sum_sched_runtime += tsk->se.sum_exec_runtime;
		sig = NULL; /* Marker for below. */
	}

	FUNC3(tsk);

	/*
	 * Do this under ->siglock, we can race with another thread
	 * doing sigqueue_free() if we have SIGQUEUE_PREALLOC signals.
	 */
	FUNC8(&tsk->pending);

	tsk->signal = NULL;
	tsk->sighand = NULL;
	FUNC15(&sighand->siglock);

	FUNC1(sighand);
	FUNC6(tsk,TIF_SIGPENDING);
	if (sig) {
		FUNC8(&sig->shared_pending);
		FUNC20(sig);
		/*
		 * Make sure ->signal can't go away under rq->lock,
		 * see account_group_exec_runtime().
		 */
		FUNC19(tsk);
		FUNC2(sig);
	}
}