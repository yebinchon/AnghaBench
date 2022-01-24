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
struct zone {int /*<<< orphan*/  lru_lock; } ;
struct page {int flags; int mapping; int /*<<< orphan*/  _count; scalar_t__ index; int /*<<< orphan*/  _mapcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int HPAGE_PMD_NR ; 
 int /*<<< orphan*/  NR_ANON_PAGES ; 
 int /*<<< orphan*/  NR_ANON_TRANSPARENT_HUGEPAGES ; 
 int PAGE_FLAGS_CHECK_AT_PREP ; 
 long PG_dirty ; 
 long PG_mlocked ; 
 long PG_referenced ; 
 long PG_swapbacked ; 
 long PG_uptodate ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int __PG_HWPOISON ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct zone*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct zone*,struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*,struct page*) ; 
 scalar_t__ FUNC15 (struct page*) ; 
 scalar_t__ FUNC16 (struct page*) ; 
 struct zone* FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC23(struct page *page)
{
	int i;
	struct zone *zone = FUNC17(page);
	int tail_count = 0;

	/* prevent PageLRU to go away from under us, and freeze lru stats */
	FUNC21(&zone->lru_lock);
	FUNC11(page);

	for (i = HPAGE_PMD_NR - 1; i >= 1; i--) {
		struct page *page_tail = page + i;

		/* tail_page->_mapcount cannot change */
		FUNC0(FUNC16(page_tail) < 0);
		tail_count += FUNC16(page_tail);
		/* check for overflow */
		FUNC0(tail_count < 0);
		FUNC0(FUNC9(&page_tail->_count) != 0);
		FUNC8(FUNC16(page) + FUNC16(page_tail) + 1,
			   &page_tail->_count);

		/* after clearing PageTail the gup refcount can be released */
		FUNC19();

		/*
		 * retain hwpoison flag of the poisoned tail page:
		 *   fix for the unsuitable process killed on Guest Machine(KVM)
		 *   by the memory-failure.
		 */
		page_tail->flags &= ~PAGE_FLAGS_CHECK_AT_PREP | __PG_HWPOISON;
		page_tail->flags |= (page->flags &
				     ((1L << PG_referenced) |
				      (1L << PG_swapbacked) |
				      (1L << PG_mlocked) |
				      (1L << PG_uptodate)));
		page_tail->flags |= (1L << PG_dirty);

		/* clear PageTail before overwriting first_page */
		FUNC20();

		/*
		 * __split_huge_page_splitting() already set the
		 * splitting bit in all pmd that could map this
		 * hugepage, that will ensure no CPU can alter the
		 * mapcount on the head page. The mapcount is only
		 * accounted in the head page and it has to be
		 * transferred to all tail pages in the below code. So
		 * for this code to be safe, the split the mapcount
		 * can't change. But that doesn't mean userland can't
		 * keep changing and reading the page contents while
		 * we transfer the mapcount, so the pmd splitting
		 * status is achieved setting a reserved bit in the
		 * pmd, not by clearing the present bit.
		*/
		page_tail->_mapcount = page->_mapcount;

		FUNC0(page_tail->mapping);
		page_tail->mapping = page->mapping;

		page_tail->index = page->index + i;

		FUNC0(!FUNC2(page_tail));
		FUNC0(!FUNC5(page_tail));
		FUNC0(!FUNC3(page_tail));
		FUNC0(!FUNC4(page_tail));

		FUNC14(page_tail, page);
		FUNC13(zone, page, page_tail);
	}
	FUNC10(tail_count, &page->_count);
	FUNC0(FUNC9(&page->_count) <= 0);

	FUNC6(page, NR_ANON_TRANSPARENT_HUGEPAGES);
	FUNC7(zone, NR_ANON_PAGES, HPAGE_PMD_NR);

	FUNC1(page);
	FUNC12(page);
	FUNC22(&zone->lru_lock);

	for (i = 1; i < HPAGE_PMD_NR; i++) {
		struct page *page_tail = page + i;
		FUNC0(FUNC15(page_tail) <= 0);
		/*
		 * Tail pages may be freed if there wasn't any mapping
		 * like if add_to_swap() is running on a lru page that
		 * had its mapping zapped. And freeing these pages
		 * requires taking the lru_lock so we do the put_page
		 * of the tail pages after the split is complete.
		 */
		FUNC18(page_tail);
	}

	/*
	 * Only the head page (now become a regular page) is required
	 * to be pinned by the caller.
	 */
	FUNC0(FUNC15(page) <= 0);
}