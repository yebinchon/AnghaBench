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
struct task_struct {TYPE_1__ se; int /*<<< orphan*/  stime; int /*<<< orphan*/  utime; struct signal_struct* signal; int /*<<< orphan*/  sighand; } ;
struct task_cputime {int /*<<< orphan*/  sum_exec_runtime; void* stime; void* utime; } ;
struct signal_struct {scalar_t__ sum_sched_runtime; int /*<<< orphan*/  stime; int /*<<< orphan*/  utime; } ;
struct sighand_struct {int dummy; } ;

/* Variables and functions */
 struct task_cputime INIT_CPUTIME ; 
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC1 (struct task_struct*) ; 
 struct sighand_struct* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct task_struct *tsk, struct task_cputime *times)
{
	struct sighand_struct *sighand;
	struct signal_struct *sig;
	struct task_struct *t;

	*times = INIT_CPUTIME;

	FUNC3();
	sighand = FUNC2(tsk->sighand);
	if (!sighand)
		goto out;

	sig = tsk->signal;

	t = tsk;
	do {
		times->utime = FUNC0(times->utime, t->utime);
		times->stime = FUNC0(times->stime, t->stime);
		times->sum_exec_runtime += t->se.sum_exec_runtime;

		t = FUNC1(t);
	} while (t != tsk);

	times->utime = FUNC0(times->utime, sig->utime);
	times->stime = FUNC0(times->stime, sig->stime);
	times->sum_exec_runtime += sig->sum_sched_runtime;
out:
	FUNC4();
}