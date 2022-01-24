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
struct pagevec {int /*<<< orphan*/  cold; int /*<<< orphan*/  nr; struct page** pages; } ;
struct page {int /*<<< orphan*/  lru; } ;
struct lruvec {int /*<<< orphan*/ * lists; } ;
typedef  enum lru_list { ____Placeholder_lru_list } lru_list ;

/* Variables and functions */
 int /*<<< orphan*/  PGROTATED ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct lruvec* FUNC5 (struct zone*,struct page*,int,int) ; 
 int FUNC6 (struct page*) ; 
 struct zone* FUNC7 (struct page*) ; 
 int FUNC8 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC9 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC10 (struct page**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct pagevec *pvec)
{
	int i;
	int pgmoved = 0;
	struct zone *zone = NULL;

	for (i = 0; i < FUNC8(pvec); i++) {
		struct page *page = pvec->pages[i];
		struct zone *pagezone = FUNC7(page);

		if (pagezone != zone) {
			if (zone)
				FUNC12(&zone->lru_lock);
			zone = pagezone;
			FUNC11(&zone->lru_lock);
		}
		if (FUNC1(page) && !FUNC0(page) && !FUNC2(page)) {
			enum lru_list lru = FUNC6(page);
			struct lruvec *lruvec;

			lruvec = FUNC5(FUNC7(page),
							   page, lru, lru);
			FUNC4(&page->lru, &lruvec->lists[lru]);
			pgmoved++;
		}
	}
	if (zone)
		FUNC12(&zone->lru_lock);
	FUNC3(PGROTATED, pgmoved);
	FUNC10(pvec->pages, pvec->nr, pvec->cold);
	FUNC9(pvec);
}