#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct zonelist {int dummy; } ;
struct task_struct {TYPE_1__* mm; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum oom_constraint { ____Placeholder_oom_constraint } oom_constraint ;
struct TYPE_2__ {int /*<<< orphan*/  oom_disable_count; } ;

/* Variables and functions */
 int CONSTRAINT_MEMORY_POLICY ; 
 int CONSTRAINT_NONE ; 
 unsigned long FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  TIF_MEMDIE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*) ; 
 int FUNC4 (struct zonelist*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long*) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (struct task_struct*) ; 
 scalar_t__ FUNC7 (struct task_struct*,int /*<<< orphan*/ ,int,unsigned int,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  oom_notify_list ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 struct task_struct* FUNC13 (unsigned int*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ sysctl_oom_kill_allocating_task ; 
 int /*<<< orphan*/  tasklist_lock ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

void FUNC16(struct zonelist *zonelist, gfp_t gfp_mask,
		int order, nodemask_t *nodemask)
{
	const nodemask_t *mpol_mask;
	struct task_struct *p;
	unsigned long totalpages;
	unsigned long freed = 0;
	unsigned int points;
	enum oom_constraint constraint = CONSTRAINT_NONE;
	int killed = 0;

	FUNC2(&oom_notify_list, 0, &freed);
	if (freed > 0)
		/* Got some memory back in the last second. */
		return;

	/*
	 * If current has a pending SIGKILL, then automatically select it.  The
	 * goal is to allow it to allocate so that it may quickly exit and free
	 * its memory.
	 */
	if (FUNC6(current)) {
		FUNC14(TIF_MEMDIE);
		return;
	}

	/*
	 * Check if there were limitations on the allocation (only relevant for
	 * NUMA) that may require different handling.
	 */
	constraint = FUNC4(zonelist, gfp_mask, nodemask,
						&totalpages);
	mpol_mask = (constraint == CONSTRAINT_MEMORY_POLICY) ? nodemask : NULL;
	FUNC3(constraint, gfp_mask, order, mpol_mask);

	FUNC10(&tasklist_lock);
	if (sysctl_oom_kill_allocating_task &&
	    !FUNC8(current, NULL, nodemask) &&
	    current->mm && !FUNC1(&current->mm->oom_disable_count)) {
		/*
		 * oom_kill_process() needs tasklist_lock held.  If it returns
		 * non-zero, current could not be killed so we must fallback to
		 * the tasklist scan.
		 */
		if (!FUNC7(current, gfp_mask, order, 0, totalpages,
				NULL, nodemask,
				"Out of memory (oom_kill_allocating_task)"))
			goto out;
	}

retry:
	p = FUNC13(&points, totalpages, NULL, mpol_mask);
	if (FUNC0(p) == -1UL)
		goto out;

	/* Found nothing?!?! Either we hang forever, or we panic. */
	if (!p) {
		FUNC5(NULL, gfp_mask, order, NULL, mpol_mask);
		FUNC11(&tasklist_lock);
		FUNC9("Out of memory and no killable processes...\n");
	}

	if (FUNC7(p, gfp_mask, order, points, totalpages, NULL,
				nodemask, "Out of memory"))
		goto retry;
	killed = 1;
out:
	FUNC11(&tasklist_lock);

	/*
	 * Give "p" a good chance of killing itself before we
	 * retry to allocate memory unless "p" is current
	 */
	if (killed && !FUNC15(TIF_MEMDIE))
		FUNC12(1);
}