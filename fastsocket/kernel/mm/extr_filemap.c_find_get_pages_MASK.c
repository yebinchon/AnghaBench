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
typedef  unsigned int pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (void*) ; 
 void* FUNC4 (void**) ; 
 scalar_t__ FUNC5 (void*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,void***,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int) ; 

unsigned FUNC10(struct address_space *mapping, pgoff_t start,
			    unsigned int nr_pages, struct page **pages)
{
	unsigned int i;
	unsigned int ret;
	unsigned int nr_found;

	FUNC7();
restart:
	nr_found = FUNC6(&mapping->page_tree,
				(void ***)pages, NULL, start, nr_pages);
	ret = 0;
	for (i = 0; i < nr_found; i++) {
		struct page *page;
repeat:
		page = FUNC4((void **)pages[i]);
		if (FUNC9(!page))
			continue;

		if (FUNC5(page)) {
			if (FUNC3(page)) {
				/*
				 * Transient condition which can only trigger
				 * when entry at index 0 moves out of or back
				 * to root: none yet gotten, safe to restart.
				 */
				FUNC0(start | i);
				goto restart;
			}
			/*
			 * Otherwise, shmem/tmpfs must be storing a swap entry
			 * here as an exceptional entry: so skip over it -
			 * we only reach this from invalidate_mapping_pages().
			 */
			continue;
		}

		if (!FUNC1(page))
			goto repeat;

		/* Has the page moved? */
		if (FUNC9(page != *((void **)pages[i]))) {
			FUNC2(page);
			goto repeat;
		}

		pages[ret] = page;
		ret++;
	}
	FUNC8();
	return ret;
}