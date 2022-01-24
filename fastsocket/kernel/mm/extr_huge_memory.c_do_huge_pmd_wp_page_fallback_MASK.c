#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int /*<<< orphan*/  vm_page_prot; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  page_table_lock; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ pmd_t ;
typedef  int /*<<< orphan*/  pgtable_t ;

/* Variables and functions */
 int GFP_HIGHUSER_MOVABLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HPAGE_PMD_NR ; 
 int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_WRITE ; 
 int __GFP_OTHER_NODE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (int,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct page*,struct page*,unsigned long,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct page**) ; 
 struct page** FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 scalar_t__ FUNC10 (struct page*,struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct mm_struct*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC18 (struct vm_area_struct*,unsigned long,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (int) ; 

__attribute__((used)) static int FUNC29(struct mm_struct *mm,
					struct vm_area_struct *vma,
					unsigned long address,
					pmd_t *pmd, pmd_t orig_pmd,
					struct page *page,
					unsigned long haddr)
{
	pgtable_t pgtable;
	pmd_t _pmd = {0};
	int ret = 0, i;
	struct page **pages;

	pages = FUNC8(sizeof(struct page *) * HPAGE_PMD_NR,
			GFP_KERNEL);
	if (FUNC28(!pages)) {
		ret |= VM_FAULT_OOM;
		goto out;
	}

	for (i = 0; i < HPAGE_PMD_NR; i++) {
		pages[i] = FUNC3(GFP_HIGHUSER_MOVABLE |
					       __GFP_OTHER_NODE,
					       vma, address, FUNC15(page));
		if (FUNC28(!pages[i] ||
			     FUNC10(pages[i], mm,
						       GFP_KERNEL))) {
			if (pages[i])
				FUNC23(pages[i]);
			while (--i >= 0) {
				FUNC11(pages[i]);
				FUNC23(pages[i]);
			}
			FUNC7(pages);
			ret |= VM_FAULT_OOM;
			goto out;
		}
	}

	for (i = 0; i < HPAGE_PMD_NR; i++) {
		FUNC5(pages[i], page + i,
				   haddr + PAGE_SHIFT*i, vma);
		FUNC2(pages[i]);
		FUNC4();
	}

	FUNC26(&mm->page_table_lock);
	if (FUNC28(!FUNC17(*pmd, orig_pmd)))
		goto out_free_pages;
	FUNC1(!FUNC0(page));

	FUNC18(vma, haddr, pmd);
	/* leave pmd empty until pte is filled */

	pgtable = FUNC6(mm);
	FUNC16(mm, &_pmd, pgtable);

	for (i = 0; i < HPAGE_PMD_NR; i++, haddr += PAGE_SIZE) {
		pte_t *pte, entry;
		entry = FUNC12(pages[i], vma->vm_page_prot);
		entry = FUNC9(FUNC19(entry), vma);
		FUNC13(pages[i], vma, haddr);
		pte = FUNC21(&_pmd, haddr);
		FUNC1(!FUNC20(*pte));
		FUNC24(mm, haddr, pte, entry);
		FUNC22(pte);
	}
	FUNC7(pages);

	FUNC25(); /* make pte visible before pmd */
	FUNC16(mm, pmd, pgtable);
	FUNC14(page);
	FUNC27(&mm->page_table_lock);

	ret |= VM_FAULT_WRITE;
	FUNC23(page);

out:
	return ret;

out_free_pages:
	FUNC27(&mm->page_table_lock);
	for (i = 0; i < HPAGE_PMD_NR; i++) {
		FUNC11(pages[i]);
		FUNC23(pages[i]);
	}
	FUNC7(pages);
	goto out;
}