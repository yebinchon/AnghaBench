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
struct mmu_notifier_mm {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct mmu_notifier {int /*<<< orphan*/  hlist; } ;
struct mm_struct {int /*<<< orphan*/  mm_users; int /*<<< orphan*/  mmap_sem; struct mmu_notifier_mm* mmu_notifier_mm; int /*<<< orphan*/  mm_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  per_cpu_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mmu_notifier_mm*) ; 
 struct mmu_notifier_mm* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*) ; 
 int FUNC10 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_1__ srcu ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct mmu_notifier *mn,
				    struct mm_struct *mm,
				    int take_mmap_sem)
{
	struct mmu_notifier_mm *mmu_notifier_mm;
	int ret;

	FUNC0(FUNC3(&mm->mm_users) <= 0);

	/*
	* Verify that mmu_notifier_init() already run and the global srcu is
	* initialized.
	*/
	FUNC0(!srcu.per_cpu_ref);

	ret = -ENOMEM;
	mmu_notifier_mm = FUNC7(sizeof(struct mmu_notifier_mm), GFP_KERNEL);
	if (FUNC14(!mmu_notifier_mm))
		goto out;

	if (take_mmap_sem)
		FUNC4(&mm->mmap_sem);
	ret = FUNC10(mm);
	if (FUNC14(ret))
		goto out_cleanup;

	if (!FUNC9(mm)) {
		FUNC1(&mmu_notifier_mm->list);
		FUNC12(&mmu_notifier_mm->lock);
		mm->mmu_notifier_mm = mmu_notifier_mm;
		mmu_notifier_mm = NULL;
	}
	FUNC2(&mm->mm_count);

	/*
	 * Serialize the update against mmu_notifier_unregister. A
	 * side note: mmu_notifier_release can't run concurrently with
	 * us because we hold the mm_users pin (either implicitly as
	 * current->mm or explicitly with get_task_mm() or similar).
	 * We can't race against any other mmu notifier method either
	 * thanks to mm_take_all_locks().
	 */
	FUNC11(&mm->mmu_notifier_mm->lock);
	FUNC5(&mn->hlist, &mm->mmu_notifier_mm->list);
	FUNC13(&mm->mmu_notifier_mm->lock);

	FUNC8(mm);
out_cleanup:
	if (take_mmap_sem)
		FUNC15(&mm->mmap_sem);
	/* kfree() does nothing if mmu_notifier_mm is NULL */
	FUNC6(mmu_notifier_mm);
out:
	FUNC0(FUNC3(&mm->mm_users) <= 0);
	return ret;
}