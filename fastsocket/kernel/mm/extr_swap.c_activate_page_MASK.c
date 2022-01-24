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
struct page {int dummy; } ;

/* Variables and functions */
 scalar_t__ LRU_ACTIVE ; 
 int /*<<< orphan*/  PGACTIVATE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct zone*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct zone*,struct page*,int) ; 
 int FUNC7 (struct page*) ; 
 int FUNC8 (struct page*) ; 
 struct zone* FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct zone*,struct page*,int,int) ; 

void FUNC13(struct page *page)
{
	struct zone *zone = FUNC9(page);

	FUNC10(&zone->lru_lock);
	if (FUNC1(page) && !FUNC0(page) && !FUNC2(page)) {
		int file = FUNC7(page);
		int lru = FUNC8(page);
		FUNC6(zone, page, lru);

		FUNC3(page);
		lru += LRU_ACTIVE;
		FUNC5(zone, page, lru);
		FUNC4(PGACTIVATE);

		FUNC12(zone, page, file, 1);
	}
	FUNC11(&zone->lru_lock);
}