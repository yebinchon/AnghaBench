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
struct mmu_notifier {int /*<<< orphan*/  hlist; TYPE_1__* ops; } ;
struct mm_struct {int /*<<< orphan*/  mm_count; TYPE_2__* mmu_notifier_mm; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* release ) (struct mmu_notifier*,struct mm_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  srcu ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mmu_notifier*,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct mmu_notifier *mn, struct mm_struct *mm)
{
	FUNC0(FUNC1(&mm->mm_count) <= 0);

	if (!FUNC3(&mn->hlist)) {
		/*
		 * SRCU here will force exit_mmap to wait ->release to finish
		 * before freeing the pages.
		 */
		int id;

		id = FUNC7(&srcu);
		/*
		 * exit_mmap will block in mmu_notifier_release to
		 * guarantee ->release is called before freeing the
		 * pages.
		 */
		if (mn->ops->release)
			mn->ops->release(mn, mm);
		FUNC8(&srcu, id);

		FUNC5(&mm->mmu_notifier_mm->lock);
		/*
		 * Can not use list_del_rcu() since __mmu_notifier_release
		 * can delete it before we hold the lock.
		 */
		FUNC2(&mn->hlist);
		FUNC6(&mm->mmu_notifier_mm->lock);
	}

	/*
	 * Wait any running method to finish, of course including
	 * ->release if it was run by mmu_notifier_relase instead of us.
	 */
	FUNC10(&srcu);

	FUNC0(FUNC1(&mm->mm_count) <= 0);

	FUNC4(mm);
}