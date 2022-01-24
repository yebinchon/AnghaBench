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
struct mm_struct {int dummy; } ;
struct cpuset {int /*<<< orphan*/  mems_allowed; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 struct cpuset* FUNC0 (struct cgroup*) ; 
 int /*<<< orphan*/  cpuset_attach_nodemask_from ; 
 int /*<<< orphan*/  cpuset_attach_nodemask_to ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mm_struct* FUNC2 (struct task_struct*) ; 
 scalar_t__ FUNC3 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct cgroup_subsys *ss, struct cgroup *cont,
			  struct cgroup *oldcont, struct task_struct *tsk)
{
	struct mm_struct *mm;
	struct cpuset *cs = FUNC0(cont);
	struct cpuset *oldcs = FUNC0(oldcont);

	/*
	 * Change mm, possibly for multiple threads in a threadgroup. This is
	 * expensive and may sleep.
	 */
	cpuset_attach_nodemask_from = oldcs->mems_allowed;
	cpuset_attach_nodemask_to = cs->mems_allowed;
	mm = FUNC2(tsk);
	if (mm) {
		FUNC5(mm, &cpuset_attach_nodemask_to);
		if (FUNC3(cs))
			FUNC1(mm, &cpuset_attach_nodemask_from,
					  &cpuset_attach_nodemask_to);
		FUNC4(mm);
	}
}