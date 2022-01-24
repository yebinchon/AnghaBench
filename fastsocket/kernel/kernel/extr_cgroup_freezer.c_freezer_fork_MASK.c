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
struct task_struct {int dummy; } ;
struct TYPE_4__ {TYPE_1__* cgroup; } ;
struct freezer {scalar_t__ state; int /*<<< orphan*/  lock; TYPE_2__ css; } ;
struct cgroup_subsys {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CGROUP_FREEZING ; 
 scalar_t__ CGROUP_FROZEN ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct freezer* FUNC4 (struct task_struct*) ; 

__attribute__((used)) static void FUNC5(struct cgroup_subsys *ss, struct task_struct *task)
{
	struct freezer *freezer;

	/*
	 * No lock is needed, since the task isn't on tasklist yet,
	 * so it can't be moved to another cgroup, which means the
	 * freezer won't be removed and will be valid during this
	 * function call.
	 */
	freezer = FUNC4(task);

	/*
	 * The root cgroup is non-freezable, so we can skip the
	 * following check.
	 */
	if (!freezer->css.cgroup->parent)
		return;

	FUNC2(&freezer->lock);
	FUNC0(freezer->state == CGROUP_FROZEN);

	/* Locking avoids race with FREEZING -> THAWED transitions. */
	if (freezer->state == CGROUP_FREEZING)
		FUNC1(task, true);
	FUNC3(&freezer->lock);
}