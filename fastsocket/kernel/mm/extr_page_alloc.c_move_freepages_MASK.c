#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct zone {TYPE_1__* free_area; } ;
struct page {int /*<<< orphan*/  lru; } ;
struct TYPE_2__ {int /*<<< orphan*/ * free_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct zone*) ; 

__attribute__((used)) static int FUNC11(struct zone *zone,
			  struct page *start_page, struct page *end_page,
			  int migratetype)
{
	struct page *page;
	unsigned long order;
	int pages_moved = 0;

#ifndef CONFIG_HOLES_IN_ZONE
	/*
	 * page_zone is not safe to call in this context when
	 * CONFIG_HOLES_IN_ZONE is set. This bug check is probably redundant
	 * anyway as we check zone boundaries in move_freepages_block().
	 * Remove at a later date when no bug reports exist related to
	 * grouping pages by mobility
	 */
	FUNC0(FUNC8(start_page) != FUNC8(end_page));
#endif

	for (page = start_page; page <= end_page;) {
		/* Make sure we are not inadvertently changing nodes */
		FUNC2(FUNC6(page) != FUNC10(zone));

		if (!FUNC9(FUNC7(page))) {
			page++;
			continue;
		}

		if (!FUNC1(page)) {
			page++;
			continue;
		}

		order = FUNC5(page);
		FUNC4(&page->lru);
		FUNC3(&page->lru,
			&zone->free_area[order].free_list[migratetype]);
		page += 1 << order;
		pages_moved += 1 << order;
	}

	return pages_moved;
}