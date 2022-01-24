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
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct inode {struct address_space* i_mapping; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 scalar_t__ PAGEVEC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 struct buffer_head* FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct pagevec*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct pagevec*,struct address_space*,scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct pagevec*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

__attribute__((used)) static pgoff_t FUNC12(struct inode *inode, pgoff_t idx,
				    unsigned int max_pages)
{
	struct address_space *mapping = inode->i_mapping;
	pgoff_t	index;
	struct pagevec pvec;
	pgoff_t num = 0;
	int i, nr_pages, done = 0;

	if (max_pages == 0)
		return 0;
	FUNC7(&pvec, 0);
	while (!done) {
		index = idx;
		nr_pages = FUNC8(&pvec, mapping, &index,
					      PAGECACHE_TAG_DIRTY,
					      (pgoff_t)PAGEVEC_SIZE);
		if (nr_pages == 0)
			break;
		for (i = 0; i < nr_pages; i++) {
			struct page *page = pvec.pages[i];
			struct buffer_head *bh, *head;

			FUNC4(page);
			if (FUNC10(page->mapping != mapping) ||
			    !FUNC0(page) ||
			    FUNC1(page) ||
			    page->index != idx) {
				done = 1;
				FUNC11(page);
				break;
			}
			if (FUNC6(page)) {
				bh = head = FUNC5(page);
				do {
					if (!FUNC2(bh) &&
					    !FUNC3(bh))
						done = 1;
					bh = bh->b_this_page;
				} while (!done && (bh != head));
			}
			FUNC11(page);
			if (done)
				break;
			idx++;
			num++;
			if (num >= max_pages) {
				done = 1;
				break;
			}
		}
		FUNC9(&pvec);
	}
	return num;
}