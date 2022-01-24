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
struct address_space {int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  AS_EIO ; 
 int /*<<< orphan*/  AS_ENOSPC ; 
 int EIO ; 
 int ENOSPC ; 
 int /*<<< orphan*/  PAGECACHE_TAG_WRITEBACK ; 
 scalar_t__ PAGEVEC_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct pagevec*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pagevec*,struct address_space*,scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct pagevec*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

int FUNC8(struct address_space *mapping,
				pgoff_t start, pgoff_t end)
{
	struct pagevec pvec;
	int nr_pages;
	int ret = 0;
	pgoff_t index;

	if (end < start)
		return 0;

	FUNC3(&pvec, 0);
	index = start;
	while ((index <= end) &&
			(nr_pages = FUNC4(&pvec, mapping, &index,
			PAGECACHE_TAG_WRITEBACK,
			FUNC2(end - index, (pgoff_t)PAGEVEC_SIZE-1) + 1)) != 0) {
		unsigned i;

		for (i = 0; i < nr_pages; i++) {
			struct page *page = pvec.pages[i];

			/* until radix tree lookup accepts end_index */
			if (page->index > end)
				continue;

			FUNC7(page);
			if (FUNC0(page))
				ret = -EIO;
		}
		FUNC5(&pvec);
		FUNC1();
	}

	/* Check for outstanding write errors */
	if (FUNC6(AS_ENOSPC, &mapping->flags))
		ret = -ENOSPC;
	if (FUNC6(AS_EIO, &mapping->flags))
		ret = -EIO;

	return ret;
}