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
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct anon_vma {TYPE_2__* root; } ;
struct TYPE_3__ {int /*<<< orphan*/  next; } ;
struct TYPE_4__ {TYPE_1__ head; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static void FUNC4(struct mm_struct *mm, struct anon_vma *anon_vma)
{
	if (!FUNC3(0, (unsigned long *) &anon_vma->root->head.next)) {
		/*
		 * The LSB of head.next can't change from under us
		 * because we hold the mm_all_locks_mutex.
		 */
		FUNC2(&anon_vma->root->lock, &mm->mmap_sem);
		/*
		 * We can safely modify head.next after taking the
		 * anon_vma->root->lock. If some other vma in this mm shares
		 * the same anon_vma we won't take it again.
		 *
		 * No need of atomic instructions here, head.next
		 * can't change from under us thanks to the
		 * anon_vma->root->lock.
		 */
		if (FUNC1(0, (unsigned long *)
				       &anon_vma->root->head.next))
			FUNC0();
	}
}