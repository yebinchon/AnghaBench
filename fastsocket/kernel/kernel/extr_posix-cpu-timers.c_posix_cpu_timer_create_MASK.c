#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct task_struct {struct task_struct* group_leader; } ;
struct TYPE_6__ {scalar_t__ sched; } ;
struct TYPE_5__ {scalar_t__ sched; } ;
struct TYPE_7__ {struct task_struct* task; TYPE_2__ expires; TYPE_1__ incr; int /*<<< orphan*/  entry; } ;
struct TYPE_8__ {TYPE_3__ cpu; } ;
struct k_itimer {TYPE_4__ it; int /*<<< orphan*/  it_clock; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ CPUCLOCK_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct task_struct* current ; 
 struct task_struct* FUNC4 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*,struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 

__attribute__((used)) static int FUNC10(struct k_itimer *new_timer)
{
	int ret = 0;
	const pid_t pid = FUNC1(new_timer->it_clock);
	struct task_struct *p;

	if (FUNC2(new_timer->it_clock) >= CPUCLOCK_MAX)
		return -EINVAL;

	FUNC3(&new_timer->it.cpu.entry);
	new_timer->it.cpu.incr.sched = 0;
	new_timer->it.cpu.expires.sched = 0;

	FUNC6(&tasklist_lock);
	if (FUNC0(new_timer->it_clock)) {
		if (pid == 0) {
			p = current;
		} else {
			p = FUNC4(pid);
			if (p && !FUNC8(p, current))
				p = NULL;
		}
	} else {
		if (pid == 0) {
			p = current->group_leader;
		} else {
			p = FUNC4(pid);
			if (p && !FUNC9(p))
				p = NULL;
		}
	}
	new_timer->it.cpu.task = p;
	if (p) {
		FUNC5(p);
	} else {
		ret = -EINVAL;
	}
	FUNC7(&tasklist_lock);

	return ret;
}