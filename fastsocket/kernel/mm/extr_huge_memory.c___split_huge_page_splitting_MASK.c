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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  page_table_lock; } ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_CHECK_ADDRESS_PMD_NOTSPLITTING_FLAG ; 
 int /*<<< orphan*/ * FUNC0 (struct page*,struct mm_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct page *page,
				       struct vm_area_struct *vma,
				       unsigned long address)
{
	struct mm_struct *mm = vma->vm_mm;
	pmd_t *pmd;
	int ret = 0;

	FUNC2(&mm->page_table_lock);
	pmd = FUNC0(page, mm, address,
				     PAGE_CHECK_ADDRESS_PMD_NOTSPLITTING_FLAG);
	if (pmd) {
		/*
		 * We can't temporarily set the pmd to null in order
		 * to split it, the pmd must remain marked huge at all
		 * times or the VM won't take the pmd_trans_huge paths
		 * and it won't wait on the anon_vma->root->lock to
		 * serialize against split_huge_page*.
		 */
		FUNC1(vma, address, pmd);
		ret = 1;
	}
	FUNC3(&mm->page_table_lock);

	return ret;
}