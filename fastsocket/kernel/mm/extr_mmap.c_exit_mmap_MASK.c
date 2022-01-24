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
struct vm_area_struct {int vm_flags; struct vm_area_struct* vm_next; } ;
struct mmu_gather {int dummy; } ;
struct mm_struct {int nr_ptes; struct vm_area_struct* mmap; scalar_t__ locked_vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FIRST_USER_ADDRESS ; 
 int PMD_SHIFT ; 
 int PMD_SIZE ; 
 int VM_LOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmu_gather*,struct vm_area_struct*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*) ; 
 struct vm_area_struct* FUNC8 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct mmu_gather*,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC10 (struct mmu_gather**,struct vm_area_struct*,int /*<<< orphan*/ ,int,unsigned long*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 

void FUNC12(struct mm_struct *mm)
{
	struct mmu_gather *tlb;
	struct vm_area_struct *vma;
	unsigned long nr_accounted = 0;
	unsigned long end;

	/* mm's last user has gone, and its about to be pulled down */
	FUNC6(mm);

	if (mm->locked_vm) {
		vma = mm->mmap;
		while (vma) {
			if (vma->vm_flags & VM_LOCKED)
				FUNC7(vma);
			vma = vma->vm_next;
		}
	}

	FUNC1(mm);

	vma = mm->mmap;
	if (!vma)	/* Can happen if dup_mmap() received an OOM */
		return;

	FUNC5();
	FUNC3(mm);
	/* update_hiwater_rss(mm) here? but nobody should be looking */
	/* Use -1 here to ensure all VMAs in the mm are unmapped */
	end = FUNC10(&tlb, vma, 0, -1, &nr_accounted, NULL, 1);
	FUNC11(nr_accounted);

	FUNC4(tlb, vma, FIRST_USER_ADDRESS, 0);
	FUNC9(tlb, 0, end);
	FUNC2(mm);

	/*
	 * Walk the list again, actually closing and freeing it,
	 * with preemption enabled, without holding any MM locks.
	 */
	while (vma)
		vma = FUNC8(vma);

	FUNC0(mm->nr_ptes > (FIRST_USER_ADDRESS+PMD_SIZE-1)>>PMD_SHIFT);
}