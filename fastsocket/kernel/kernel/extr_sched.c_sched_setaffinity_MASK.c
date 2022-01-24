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
struct cpumask {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  cpumask_var_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_NICE ; 
 int ENOMEM ; 
 int EPERM ; 
 long ESRCH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct cpumask const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct task_struct*,int /*<<< orphan*/ ) ; 

long FUNC17(pid_t pid, const struct cpumask *in_mask)
{
	cpumask_var_t cpus_allowed, new_mask;
	struct task_struct *p;
	int retval;

	FUNC9();
	FUNC13();

	p = FUNC7(pid);
	if (!p) {
		FUNC14();
		FUNC11();
		return -ESRCH;
	}

	/* Prevent p going away */
	FUNC10(p);
	FUNC14();

	if (!FUNC0(&cpus_allowed, GFP_KERNEL)) {
		retval = -ENOMEM;
		goto out_put_task;
	}
	if (!FUNC0(&new_mask, GFP_KERNEL)) {
		retval = -ENOMEM;
		goto out_free_cpus_allowed;
	}
	retval = -EPERM;
	if (!FUNC2(p) && !FUNC1(CAP_SYS_NICE))
		goto out_unlock;

	retval = FUNC15(p, 0, NULL);
	if (retval)
		goto out_unlock;

	FUNC6(p, cpus_allowed);
	FUNC3(new_mask, in_mask, cpus_allowed);
 again:
	retval = FUNC16(p, new_mask);

	if (!retval) {
		FUNC6(p, cpus_allowed);
		if (!FUNC5(new_mask, cpus_allowed)) {
			/*
			 * We must have raced with a concurrent cpuset
			 * update. Just reset the cpus_allowed to the
			 * cpuset's cpus_allowed
			 */
			FUNC4(new_mask, cpus_allowed);
			goto again;
		}
	}
out_unlock:
	FUNC8(new_mask);
out_free_cpus_allowed:
	FUNC8(cpus_allowed);
out_put_task:
	FUNC12(p);
	FUNC11();
	return retval;
}