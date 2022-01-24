#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct task_struct {int dummy; } ;
struct freezer {int /*<<< orphan*/  state; } ;
struct cgroup_iter {int dummy; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGROUP_FREEZING ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct cgroup*,struct cgroup_iter*) ; 
 struct task_struct* FUNC1 (struct cgroup*,struct cgroup_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct cgroup*,struct cgroup_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 scalar_t__ FUNC6 (struct task_struct*) ; 

__attribute__((used)) static int FUNC7(struct cgroup *cgroup, struct freezer *freezer)
{
	struct cgroup_iter it;
	struct task_struct *task;
	unsigned int num_cant_freeze_now = 0;

	freezer->state = CGROUP_FREEZING;
	FUNC2(cgroup, &it);
	while ((task = FUNC1(cgroup, &it))) {
		if (!FUNC3(task, true))
			continue;
		if (FUNC6(task))
			continue;
		if (!FUNC5(task) && !FUNC4(task))
			num_cant_freeze_now++;
	}
	FUNC0(cgroup, &it);

	return num_cant_freeze_now ? -EBUSY : 0;
}