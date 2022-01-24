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
struct page {int dummy; } ;

/* Variables and functions */
 int MIGRATE_ISOLATE ; 
 int MIGRATE_MOVABLE ; 
 int MIGRATE_RESERVE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ pageblock_order ; 

__attribute__((used)) static bool FUNC3(struct page *page)
{

	int migratetype = FUNC1(page);

	/* Don't interfere with memory hot-remove or the min_free_kbytes blocks */
	if (migratetype == MIGRATE_ISOLATE || migratetype == MIGRATE_RESERVE)
		return false;

	/* If the page is a large free page, then allow migration */
	if (FUNC0(page) && FUNC2(page) >= pageblock_order)
		return true;

	/* If the block is MIGRATE_MOVABLE, allow migration */
	if (migratetype == MIGRATE_MOVABLE)
		return true;

	/* Otherwise skip the block */
	return false;
}