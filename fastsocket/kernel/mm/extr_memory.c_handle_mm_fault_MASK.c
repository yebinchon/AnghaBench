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
struct vm_area_struct {int /*<<< orphan*/  vm_ops; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned int FAULT_FLAG_WRITE ; 
 int /*<<< orphan*/  PGFAULT ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int VM_FAULT_OOM ; 
 int FUNC0 (struct mm_struct*,struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC5 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC7 (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned int) ; 
 int FUNC8 (struct vm_area_struct*) ; 
 int /*<<< orphan*/ * FUNC9 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC10 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC16 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC17 (struct vm_area_struct*) ; 
 scalar_t__ FUNC18 (int) ; 

int FUNC19(struct mm_struct *mm, struct vm_area_struct *vma,
		unsigned long address, unsigned int flags)
{
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;

	FUNC1(TASK_RUNNING);

	FUNC3(PGFAULT);

	if (FUNC18(FUNC8(vma)))
		return FUNC7(mm, vma, address, flags);

retry:
	pgd = FUNC9(mm, address);
	pud = FUNC16(mm, pgd, address);
	if (!pud)
		return VM_FAULT_OOM;
	pmd = FUNC10(mm, pud, address);
	if (!pmd)
		return VM_FAULT_OOM;
	if (FUNC11(*pmd) && FUNC17(vma)) {
		if (!vma->vm_ops)
			return FUNC4(mm, vma, address,
							  pmd, flags);
	} else {
		pmd_t orig_pmd = *pmd;
		int ret;

		FUNC2();
		if (FUNC12(orig_pmd)) {
			if (flags & FAULT_FLAG_WRITE &&
			    !FUNC14(orig_pmd) &&
			    !FUNC13(orig_pmd)) {
				ret = FUNC5(mm, vma, address, pmd,
							  orig_pmd);
				/*
				 * If COW results in an oom, the huge pmd will
				 * have been split, so retry the fault on the
				 * pte for a smaller charge.
				 */
				if (FUNC18(ret & VM_FAULT_OOM))
					goto retry;
				return ret;
			}
			return 0;
		}
	}

	/*
	 * Use __pte_alloc instead of pte_alloc_map, because we can't
	 * run pte_offset_map on the pmd, if an huge pmd could
	 * materialize from under us from a different thread.
	 */
	if (FUNC18(FUNC11(*pmd)) &&
	    FUNC18(FUNC0(mm, vma, pmd, address)))
		return VM_FAULT_OOM;
	/* if an huge pmd materialized from under us just retry later */
	if (FUNC18(FUNC12(*pmd)))
		return 0;
	/*
	 * A regular pmd is established and it can't morph into a huge pmd
	 * from under us anymore at this point because we hold the mmap_sem
	 * read mode and khugepaged takes it in write mode. So now it's
	 * safe to run pte_offset_map().
	 */
	pte = FUNC15(pmd, address);

	return FUNC6(mm, vma, address, pte, pmd, flags);
}