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
struct TYPE_2__ {unsigned long long sum_exec_runtime; } ;
struct thread_group_cputimer {int /*<<< orphan*/  lock; TYPE_1__ cputime; int /*<<< orphan*/  running; } ;
struct task_struct {struct signal_struct* signal; } ;
struct signal_struct {struct thread_group_cputimer cputimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline void FUNC4(struct task_struct *tsk,
					      unsigned long long ns)
{
	struct thread_group_cputimer *cputimer;
	struct signal_struct *sig;

	sig = tsk->signal;
	/* see __exit_signal()->task_rq_unlock_wait() */
	FUNC0();
	if (FUNC3(!sig))
		return;

	cputimer = &sig->cputimer;

	if (!cputimer->running)
		return;

	FUNC1(&cputimer->lock);
	cputimer->cputime.sum_exec_runtime += ns;
	FUNC2(&cputimer->lock);
}