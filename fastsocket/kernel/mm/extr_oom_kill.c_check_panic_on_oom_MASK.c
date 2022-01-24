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
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum oom_constraint { ____Placeholder_oom_constraint } oom_constraint ;

/* Variables and functions */
 int CONSTRAINT_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int sysctl_panic_on_oom ; 
 int /*<<< orphan*/  tasklist_lock ; 

__attribute__((used)) static void FUNC5(enum oom_constraint constraint, gfp_t gfp_mask,
				int order, const nodemask_t *nodemask)
{
	if (FUNC1(!sysctl_panic_on_oom))
		return;
	if (sysctl_panic_on_oom != 2) {
		/*
		 * panic_on_oom == 1 only affects CONSTRAINT_NONE, the kernel
		 * does not panic for cpuset, mempolicy, or memcg allocation
		 * failures.
		 */
		if (constraint != CONSTRAINT_NONE)
			return;
	}
	FUNC3(&tasklist_lock);
	FUNC0(NULL, gfp_mask, order, NULL, nodemask);
	FUNC4(&tasklist_lock);
	FUNC2("Out of memory: %s panic_on_oom is enabled\n",
		sysctl_panic_on_oom == 2 ? "compulsory" : "system-wide");
}