#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {TYPE_2__* signal; struct mm_struct* mm; struct mm_struct* active_mm; } ;
struct mm_struct {int /*<<< orphan*/  oom_disable_count; int /*<<< orphan*/  mmap_sem; int /*<<< orphan*/  mm_count; struct core_state* core_state; } ;
struct core_thread {struct task_struct* task; int /*<<< orphan*/  next; } ;
struct TYPE_3__ {int /*<<< orphan*/  next; } ;
struct core_state {int /*<<< orphan*/  startup; int /*<<< orphan*/  nr_threads; TYPE_1__ dumper; } ;
struct TYPE_4__ {scalar_t__ oom_score_adj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ OOM_SCORE_ADJ_MIN ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC15 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct core_thread*) ; 

__attribute__((used)) static void FUNC18(struct task_struct * tsk)
{
	struct mm_struct *mm = tsk->mm;
	struct core_state *core_state;

	FUNC9(tsk, mm);
	if (!mm)
		return;
	/*
	 * Serialize with any possible pending coredump.
	 * We must hold mmap_sem around checking core_state
	 * and clearing tsk->mm.  The core-inducing thread
	 * will increment ->nr_threads for each thread in the
	 * group with ->mm != NULL.
	 */
	FUNC7(&mm->mmap_sem);
	core_state = mm->core_state;
	if (core_state) {
		struct core_thread self;
		FUNC16(&mm->mmap_sem);

		self.task = tsk;
		self.next = FUNC17(&core_state->dumper.next, &self);
		/*
		 * Implies mb(), the result of xchg() must be visible
		 * to core_state->dumper.
		 */
		if (FUNC3(&core_state->nr_threads))
			FUNC6(&core_state->startup);

		for (;;) {
			FUNC13(tsk, TASK_UNINTERRUPTIBLE);
			if (!self.task) /* see coredump_finish() */
				break;
			FUNC12();
		}
		FUNC1(tsk, TASK_RUNNING);
		FUNC7(&mm->mmap_sem);
	}
	FUNC4(&mm->mm_count);
	FUNC0(mm != tsk->active_mm);
	/* more a memory barrier than a real lock */
	FUNC14(tsk);
	tsk->mm = NULL;
	FUNC16(&mm->mmap_sem);
	FUNC8(mm, current);
	/* We don't want this task to be frozen prematurely */
	FUNC5(tsk);
	if (tsk->signal->oom_score_adj == OOM_SCORE_ADJ_MIN)
		FUNC2(&mm->oom_disable_count);
	FUNC15(tsk);
	FUNC10(mm);
	FUNC11(mm);
}