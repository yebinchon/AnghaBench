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
struct TYPE_4__ {int /*<<< orphan*/  utime; } ;
struct thread_group_cputimer {int /*<<< orphan*/  lock; TYPE_2__ cputime; int /*<<< orphan*/  running; } ;
struct task_struct {TYPE_1__* signal; int /*<<< orphan*/  exit_state; } ;
typedef  int /*<<< orphan*/  cputime_t ;
struct TYPE_3__ {struct thread_group_cputimer cputimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct task_struct *tsk,
					   cputime_t cputime)
{
	struct thread_group_cputimer *cputimer;

	/* tsk == current, ensure it is safe to use ->signal */
	if (FUNC3(tsk->exit_state))
		return;

	cputimer = &tsk->signal->cputimer;

	if (!cputimer->running)
		return;

	FUNC1(&cputimer->lock);
	cputimer->cputime.utime =
		FUNC0(cputimer->cputime.utime, cputime);
	FUNC2(&cputimer->lock);
}