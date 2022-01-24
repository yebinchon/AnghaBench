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
struct vm_area_struct {TYPE_1__* vm_mm; int /*<<< orphan*/  anon_vma; } ;
typedef  int /*<<< orphan*/  pmd_t ;
struct TYPE_2__ {int /*<<< orphan*/  page_table_lock; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct vm_area_struct *vma, pmd_t *pmd,
		unsigned long addr, unsigned long end,
		unsigned char *vec)
{
	int ret = 0;

	FUNC4(&vma->vm_mm->page_table_lock);
	if (FUNC0(FUNC2(*pmd))) {
		ret = !FUNC3(*pmd);
		FUNC5(&vma->vm_mm->page_table_lock);
		if (FUNC6(!ret))
			FUNC7(vma->anon_vma, pmd);
		else {
			/*
			 * All logical pages in the range are present
			 * if backed by a huge page.
			 */
			FUNC1(vec, 1, (end - addr) >> PAGE_SHIFT);
		}
	} else
		FUNC5(&vma->vm_mm->page_table_lock);

	return ret;
}