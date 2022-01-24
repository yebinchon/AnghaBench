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
struct zone {int dummy; } ;
struct page {int /*<<< orphan*/  lru; } ;
struct lruvec {int /*<<< orphan*/ * lists; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  PGDEACTIVATE ; 
 int /*<<< orphan*/  PGROTATED ; 
 int FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct zone*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct zone*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct lruvec* FUNC12 (struct zone*,struct page*,int,int) ; 
 int FUNC13 (struct page*) ; 
 int FUNC14 (struct page*) ; 
 scalar_t__ FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct zone*,struct page*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct page *page, struct zone *zone)
{
	int lru, file;
	bool active;

	if (!FUNC4(page))
		return;

	if (FUNC5(page))
		return;

	/* Some processes are using the page */
	if (FUNC15(page))
		return;

	active = FUNC2(page);

	file = FUNC13(page);
	lru = FUNC14(page);
	FUNC10(zone, page, lru + active);
	FUNC0(page);
	FUNC1(page);
	FUNC9(zone, page, lru);

	if (FUNC6(page) || FUNC3(page)) {
		/*
		 * PG_reclaim could be raced with end_page_writeback
		 * It can make readahead confusing.  But race window
		 * is _really_ small and  it's non-critical problem.
		 */
		FUNC7(page);
	} else {
		struct lruvec *lruvec;
		/*
		 * The page's writeback ends up during pagevec
		 * We moves tha page into tail of inactive.
		 */
		lruvec = FUNC12(zone, page, lru, lru);
		FUNC11(&page->lru, &lruvec->lists[lru]);
		FUNC8(PGROTATED);
	}

	if (active)
		FUNC8(PGDEACTIVATE);
	FUNC16(zone, page, file, 0);
}