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
struct vm_area_struct {TYPE_1__* vm_ops; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
struct TYPE_2__ {int /*<<< orphan*/  fault; } ;

/* Variables and functions */
 unsigned int FAULT_FLAG_WRITE ; 
 int FUNC0 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC1 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_area_struct*,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 

int FUNC20(struct mm_struct *mm,
		     struct vm_area_struct *vma, unsigned long address,
		     pte_t *pte, pmd_t *pmd, unsigned int flags)
{
	pte_t entry;
	spinlock_t *ptl;

	entry = *pte;
	if (!FUNC12(entry)) {
		if (FUNC11(entry)) {
			if (vma->vm_ops) {
				if (FUNC6(vma->vm_ops->fault))
					return FUNC1(mm, vma, address,
						pte, pmd, flags, entry);
			}
			return FUNC0(mm, vma, address,
						 pte, pmd, flags);
		}
		if (FUNC7(entry))
			return FUNC2(mm, vma, address,
					pte, pmd, flags, entry);
		return FUNC3(mm, vma, address,
					pte, pmd, flags, entry);
	}

	ptl = FUNC8(mm, pmd);
	FUNC17(ptl);
	if (FUNC18(!FUNC13(*pte, entry)))
		goto unlock;
	if (flags & FAULT_FLAG_WRITE) {
		if (!FUNC15(entry))
			return FUNC4(mm, vma, address,
					pte, pmd, ptl, entry);
		entry = FUNC9(entry);
	}
	entry = FUNC10(entry);
	if (FUNC16(vma, address, pte, entry, flags & FAULT_FLAG_WRITE)) {
		FUNC19(vma, address, entry);
	} else {
		/*
		 * This is needed only for protection faults but the arch code
		 * is not yet telling us if this is a protection fault or not.
		 * This still avoids useless tlb flushes for .text page faults
		 * with threads.
		 */
		if (flags & FAULT_FLAG_WRITE)
			FUNC5(vma, address);
	}
unlock:
	FUNC14(pte, ptl);
	return 0;
}