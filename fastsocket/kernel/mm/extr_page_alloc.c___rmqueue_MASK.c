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
struct page {int dummy; } ;

/* Variables and functions */
 int MIGRATE_RESERVE ; 
 struct page* FUNC0 (struct zone*,unsigned int,int) ; 
 struct page* FUNC1 (struct zone*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,unsigned int,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static struct page *FUNC4(struct zone *zone, unsigned int order,
						int migratetype)
{
	struct page *page;

retry_reserve:
	page = FUNC1(zone, order, migratetype);

	if (FUNC3(!page) && migratetype != MIGRATE_RESERVE) {
		page = FUNC0(zone, order, migratetype);

		/*
		 * Use MIGRATE_RESERVE rather than fail an allocation. goto
		 * is used because __rmqueue_smallest is an inline function
		 * and we want just one call site
		 */
		if (!page) {
			migratetype = MIGRATE_RESERVE;
			goto retry_reserve;
		}
	}

	FUNC2(page, order, migratetype);
	return page;
}