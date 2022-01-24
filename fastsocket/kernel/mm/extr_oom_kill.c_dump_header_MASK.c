#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_7__ {TYPE_1__* signal; int /*<<< orphan*/  comm; } ;
struct TYPE_6__ {int /*<<< orphan*/  oom_score_adj; int /*<<< orphan*/  oom_adj; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHOW_MEM_FILTER_NODES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mem_cgroup*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_cgroup*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ sysctl_oom_dump_tasks ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC8(struct task_struct *p, gfp_t gfp_mask, int order,
			struct mem_cgroup *mem, const nodemask_t *nodemask)
{
	FUNC6(current);
	FUNC4("%s invoked oom-killer: gfp_mask=0x%x, order=%d, "
		"oom_adj=%d, oom_score_adj=%d\n",
		current->comm, gfp_mask, order, current->signal->oom_adj,
		current->signal->oom_score_adj);
	FUNC0(current);
	FUNC7(current);
	FUNC1();
	FUNC3(mem, p);
	FUNC5(SHOW_MEM_FILTER_NODES);
	if (sysctl_oom_dump_tasks)
		FUNC2(mem, nodemask);
}