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
struct vm_area_struct {scalar_t__ anon_vma; struct vm_area_struct* vm_next; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; struct vm_area_struct* mmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct vm_area_struct*,int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct mm_struct *mm,
				swp_entry_t entry, struct page *page)
{
	struct vm_area_struct *vma;
	int ret = 0;

	if (!FUNC2(&mm->mmap_sem)) {
		/*
		 * Activate page so shrink_inactive_list is unlikely to unmap
		 * its ptes while lock is dropped, so swapoff can make progress.
		 */
		FUNC0(page);
		FUNC4(page);
		FUNC1(&mm->mmap_sem);
		FUNC3(page);
	}
	for (vma = mm->mmap; vma; vma = vma->vm_next) {
		if (vma->anon_vma && (ret = FUNC5(vma, entry, page)))
			break;
	}
	FUNC6(&mm->mmap_sem);
	return (ret < 0)? ret: 0;
}