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
typedef  void page ;
struct address_space {int /*<<< orphan*/  page_tree; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 void* FUNC3 (void**) ; 
 scalar_t__ FUNC4 (void*) ; 
 void** FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int) ; 

struct page *FUNC9(struct address_space *mapping, pgoff_t offset)
{
	void **pagep;
	struct page *page;

	FUNC6();
repeat:
	page = NULL;
	pagep = FUNC5(&mapping->page_tree, offset);
	if (pagep) {
		page = FUNC3(pagep);
		if (FUNC8(!page))
			goto out;
		if (FUNC4(page)) {
			if (FUNC2(page))
				goto repeat;
			/*
			 * Otherwise, shmem/tmpfs must be storing a swap entry
			 * here as an exceptional entry: so return it without
			 * attempting to raise page count.
			 */
			goto out;
		}
		if (!FUNC0(page))
			goto repeat;

		/*
		 * Has the page moved?
		 * This is part of the lockless pagecache protocol. See
		 * include/linux/pagemap.h for details.
		 */
		if (FUNC8(page != *pagep)) {
			FUNC1(page);
			goto repeat;
		}
	}
out:
	FUNC7();

	return page;
}