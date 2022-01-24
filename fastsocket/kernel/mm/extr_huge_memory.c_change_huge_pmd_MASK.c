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
struct vm_area_struct {struct mm_struct* vm_mm; int /*<<< orphan*/  anon_vma; } ;
struct mm_struct {int /*<<< orphan*/  page_table_lock; } ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC10(struct vm_area_struct *vma, pmd_t *pmd,
		unsigned long addr, pgprot_t newprot)
{
	struct mm_struct *mm = vma->vm_mm;
	int ret = 0;

	FUNC6(&mm->page_table_lock);
	if (FUNC0(FUNC2(*pmd))) {
		if (FUNC8(FUNC3(*pmd))) {
			FUNC7(&mm->page_table_lock);
			FUNC9(vma->anon_vma, pmd);
		} else {
			pmd_t entry;

			entry = FUNC4(mm, addr, pmd);
			entry = FUNC1(entry, newprot);
			FUNC5(mm, addr, pmd, entry);
			FUNC7(&vma->vm_mm->page_table_lock);
			ret = 1;
		}
	} else
		FUNC7(&vma->vm_mm->page_table_lock);

	return ret;
}