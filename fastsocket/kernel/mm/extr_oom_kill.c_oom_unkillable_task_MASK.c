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
struct task_struct {int flags; } ;
struct mem_cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 int PF_KTHREAD ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,struct mem_cgroup const*) ; 

__attribute__((used)) static bool FUNC3(struct task_struct *p,
		const struct mem_cgroup *mem, const nodemask_t *nodemask)
{
	if (FUNC1(p))
		return true;
	if (p->flags & PF_KTHREAD)
		return true;

	/* When mem_cgroup_out_of_memory() and p is not member of the group */
	if (mem && !FUNC2(p, mem))
		return true;

	/* p may not have freeable memory in nodemask */
	if (!FUNC0(p, nodemask))
		return true;

	return false;
}