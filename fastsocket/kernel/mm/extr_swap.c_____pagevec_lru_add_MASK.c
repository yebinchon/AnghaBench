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
struct page {int dummy; } ;
typedef  enum lru_list { ____Placeholder_lru_list } lru_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct zone*,struct page*,int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct zone* FUNC10 (struct page*) ; 
 int FUNC11 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC12 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC13 (struct page**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct zone*,struct page*,int,int) ; 

void FUNC17(struct pagevec *pvec, enum lru_list lru)
{
	int i;
	struct zone *zone = NULL;

	FUNC5(FUNC9(lru));

	for (i = 0; i < FUNC11(pvec); i++) {
		struct page *page = pvec->pages[i];
		struct zone *pagezone = FUNC10(page);
		int file;
		int active;

		if (pagezone != zone) {
			if (zone)
				FUNC15(&zone->lru_lock);
			zone = pagezone;
			FUNC14(&zone->lru_lock);
		}
		FUNC5(FUNC0(page));
		FUNC5(FUNC2(page));
		FUNC5(FUNC1(page));
		FUNC4(page);
		active = FUNC7(lru);
		file = FUNC8(lru);
		if (active)
			FUNC3(page);
		FUNC16(zone, page, file, active);
		FUNC6(zone, page, lru);
	}
	if (zone)
		FUNC15(&zone->lru_lock);
	FUNC13(pvec->pages, pvec->nr, pvec->cold);
	FUNC12(pvec);
}