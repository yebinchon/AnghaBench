#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int /*<<< orphan*/  anon_vma; } ;
struct page {int dummy; } ;
struct mmu_gather {TYPE_1__* mm; } ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgtable_t ;
struct TYPE_4__ {int /*<<< orphan*/  page_table_lock; int /*<<< orphan*/  nr_ptes; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPAGE_PMD_NR ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  anon_rss ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct page* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct mmu_gather*,struct page*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC17(struct mmu_gather *tlb, struct vm_area_struct *vma,
		 pmd_t *pmd)
{
	int ret = 0;

	FUNC12(&tlb->mm->page_table_lock);
	if (FUNC4(FUNC9(*pmd))) {
		if (FUNC15(FUNC10(*pmd))) {
			FUNC13(&tlb->mm->page_table_lock);
			FUNC16(vma->anon_vma,
					     pmd);
		} else {
			struct page *page;
			pgtable_t pgtable;
			pgtable = FUNC3(tlb->mm);
			page = FUNC8(*pmd);
			FUNC7(pmd);
			FUNC6(page);
			FUNC1(FUNC5(page) < 0);
			FUNC2(tlb->mm, anon_rss, -HPAGE_PMD_NR);
			FUNC1(!FUNC0(page));
			tlb->mm->nr_ptes--;
			FUNC13(&tlb->mm->page_table_lock);
			FUNC14(tlb, page);
			FUNC11(tlb->mm, pgtable);
			ret = 1;
		}
	} else
		FUNC13(&tlb->mm->page_table_lock);

	return ret;
}