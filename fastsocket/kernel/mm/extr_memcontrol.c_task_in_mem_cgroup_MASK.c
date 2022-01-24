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
struct task_struct {int /*<<< orphan*/  mm; } ;
typedef  struct mem_cgroup {int /*<<< orphan*/  css; scalar_t__ use_hierarchy; } const mem_cgroup ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct task_struct* FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 struct mem_cgroup const* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct task_struct *task, const struct mem_cgroup *mem)
{
	int ret;
	struct mem_cgroup *curr = NULL;
	struct task_struct *p;

	p = FUNC2(task);
	if (!p)
		return 0;
	curr = FUNC4(p->mm);
	FUNC3(p);
	if (!curr)
		return 0;
	/*
	 * We should check use_hierarchy of "mem" not "curr". Because checking
	 * use_hierarchy of "curr" here make this function true if hierarchy is
	 * enabled in "curr" and "curr" is a child of "mem" in *cgroup*
	 * hierarchy(even if use_hierarchy is disabled in "mem").
	 */
	if (mem->use_hierarchy)
		ret = FUNC0(&curr->css, &mem->css);
	else
		ret = (curr == mem);
	FUNC1(&curr->css);
	return ret;
}