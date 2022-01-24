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
struct writeback_control {long nr_to_write; int range_start; int range_end; scalar_t__ sync_mode; } ;
struct pagevec {struct page** pages; } ;
struct page {int index; struct address_space* mapping; } ;
struct mpage_da_data {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int pgoff_t ;

/* Variables and functions */
 int AOP_WRITEPAGE_ACTIVATE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int PAGECACHE_TAG_DIRTY ; 
 int PAGECACHE_TAG_TOWRITE ; 
 scalar_t__ PAGEVEC_SIZE ; 
 int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ WB_SYNC_ALL ; 
 scalar_t__ WB_SYNC_NONE ; 
 int FUNC3 (struct page*,struct writeback_control*,struct mpage_da_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pagevec*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (struct pagevec*,struct address_space*,int*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct pagevec*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 

__attribute__((used)) static int FUNC14(struct address_space *mapping,
				struct writeback_control *wbc,
				struct mpage_da_data *mpd,
				pgoff_t *done_index)
{
	int ret = 0;
	int done = 0;
	struct pagevec pvec;
	unsigned nr_pages;
	pgoff_t index;
	pgoff_t end;		/* Inclusive */
	long nr_to_write = wbc->nr_to_write;
	int tag;

	FUNC8(&pvec, 0);
	index = wbc->range_start >> PAGE_CACHE_SHIFT;
	end = wbc->range_end >> PAGE_CACHE_SHIFT;

	if (wbc->sync_mode == WB_SYNC_ALL)
		tag = PAGECACHE_TAG_TOWRITE;
	else
		tag = PAGECACHE_TAG_DIRTY;

	*done_index = index;
	while (!done && (index <= end)) {
		int i;

		nr_pages = FUNC9(&pvec, mapping, &index, tag,
			      FUNC7(end - index, (pgoff_t)PAGEVEC_SIZE-1) + 1);
		if (nr_pages == 0)
			break;

		for (i = 0; i < nr_pages; i++) {
			struct page *page = pvec.pages[i];

			/*
			 * At this point, the page may be truncated or
			 * invalidated (changing page->mapping to NULL), or
			 * even swizzled back from swapper_space to tmpfs file
			 * mapping. However, page->index will not change
			 * because we have a reference on the page.
			 */
			if (page->index > end) {
				done = 1;
				break;
			}

			*done_index = page->index + 1;

			FUNC6(page);

			/*
			 * Page truncated or invalidated. We can freely skip it
			 * then, even for data integrity operations: the page
			 * has disappeared concurrently, so there could be no
			 * real expectation of this data interity operation
			 * even if there is now a new, dirty page at the same
			 * pagecache address.
			 */
			if (FUNC11(page->mapping != mapping)) {
continue_unlock:
				FUNC12(page);
				continue;
			}

			if (!FUNC1(page)) {
				/* someone wrote it for us */
				goto continue_unlock;
			}

			if (FUNC2(page)) {
				if (wbc->sync_mode != WB_SYNC_NONE)
					FUNC13(page);
				else
					goto continue_unlock;
			}

			FUNC0(FUNC2(page));
			if (!FUNC4(page))
				goto continue_unlock;

			ret = FUNC3(page, wbc, mpd);
			if (FUNC11(ret)) {
				if (ret == AOP_WRITEPAGE_ACTIVATE) {
					FUNC12(page);
					ret = 0;
				} else {
					done = 1;
					break;
				}
			}

			if (nr_to_write > 0) {
				nr_to_write--;
				if (nr_to_write == 0 &&
				    wbc->sync_mode == WB_SYNC_NONE) {
					/*
					 * We stop writing back only if we are
					 * not doing integrity sync. In case of
					 * integrity sync we have to keep going
					 * because someone may be concurrently
					 * dirtying pages, and we might have
					 * synced a lot of newly appeared dirty
					 * pages, but have not synced all of the
					 * old dirty pages.
					 */
					done = 1;
					break;
				}
			}
		}
		FUNC10(&pvec);
		FUNC5();
	}
	return ret;
}