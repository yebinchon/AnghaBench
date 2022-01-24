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
struct cpuset {int dummy; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct cpuset* FUNC1 (struct cgroup*) ; 
 int /*<<< orphan*/  cpus_attach ; 
 int /*<<< orphan*/  cpuset_attach_nodemask_to ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cpuset*,struct task_struct*) ; 
 int FUNC4 (struct task_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct cgroup *cont, struct task_struct *tsk)
{
	int err;
	struct cpuset *cs = FUNC1(cont);

	/*
	 * can_attach beforehand should guarantee that this doesn't fail.
	 * TODO: have a better way to handle failure here
	 */
	err = FUNC4(tsk, cpus_attach);
	FUNC0(err);

	FUNC2(tsk, &cpuset_attach_nodemask_to);
	FUNC3(cs, tsk);
}