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
struct address_space {int dummy; } ;
typedef  scalar_t__ pgoff_t ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int EBUSY ; 
 scalar_t__ PAGEVEC_SIZE ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 int FUNC10 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC11 (struct pagevec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct pagevec*,struct address_space*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct address_space*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 

int FUNC17(struct address_space *mapping,
				  pgoff_t start, pgoff_t end)
{
	struct pagevec pvec;
	pgoff_t index;
	int i;
	int ret = 0;
	int ret2 = 0;
	int did_range_unmap = 0;

	FUNC11(&pvec, 0);
	index = start;
	while (index <= end && FUNC12(&pvec, mapping, index,
			FUNC8(end - index, (pgoff_t)PAGEVEC_SIZE - 1) + 1)) {
		FUNC7();
		for (i = 0; i < FUNC10(&pvec); i++) {
			struct page *page = pvec.pages[i];

			/* We rely upon deletion not changing page->index */
			index = page->index;
			if (index > end)
				break;

			FUNC5(page);
			FUNC1(page->index != index);
			if (page->mapping != mapping) {
				FUNC14(page);
				continue;
			}
			FUNC16(page);
			if (FUNC9(page)) {
				if (!did_range_unmap) {
					/*
					 * Zap the rest of the file in one hit.
					 */
					FUNC15(mapping,
					   (loff_t)index << PAGE_CACHE_SHIFT,
					   (loff_t)(1 + end - index)
							 << PAGE_CACHE_SHIFT,
					    0);
					did_range_unmap = 1;
				} else {
					/*
					 * Just zap this page
					 */
					FUNC15(mapping,
					   (loff_t)index << PAGE_CACHE_SHIFT,
					   PAGE_CACHE_SIZE, 0);
				}
			}
			FUNC0(FUNC9(page));
			ret2 = FUNC3(mapping, page);
			if (ret2 == 0) {
				if (!FUNC4(mapping, page))
					ret2 = -EBUSY;
			}
			if (ret2 < 0)
				ret = ret2;
			FUNC14(page);
		}
		FUNC13(&pvec);
		FUNC6();
		FUNC2();
		index++;
	}
	return ret;
}