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
struct page {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  PAGEVEC_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 struct buffer_head* FUNC10 (struct page*) ; 
 unsigned int FUNC11 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC12 (struct pagevec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct pagevec*,struct address_space*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 

void FUNC17(struct address_space *mapping)
{
	struct pagevec pvec;
	unsigned int i;
	pgoff_t index = 0;

	FUNC12(&pvec, 0);

	while (FUNC13(&pvec, mapping, &index, PAGECACHE_TAG_DIRTY,
				  PAGEVEC_SIZE)) {
		for (i = 0; i < FUNC11(&pvec); i++) {
			struct page *page = pvec.pages[i];
			struct buffer_head *bh, *head;

			FUNC9(page);
			FUNC1(page);
			FUNC0(page);
			bh = head = FUNC10(page);
			do {
				FUNC8(bh);
				FUNC3(bh);
				FUNC5(bh);
				FUNC6(bh);
				FUNC4(bh);
				FUNC15(bh);
				bh = bh->b_this_page;
			} while (bh != head);

			FUNC2(page);
			FUNC16(page);
		}
		FUNC14(&pvec);
		FUNC7();
	}
}