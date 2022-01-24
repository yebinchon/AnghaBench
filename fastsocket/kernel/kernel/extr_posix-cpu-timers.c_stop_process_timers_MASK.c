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
struct thread_group_cputimer {int /*<<< orphan*/  lock; scalar_t__ running; } ;
struct task_struct {TYPE_1__* signal; } ;
struct TYPE_2__ {struct thread_group_cputimer cputimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct task_struct *tsk)
{
	struct thread_group_cputimer *cputimer = &tsk->signal->cputimer;
	unsigned long flags;

	if (!cputimer->running)
		return;

	FUNC0(&cputimer->lock, flags);
	cputimer->running = 0;
	FUNC1(&cputimer->lock, flags);
}