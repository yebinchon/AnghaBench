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
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 unsigned int FAULT_FLAG_ALLOW_RETRY ; 
 unsigned int FAULT_FLAG_KILLABLE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

int FUNC5(struct page *page, struct mm_struct *mm,
			 unsigned int flags)
{
	if (flags & FAULT_FLAG_ALLOW_RETRY) {
		FUNC2(&mm->mmap_sem);
		if (flags & FAULT_FLAG_KILLABLE)
			FUNC4(page);
		else
			FUNC3(page);
		return 0;
	} else {
		if (flags & FAULT_FLAG_KILLABLE) {
			int ret;

			ret = FUNC1(page);
			if (ret) {
				FUNC2(&mm->mmap_sem);
				return 0;
			}
		} else
			FUNC0(page);
		return 1;
	}
}