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
struct page {struct address_space* mapping; scalar_t__ index; } ;
struct address_space {int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  page_tree; int /*<<< orphan*/  nrpages; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  PAGEVEC_SIZE ; 
 int FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct page* FUNC3 (struct address_space*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 unsigned int FUNC7 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC8 (struct pagevec*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (struct pagevec*,struct address_space*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pagevec*) ; 
 struct page* FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ *,scalar_t__,struct page*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 

void FUNC18(struct address_space *dmap,
			   struct address_space *smap)
{
	struct pagevec pvec;
	unsigned int i, n;
	pgoff_t index = 0;
	int err;

	FUNC8(&pvec, 0);
repeat:
	n = FUNC9(&pvec, smap, index, PAGEVEC_SIZE);
	if (!n)
		return;
	index = pvec.pages[n - 1]->index + 1;

	for (i = 0; i < FUNC7(&pvec); i++) {
		struct page *page = pvec.pages[i], *dpage;
		pgoff_t offset = page->index;

		FUNC4(page);
		dpage = FUNC3(dmap, offset);
		if (dpage) {
			/* override existing page on the destination cache */
			FUNC1(FUNC0(dpage));
			FUNC5(dpage, page, 0);
			FUNC17(dpage);
			FUNC6(dpage);
		} else {
			struct page *page2;

			/* move the page to the destination cache */
			FUNC14(&smap->tree_lock);
			page2 = FUNC11(&smap->page_tree, offset);
			FUNC1(page2 != page);

			smap->nrpages--;
			FUNC15(&smap->tree_lock);

			FUNC14(&dmap->tree_lock);
			err = FUNC12(&dmap->page_tree, offset, page);
			if (FUNC16(err < 0)) {
				FUNC1(err == -EEXIST);
				page->mapping = NULL;
				FUNC6(page); /* for cache */
			} else {
				page->mapping = dmap;
				dmap->nrpages++;
				if (FUNC0(page))
					FUNC13(&dmap->page_tree,
							   offset,
							   PAGECACHE_TAG_DIRTY);
			}
			FUNC15(&dmap->tree_lock);
		}
		FUNC17(page);
	}
	FUNC10(&pvec);
	FUNC2();

	goto repeat;
}