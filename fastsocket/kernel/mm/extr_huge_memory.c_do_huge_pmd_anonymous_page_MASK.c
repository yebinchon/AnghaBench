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
struct vm_area_struct {unsigned long vm_start; scalar_t__ vm_end; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long HPAGE_PMD_MASK ; 
 scalar_t__ HPAGE_PMD_SIZE ; 
 int /*<<< orphan*/  THP_FAULT_ALLOC ; 
 int /*<<< orphan*/  THP_FAULT_FALLBACK ; 
 int VM_FAULT_OOM ; 
 int FUNC0 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,struct page*) ; 
 int FUNC1 (struct mm_struct*,struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC6 (struct vm_area_struct*) ; 
 int FUNC7 (struct page*,struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct vm_area_struct*) ; 
 scalar_t__ FUNC14 (int) ; 

int FUNC15(struct mm_struct *mm, struct vm_area_struct *vma,
			       unsigned long address, pmd_t *pmd,
			       unsigned int flags)
{
	struct page *page;
	unsigned long haddr = address & HPAGE_PMD_MASK;
	pte_t *pte;

	if (haddr >= vma->vm_start && haddr + HPAGE_PMD_SIZE <= vma->vm_end) {
		if (FUNC14(FUNC3(vma)))
			return VM_FAULT_OOM;
		if (FUNC14(FUNC6(vma)))
			return VM_FAULT_OOM;
		page = FUNC2(FUNC13(vma),
					  vma, haddr, FUNC8(), 0);
		if (FUNC14(!page)) {
			FUNC4(THP_FAULT_FALLBACK);
			goto out;
		}
		FUNC4(THP_FAULT_ALLOC);
		if (FUNC14(FUNC7(page, mm, GFP_KERNEL))) {
			FUNC12(page);
			goto out;
		}

		return FUNC0(mm, vma, haddr, pmd, page);
	}
out:
	/*
	 * Use __pte_alloc instead of pte_alloc_map, because we can't
	 * run pte_offset_map on the pmd, if an huge pmd could
	 * materialize from under us from a different thread.
	 */
	if (FUNC14(FUNC9(*pmd)) &&
	    FUNC14(FUNC1(mm, vma, pmd, address)))
		return VM_FAULT_OOM;
	/* if an huge pmd materialized from under us just retry later */
	if (FUNC14(FUNC10(*pmd)))
		return 0;
	/*
	 * A regular pmd is established and it can't morph into a huge pmd
	 * from under us anymore at this point because we hold the mmap_sem
	 * read mode and khugepaged takes it in write mode. So now it's
	 * safe to run pte_offset_map().
	 */
	pte = FUNC11(pmd, address);
	return FUNC5(mm, vma, address, pte, pmd, flags);
}