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
struct pagevec {struct page** pages; } ;
struct page {unsigned long index; } ;
struct mpage_da_data {unsigned long next_page; unsigned long first_page; int /*<<< orphan*/  pages_written; TYPE_1__* wbc; struct inode* inode; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {long pages_skipped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PAGEVEC_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int FUNC3 (struct page*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct pagevec*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pagevec*,struct address_space*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pagevec*) ; 

__attribute__((used)) static int FUNC7(struct mpage_da_data *mpd)
{
	long pages_skipped;
	struct pagevec pvec;
	unsigned long index, end;
	int ret = 0, err, nr_pages, i;
	struct inode *inode = mpd->inode;
	struct address_space *mapping = inode->i_mapping;

	FUNC0(mpd->next_page <= mpd->first_page);
	/*
	 * We need to start from the first_page to the next_page - 1
	 * to make sure we also write the mapped dirty buffer_heads.
	 * If we look at mpd->b_blocknr we would only be looking
	 * at the currently mapped buffer_heads.
	 */
	index = mpd->first_page;
	end = mpd->next_page - 1;

	FUNC4(&pvec, 0);
	while (index <= end) {
		nr_pages = FUNC5(&pvec, mapping, index, PAGEVEC_SIZE);
		if (nr_pages == 0)
			break;
		for (i = 0; i < nr_pages; i++) {
			struct page *page = pvec.pages[i];

			index = page->index;
			if (index > end)
				break;
			index++;

			FUNC0(!FUNC1(page));
			FUNC0(FUNC2(page));

			pages_skipped = mpd->wbc->pages_skipped;
			err = FUNC3(page, mpd->wbc);
			if (!err && (pages_skipped == mpd->wbc->pages_skipped))
				/*
				 * have successfully written the page
				 * without skipping the same
				 */
				mpd->pages_written++;
			/*
			 * In error case, we have to continue because
			 * remaining pages are still locked
			 * XXX: unlock and re-dirty them?
			 */
			if (ret == 0)
				ret = err;
		}
		FUNC6(&pvec);
	}
	return ret;
}