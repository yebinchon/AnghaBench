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
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int EBUSY ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct zone*,struct page*,int) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int FUNC4 (struct page*) ; 
 struct zone* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct page *page)
{
	int ret = -EBUSY;

	if (FUNC1(page)) {
		struct zone *zone = FUNC5(page);

		FUNC6(&zone->lru_lock);
		if (FUNC1(page) && FUNC3(page)) {
			int lru = FUNC4(page);
			ret = 0;
			FUNC0(page);

			FUNC2(zone, page, lru);
		}
		FUNC7(&zone->lru_lock);
	}
	return ret;
}