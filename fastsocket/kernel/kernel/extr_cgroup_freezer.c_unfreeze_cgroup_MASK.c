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
 int /*<<< orphan*/  CGROUP_THAWED ; 
 int /*<<< orphan*/  FUNC0 (struct cgroup*,struct cgroup_iter*) ; 
 struct task_struct* FUNC1 (struct cgroup*,struct cgroup_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct cgroup*,struct cgroup_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static void FUNC4(struct cgroup *cgroup, struct freezer *freezer)
{
	struct cgroup_iter it;
	struct task_struct *task;

	FUNC2(cgroup, &it);
	while ((task = FUNC1(cgroup, &it))) {
		FUNC3(task);
	}
	FUNC0(cgroup, &it);

	freezer->state = CGROUP_THAWED;
}