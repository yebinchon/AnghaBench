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
struct task_struct {int dummy; } ;
struct mm_struct {TYPE_1__* binfmt; int /*<<< orphan*/  total_vm; int /*<<< orphan*/  hiwater_vm; int /*<<< orphan*/  hiwater_rss; int /*<<< orphan*/ * pmd_huge_pte; scalar_t__ last_interval; scalar_t__ token_priority; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 struct mm_struct* FUNC0 () ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,struct mm_struct*) ; 
 int FUNC2 (struct mm_struct*,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 scalar_t__ FUNC5 (struct task_struct*,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*,struct mm_struct*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

struct mm_struct *FUNC11(struct task_struct *tsk)
{
	struct mm_struct *mm, *oldmm = current->mm;
	int err;

	if (!oldmm)
		return NULL;

	mm = FUNC0();
	if (!mm)
		goto fail_nomem;

	FUNC6(mm, oldmm, sizeof(*mm));

	/* Initializing for Swap token stuff */
	mm->token_priority = 0;
	mm->last_interval = 0;

#ifdef CONFIG_TRANSPARENT_HUGEPAGE
	mm->pmd_huge_pte = NULL;
#endif

	if (!FUNC8(mm, tsk))
		goto fail_nomem;

	if (FUNC5(tsk, mm))
		goto fail_nocontext;

	FUNC1(oldmm, mm);

	err = FUNC2(mm, oldmm);
	if (err)
		goto free_pt;

	mm->hiwater_rss = FUNC4(mm);
	mm->hiwater_vm = mm->total_vm;

	if (mm->binfmt && !FUNC10(mm->binfmt->module))
		goto free_pt;

	return mm;

free_pt:
	/* don't put binfmt in mmput, we haven't got module yet */
	mm->binfmt = NULL;
	FUNC9(mm);

fail_nomem:
	return NULL;

fail_nocontext:
	/*
	 * If init_new_context() failed, we cannot use mmput() to free the mm
	 * because it calls destroy_context()
	 */
	FUNC7(mm);
	FUNC3(mm);
	return NULL;
}