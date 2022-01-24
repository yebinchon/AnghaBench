#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct task_struct {TYPE_1__* signal; TYPE_2__* mm; } ;
struct mem_cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
struct TYPE_5__ {long nr_ptes; int /*<<< orphan*/  oom_disable_count; } ;
struct TYPE_4__ {scalar_t__ oom_score_adj; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct task_struct* FUNC1 (struct task_struct*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 long FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct task_struct*,struct mem_cgroup*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  swap_usage ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 

unsigned int FUNC7(struct task_struct *p, struct mem_cgroup *mem,
		      const nodemask_t *nodemask, unsigned long totalpages)
{
	long points;

	if (FUNC5(p, mem, nodemask))
		return 0;

	p = FUNC1(p);
	if (!p)
		return 0;

	/*
	 * Shortcut check for a thread sharing p->mm that is OOM_SCORE_ADJ_MIN
	 * so the entire heuristic doesn't need to be executed for something
	 * that cannot be killed.
	 */
	if (FUNC0(&p->mm->oom_disable_count)) {
		FUNC6(p);
		return 0;
	}

	/*
	 * The memory controller may have a limit of 0 bytes, so avoid a divide
	 * by zero, if necessary.
	 */
	if (!totalpages)
		totalpages = 1;

	/*
	 * The baseline for the badness score is the proportion of RAM that each
	 * task's rss, pagetable and swap space use.
	 */
	points = FUNC3(p->mm) + p->mm->nr_ptes;
	points += FUNC2(p->mm, swap_usage);

	points *= 1000;
	points /= totalpages;
	FUNC6(p);

	/*
	 * Root processes get 3% bonus, just like the __vm_enough_memory()
	 * implementation used by LSMs.
	 */
	if (FUNC4(p, CAP_SYS_ADMIN))
		points -= 30;

	/*
	 * /proc/pid/oom_score_adj ranges from -1000 to +1000 such that it may
	 * either completely disable oom killing or always prefer a certain
	 * task.
	 */
	points += p->signal->oom_score_adj;

	/*
	 * Never return 0 for an eligible task that may be killed since it's
	 * possible that no single user task uses more than 0.1% of memory and
	 * no single admin tasks uses more than 3.0%.
	 */
	if (points <= 0)
		return 1;
	return (points < 1000) ? points : 1000;
}