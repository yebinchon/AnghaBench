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
struct zone {int /*<<< orphan*/  lock; scalar_t__ pages_scanned; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_FREE_PAGES ; 
 int /*<<< orphan*/  ZONE_ALL_UNRECLAIMABLE ; 
 int /*<<< orphan*/  FUNC0 (struct page*,struct zone*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct zone*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct zone*) ; 
 int /*<<< orphan*/  FUNC5 (struct zone*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct zone *zone, struct page *page, int order,
				int migratetype)
{
	FUNC2(&zone->lock);
	FUNC5(zone, ZONE_ALL_UNRECLAIMABLE);
	zone->pages_scanned = 0;

	FUNC0(page, zone, order, migratetype);
	FUNC1(zone, NR_FREE_PAGES, 1 << order);
	FUNC3(&zone->lock);
	/* A batch of pages have been freed so check zone pressure */
	FUNC4(zone);
}