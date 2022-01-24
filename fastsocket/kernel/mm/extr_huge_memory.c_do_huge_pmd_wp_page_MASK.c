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
struct vm_area_struct {int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  anon_vma; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  page_table_lock; } ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long HPAGE_PMD_MASK ; 
 int /*<<< orphan*/  HPAGE_PMD_NR ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  THP_FAULT_ALLOC ; 
 int /*<<< orphan*/  THP_FAULT_FALLBACK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,struct page*,unsigned long,struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int FUNC10 (struct page*,struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct page*,struct vm_area_struct*,unsigned long) ; 
 int FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 struct page* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 
 int /*<<< orphan*/  FUNC25 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (struct page*) ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (struct vm_area_struct*) ; 
 scalar_t__ FUNC31 (struct vm_area_struct*) ; 
 scalar_t__ FUNC32 (int) ; 
 int /*<<< orphan*/  FUNC33 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 

int FUNC34(struct mm_struct *mm, struct vm_area_struct *vma,
			unsigned long address, pmd_t *pmd, pmd_t orig_pmd)
{
	int ret = 0;
	struct page *page, *new_page;
	unsigned long haddr;

	FUNC2(!vma->anon_vma);
	FUNC26(&mm->page_table_lock);
	if (FUNC32(!FUNC21(*pmd, orig_pmd)))
		goto out_unlock;

	page = FUNC20(orig_pmd);
	FUNC2(!FUNC0(page) || !FUNC1(page));
	haddr = address & HPAGE_PMD_MASK;
	if (FUNC15(page) == 1) {
		pmd_t entry;
		entry = FUNC19(orig_pmd);
		entry = FUNC9(FUNC17(entry), vma);
		if (FUNC23(vma, haddr, pmd, entry,  1))
			FUNC33(vma, address, entry);
		ret |= VM_FAULT_WRITE;
		goto out_unlock;
	}
	FUNC8(page);
	FUNC27(&mm->page_table_lock);

	if (FUNC31(vma) &&
	    !FUNC29())
		new_page = FUNC4(FUNC30(vma),
					      vma, haddr, FUNC13(), 0);
	else
		new_page = NULL;

	if (FUNC32(!new_page)) {
		FUNC6(THP_FAULT_FALLBACK);
		ret = FUNC7(mm, vma, address,
						   pmd, orig_pmd, page, haddr);
		if (ret & VM_FAULT_OOM)
			FUNC28(page);
		FUNC24(page);
		goto out;
	}
	FUNC6(THP_FAULT_ALLOC);

	if (FUNC32(FUNC10(new_page, mm, GFP_KERNEL))) {
		FUNC24(new_page);
		FUNC28(page);
		FUNC24(page);
		ret |= VM_FAULT_OOM;
		goto out;
	}

	FUNC5(new_page, page, haddr, vma, HPAGE_PMD_NR);
	FUNC3(new_page);

	FUNC26(&mm->page_table_lock);
	FUNC24(page);
	if (FUNC32(!FUNC21(*pmd, orig_pmd))) {
		FUNC11(new_page);
		FUNC24(new_page);
	} else {
		pmd_t entry;
		FUNC2(!FUNC1(page));
		entry = FUNC12(new_page, vma->vm_page_prot);
		entry = FUNC9(FUNC17(entry), vma);
		entry = FUNC18(entry);
		FUNC22(vma, haddr, pmd);
		FUNC14(new_page, vma, haddr);
		FUNC25(mm, haddr, pmd, entry);
		FUNC33(vma, address, entry);
		FUNC16(page);
		FUNC24(page);
		ret |= VM_FAULT_WRITE;
	}
out_unlock:
	FUNC27(&mm->page_table_lock);
out:
	return ret;
}