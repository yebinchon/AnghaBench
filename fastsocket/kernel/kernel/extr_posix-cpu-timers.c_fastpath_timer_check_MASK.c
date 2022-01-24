#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sum_exec_runtime; } ;
struct task_struct {struct signal_struct* signal; int /*<<< orphan*/  cputime_expires; TYPE_1__ se; int /*<<< orphan*/  stime; int /*<<< orphan*/  utime; int /*<<< orphan*/  exit_state; } ;
struct task_cputime {int /*<<< orphan*/  sum_exec_runtime; int /*<<< orphan*/  stime; int /*<<< orphan*/  utime; } ;
struct signal_struct {TYPE_2__* rlim; int /*<<< orphan*/  cputime_expires; } ;
struct TYPE_4__ {scalar_t__ rlim_cur; } ;

/* Variables and functions */
 size_t RLIMIT_CPU ; 
 scalar_t__ RLIM_INFINITY ; 
 scalar_t__ FUNC0 (struct task_cputime*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,struct task_cputime*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct task_struct *tsk)
{
	struct signal_struct *sig;

	/* tsk == current, ensure it is safe to use ->signal/sighand */
	if (FUNC3(tsk->exit_state))
		return 0;

	if (!FUNC1(&tsk->cputime_expires)) {
		struct task_cputime task_sample = {
			.utime = tsk->utime,
			.stime = tsk->stime,
			.sum_exec_runtime = tsk->se.sum_exec_runtime
		};

		if (FUNC0(&task_sample, &tsk->cputime_expires))
			return 1;
	}

	sig = tsk->signal;
	if (!FUNC1(&sig->cputime_expires)) {
		struct task_cputime group_sample;

		FUNC2(tsk, &group_sample);
		if (FUNC0(&group_sample, &sig->cputime_expires))
			return 1;
	}

	return sig->rlim[RLIMIT_CPU].rlim_cur != RLIM_INFINITY;
}