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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct vm_area_struct {int vm_flags; TYPE_1__* vm_ops; int /*<<< orphan*/  anon_vma; struct mm_struct* vm_mm; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  page_table_lock; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_2__ {int /*<<< orphan*/  fault; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  EFAULT ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FOLL_DUMP ; 
 unsigned int FOLL_GET ; 
 unsigned int FOLL_MIGRATION ; 
 unsigned int FOLL_SPLIT ; 
 unsigned int FOLL_TOUCH ; 
 unsigned int FOLL_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int VM_HUGETLB ; 
 struct page* FUNC4 (struct mm_struct*,unsigned long,unsigned int) ; 
 struct page* FUNC5 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,unsigned int) ; 
 struct page* FUNC6 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,unsigned int) ; 
 struct page* FUNC7 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (struct mm_struct*,unsigned long) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC26 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 struct page* FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int FUNC33 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC36 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC37 (struct page*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC41 (int) ; 
 struct page* FUNC42 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct page *FUNC44(struct vm_area_struct *vma, unsigned long address,
			unsigned int flags)
{
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *ptep, pte;
	spinlock_t *ptl;
	struct page *page;
	struct mm_struct *mm = vma->vm_mm;

	page = FUNC4(mm, address, flags & FOLL_WRITE);
	if (!FUNC2(page)) {
		FUNC0(flags & FOLL_GET);
		goto out;
	}

	page = NULL;
	pgd = FUNC16(mm, address);
	if (FUNC15(*pgd) || FUNC41(FUNC14(*pgd)))
		goto no_page_table;

	pud = FUNC36(pgd, address);
	if (FUNC35(*pud))
		goto no_page_table;
	if (FUNC34(*pud)) {
		FUNC0(flags & FOLL_GET);
		page = FUNC6(mm, address, pud, flags & FOLL_WRITE);
		goto out;
	}
	if (FUNC41(FUNC33(*pud)))
		goto no_page_table;

	pmd = FUNC20(pud, address);
	if (FUNC19(*pmd))
		goto no_page_table;
	if (FUNC18(*pmd) && vma->vm_flags & VM_HUGETLB) {
		FUNC0(flags & FOLL_GET);
		page = FUNC5(mm, address, pmd, flags & FOLL_WRITE);
		goto out;
	}
	if (FUNC21(*pmd)) {
		if (flags & FOLL_SPLIT) {
			FUNC40(mm, pmd);
			goto split_fallthrough;
		}
		FUNC38(&mm->page_table_lock);
		if (FUNC11(FUNC21(*pmd))) {
			if (FUNC41(FUNC22(*pmd))) {
				FUNC39(&mm->page_table_lock);
				FUNC43(vma->anon_vma, pmd);
			} else {
				page = FUNC7(mm, address,
							     pmd, flags);
				FUNC39(&mm->page_table_lock);
				goto out;
			}
		} else
			FUNC39(&mm->page_table_lock);
		/* fall through */
	}
split_fallthrough:
	if (FUNC41(FUNC17(*pmd)))
		goto no_page_table;

	ptep = FUNC26(mm, pmd, address, &ptl);

	pte = *ptep;
	if (!FUNC29(pte)) {
		swp_entry_t entry;
		/*
		 * KSM's break_ksm() relies upon recognizing a ksm page
		 * even while it is being migrated, so for that case we
		 * need migration_entry_wait().
		 */
		if (FUNC11(!(flags & FOLL_MIGRATION)))
			goto no_page;
		if (FUNC25(pte) || FUNC24(pte))
			goto no_page;
		entry = FUNC30(pte);
		if (!FUNC9(entry))
			goto no_page;
		FUNC31(ptep, ptl);
		FUNC13(mm, pmd, address);
		goto split_fallthrough;
	}
	if ((flags & FOLL_WRITE) && !FUNC32(pte))
		goto unlock;

	page = FUNC42(vma, address, pte);
	if (FUNC41(!page)) {
		if ((flags & FOLL_DUMP) ||
		    !FUNC10(FUNC28(pte)))
			goto bad_page;
		page = FUNC27(pte);
	}

	if (flags & FOLL_GET)
		FUNC8(page);
	if (flags & FOLL_TOUCH) {
		if ((flags & FOLL_WRITE) &&
		    !FUNC23(pte) && !FUNC3(page))
			FUNC37(page);
		/*
		 * pte_mkyoung() would be more correct here, but atomic care
		 * is needed to avoid losing the dirty bit: it is easier to use
		 * mark_page_accessed().
		 */
		FUNC12(page);
	}
unlock:
	FUNC31(ptep, ptl);
out:
	return page;

bad_page:
	FUNC31(ptep, ptl);
	return FUNC1(-EFAULT);

no_page:
	FUNC31(ptep, ptl);
	if (!FUNC25(pte))
		return page;

no_page_table:
	/*
	 * When core dumping an enormous anonymous area that nobody
	 * has touched so far, we don't want to allocate unnecessary pages or
	 * page tables.  Return error instead of NULL to skip handle_mm_fault,
	 * then get_dump_page() will return NULL to leave a hole in the dump.
	 * But we can only make this optimization where a hole would surely
	 * be zero-filled if handle_mm_fault() actually did handle it.
	 */
	if ((flags & FOLL_DUMP) &&
	    (!vma->vm_ops || !vma->vm_ops->fault))
		return FUNC1(-EFAULT);
	return page;
}