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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct vm_area_struct {int /*<<< orphan*/  vm_page_prot; struct mm_struct* vm_mm; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  page_table_lock; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int SWAP_AGAIN ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/ * FUNC4 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/ * FUNC14 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC31 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC32 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC33(struct page *new, struct vm_area_struct *vma,
				 unsigned long addr, void *old)
{
	struct mm_struct *mm = vma->vm_mm;
	swp_entry_t entry;
 	pgd_t *pgd;
 	pud_t *pud;
 	pmd_t *pmd;
	pte_t *ptep, pte;
 	spinlock_t *ptl;

	if (FUNC31(FUNC1(new))) {
		ptep = FUNC4(mm, addr);
		if (!ptep)
			goto out;
		ptl = &mm->page_table_lock;
	} else {
		pgd = FUNC14(mm, addr);
		if (!FUNC15(*pgd))
			goto out;

		pud = FUNC27(pgd, addr);
		if (!FUNC28(*pud))
			goto out;

		pmd = FUNC16(pud, addr);
		if (FUNC18(*pmd))
			goto out;
		if (!FUNC17(*pmd))
			goto out;

		ptep = FUNC23(pmd, addr);

		/*
		 * Peek to check is_swap_pte() before taking ptlock?  No, we
		 * can race mremap's move_ptes(), which skips anon_vma lock.
		 */

		ptl = FUNC19(mm, pmd);
	}

 	FUNC30(ptl);
	pte = *ptep;
	if (!FUNC7(pte))
		goto unlock;

	entry = FUNC25(pte);

	if (!FUNC6(entry) ||
	    FUNC9(entry) != old)
		goto unlock;

	FUNC3(new);
	pte = FUNC21(FUNC10(new, vma->vm_page_prot));
	if (FUNC8(entry))
		pte = FUNC22(pte);
#ifdef CONFIG_HUGETLB_PAGE
	if (PageHuge(new))
		pte = pte_mkhuge(pte);
#endif
	FUNC2(vma, addr, FUNC24(pte));
	FUNC29(mm, addr, ptep, pte);

	if (FUNC1(new)) {
		if (FUNC0(new))
			FUNC5(new, vma, addr);
		else
			FUNC13(new);
	} else if (FUNC0(new))
		FUNC11(new, vma, addr);
	else
		FUNC12(new);

	/* No need to invalidate - it was non-present before */
	FUNC32(vma, addr, pte);
unlock:
	FUNC26(ptep, ptl);
out:
	return SWAP_AGAIN;
}