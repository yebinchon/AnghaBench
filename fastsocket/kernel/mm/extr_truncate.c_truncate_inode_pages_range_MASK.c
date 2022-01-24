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
struct page {int index; } ;
struct address_space {scalar_t__ nrpages; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PAGEVEC_SIZE ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct page* FUNC4 (struct address_space*,int const) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int FUNC10 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC11 (struct pagevec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct pagevec*,struct address_space*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC14 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 

void FUNC19(struct address_space *mapping,
				loff_t lstart, loff_t lend)
{
	const pgoff_t start = (lstart + PAGE_CACHE_SIZE-1) >> PAGE_CACHE_SHIFT;
	const unsigned partial = lstart & (PAGE_CACHE_SIZE - 1);
	struct pagevec pvec;
	pgoff_t index;
	pgoff_t end;
	int i;

	if (mapping->nrpages == 0)
		return;

	FUNC0((lend & (PAGE_CACHE_SIZE - 1)) != (PAGE_CACHE_SIZE - 1));
	end = (lend >> PAGE_CACHE_SHIFT);

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

			if (!FUNC16(page))
				continue;
			FUNC2(page->index != index);
			if (FUNC1(page)) {
				FUNC17(page);
				continue;
			}
			FUNC14(mapping, page);
			FUNC17(page);
		}
		FUNC13(&pvec);
		FUNC6();
		FUNC3();
		index++;
	}

	if (partial) {
		struct page *page = FUNC4(mapping, start - 1);
		if (page) {
			FUNC18(page);
			FUNC15(page, partial);
			FUNC17(page);
			FUNC9(page);
		}
	}

	index = start;
	for ( ; ; ) {
		FUNC3();
		if (!FUNC12(&pvec, mapping, index,
			FUNC8(end - index, (pgoff_t)PAGEVEC_SIZE - 1) + 1)) {
			if (index == start)
				break;
			index = start;
			continue;
		}
		if (index == start && pvec.pages[0]->index > end) {
			FUNC13(&pvec);
			break;
		}
		FUNC7();
		for (i = 0; i < FUNC10(&pvec); i++) {
			struct page *page = pvec.pages[i];

			/* We rely upon deletion not changing page->index */
			index = page->index;
			if (index > end)
				break;

			FUNC5(page);
			FUNC2(page->index != index);
			FUNC18(page);
			FUNC14(mapping, page);
			FUNC17(page);
		}
		FUNC13(&pvec);
		FUNC6();
		index++;
	}
}