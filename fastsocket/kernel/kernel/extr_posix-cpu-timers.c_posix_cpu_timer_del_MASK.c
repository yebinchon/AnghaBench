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
struct task_struct {TYPE_3__* sighand; int /*<<< orphan*/ * signal; } ;
struct TYPE_4__ {int /*<<< orphan*/  entry; scalar_t__ firing; struct task_struct* task; } ;
struct TYPE_5__ {TYPE_1__ cpu; } ;
struct k_itimer {TYPE_2__ it; } ;
struct TYPE_6__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TIMER_RETRY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct k_itimer *timer)
{
	struct task_struct *p = timer->it.cpu.task;
	int ret = 0;

	if (FUNC1(p != NULL)) {
		FUNC5(&tasklist_lock);
		if (FUNC9(p->signal == NULL)) {
			/*
			 * We raced with the reaping of the task.
			 * The deletion should have cleared us off the list.
			 */
			FUNC0(!FUNC3(&timer->it.cpu.entry));
		} else {
			FUNC7(&p->sighand->siglock);
			if (timer->it.cpu.firing)
				ret = TIMER_RETRY;
			else
				FUNC2(&timer->it.cpu.entry);
			FUNC8(&p->sighand->siglock);
		}
		FUNC6(&tasklist_lock);

		if (!ret)
			FUNC4(p);
	}

	return ret;
}