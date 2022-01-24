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
struct vm_area_struct {int /*<<< orphan*/  vm_page_prot; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  page_table_lock; int /*<<< orphan*/  nr_ptes; } ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgtable_t ;

/* Variables and functions */
 int /*<<< orphan*/  HPAGE_PMD_NR ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int VM_FAULT_OOM ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  anon_rss ; 
 int /*<<< orphan*/  FUNC4 (struct page*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static int FUNC20(struct mm_struct *mm,
					struct vm_area_struct *vma,
					unsigned long haddr, pmd_t *pmd,
					struct page *page)
{
	int ret = 0;
	pgtable_t pgtable;

	FUNC1(!FUNC0(page));
	pgtable = FUNC13(mm, haddr);
	if (FUNC19(!pgtable)) {
		FUNC6(page);
		FUNC15(page);
		return VM_FAULT_OOM;
	}

	FUNC4(page, haddr, HPAGE_PMD_NR);
	FUNC2(page);

	FUNC17(&mm->page_table_lock);
	if (FUNC19(!FUNC11(*pmd))) {
		FUNC18(&mm->page_table_lock);
		FUNC6(page);
		FUNC15(page);
		FUNC14(mm, pgtable);
	} else {
		pmd_t entry;
		entry = FUNC7(page, vma->vm_page_prot);
		entry = FUNC5(FUNC9(entry), vma);
		entry = FUNC10(entry);
		/*
		 * The spinlocking to take the lru_lock inside
		 * page_add_new_anon_rmap() acts as a full memory
		 * barrier to be sure clear_huge_page writes become
		 * visible after the set_pmd_at() write.
		 */
		FUNC8(page, vma, haddr);
		FUNC16(mm, haddr, pmd, entry);
		FUNC12(pgtable, mm);
		FUNC3(mm, anon_rss, HPAGE_PMD_NR);
		mm->nr_ptes++;
		FUNC18(&mm->page_table_lock);
	}

	return ret;
}