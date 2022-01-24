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
struct pagevec {struct page** pages; } ;
struct page {scalar_t__ index; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 scalar_t__ PAGEVEC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 unsigned long FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int FUNC7 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC8 (struct pagevec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct pagevec*,struct address_space*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 

unsigned long FUNC13(struct address_space *mapping,
		pgoff_t start, pgoff_t end)
{
	struct pagevec pvec;
	pgoff_t index = start;
	unsigned long ret;
	unsigned long count = 0;
	int i;

	/*
	 * Note: this function may get called on a shmem/tmpfs mapping:
	 * pagevec_lookup() might then return 0 prematurely (because it
	 * got a gangful of swap entries); but it's hardly worth worrying
	 * about - it can rarely have anything to free from such a mapping
	 * (most pages are dirty), and already skips over any difficulties.
	 */

	FUNC8(&pvec, 0);
	while (index <= end && FUNC9(&pvec, mapping, index,
			FUNC6(end - index, (pgoff_t)PAGEVEC_SIZE - 1) + 1)) {
		FUNC5();
		for (i = 0; i < FUNC7(&pvec); i++) {
			struct page *page = pvec.pages[i];

			/* We rely upon deletion not changing page->index */
			index = page->index;
			if (index > end)
				break;

			if (!FUNC11(page))
				continue;
			FUNC0(page->index != index);
			ret = FUNC3(page);
			FUNC12(page);
			/*
			 * Invalidation is a hint that the page is no longer
			 * of interest and try to speed up its reclaim.
			 */
			if (!ret)
				FUNC2(page);
			count += ret;
		}
		FUNC10(&pvec);
		FUNC4();
		FUNC1();
		index++;
	}
	return count;
}