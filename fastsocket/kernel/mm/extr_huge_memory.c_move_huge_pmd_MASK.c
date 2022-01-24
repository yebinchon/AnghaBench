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
struct vm_area_struct {int /*<<< orphan*/  anon_vma; struct mm_struct* vm_mm; } ;
struct mm_struct {int /*<<< orphan*/  page_table_lock; } ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned long HPAGE_PMD_MASK ; 
 unsigned long HPAGE_PMD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC11(struct vm_area_struct *vma, unsigned long old_addr,
		  unsigned long new_addr, unsigned long old_end,
		  pmd_t *old_pmd, pmd_t *new_pmd)
{
	int ret = 0;
	pmd_t pmd;

	struct mm_struct *mm = vma->vm_mm;

	if ((old_addr & ~HPAGE_PMD_MASK) ||
	    (new_addr & ~HPAGE_PMD_MASK) ||
	    (old_addr + HPAGE_PMD_SIZE) > old_end)
		goto out;

	/*
	 * The destination pmd shouldn't be established, free_pgtables()
	 * should have release it.
	 */
	if (!FUNC3(*new_pmd)) {
		FUNC1(1);
		FUNC0(FUNC4(*new_pmd));
		goto out;
	}

	FUNC8(&mm->page_table_lock);
	if (FUNC2(FUNC4(*old_pmd))) {
		if (FUNC5(*old_pmd)) {
			FUNC9(&mm->page_table_lock);
			FUNC10(vma->anon_vma, old_pmd);
			ret = -1;
		} else {
			pmd = FUNC6(mm, old_addr, old_pmd);
			FUNC0(!FUNC3(*new_pmd));
			FUNC7(mm, new_addr, new_pmd, pmd);
			FUNC9(&mm->page_table_lock);
			ret = 1;
		}
	} else
		FUNC9(&mm->page_table_lock);

out:
	return ret;
}