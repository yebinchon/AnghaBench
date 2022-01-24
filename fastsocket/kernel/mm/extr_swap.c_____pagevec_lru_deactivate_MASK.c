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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*,struct zone*) ; 
 struct zone* FUNC1 (struct page*) ; 
 int FUNC2 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC3 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC4 (struct page**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct pagevec *pvec)
{
	int i;
	struct zone *zone = NULL;

	for (i = 0; i < FUNC2(pvec); i++) {
		struct page *page = pvec->pages[i];
		struct zone *pagezone = FUNC1(page);

		if (pagezone != zone) {
			if (zone)
				FUNC6(&zone->lru_lock);
			zone = pagezone;
			FUNC5(&zone->lru_lock);
		}
		FUNC0(page, zone);
	}
	if (zone)
		FUNC6(&zone->lru_lock);

	FUNC4(pvec->pages, pvec->nr, pvec->cold);
	FUNC3(pvec);
}