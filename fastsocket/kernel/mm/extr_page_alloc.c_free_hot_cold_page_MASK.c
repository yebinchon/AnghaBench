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
struct zone {int dummy; } ;
struct per_cpu_pages {scalar_t__ count; scalar_t__ high; scalar_t__ batch; int /*<<< orphan*/ * lists; } ;
struct page {int /*<<< orphan*/  lru; int /*<<< orphan*/ * mapping; } ;
struct TYPE_2__ {struct per_cpu_pages pcp; } ;

/* Variables and functions */
 int MIGRATE_ISOLATE ; 
 int MIGRATE_MOVABLE ; 
 int MIGRATE_PCPTYPES ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PGFREE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct zone*,struct page*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct zone*,scalar_t__,struct per_cpu_pages*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 struct zone* FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (struct page*,int) ; 
 scalar_t__ FUNC23 (int) ; 
 TYPE_1__* FUNC24 (struct zone*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC25(struct page *page, int cold)
{
	struct zone *zone = FUNC20(page);
	struct per_cpu_pages *pcp;
	unsigned long flags;
	int migratetype;
	int wasMlocked = FUNC2(page);

	FUNC14(page, 0);

	if (FUNC0(page))
		page->mapping = NULL;
	if (FUNC9(page))
		return;

	if (!FUNC1(page)) {
		FUNC5(FUNC19(page), PAGE_SIZE);
		FUNC6(FUNC19(page), PAGE_SIZE);
	}
	FUNC4(page, 0);
	FUNC13(page, 1, 0);

	pcp = &FUNC24(zone, FUNC11())->pcp;
	migratetype = FUNC12(page);
	FUNC22(page, migratetype);
	FUNC18(flags);
	if (FUNC23(wasMlocked))
		FUNC8(page);
	FUNC3(PGFREE);

	/*
	 * We only track unmovable, reclaimable and movable on pcp lists.
	 * Free ISOLATE pages back to the allocator because they are being
	 * offlined but treat RESERVE as movable pages so we can get those
	 * areas back if necessary. Otherwise, we may have to free
	 * excessively into the page allocator
	 */
	if (migratetype >= MIGRATE_PCPTYPES) {
		if (FUNC23(migratetype == MIGRATE_ISOLATE)) {
			FUNC7(zone, page, 0, migratetype);
			goto out;
		}
		migratetype = MIGRATE_MOVABLE;
	}

	if (cold)
		FUNC16(&page->lru, &pcp->lists[migratetype]);
	else
		FUNC15(&page->lru, &pcp->lists[migratetype]);
	pcp->count++;
	if (pcp->count >= pcp->high) {
		FUNC10(zone, pcp->batch, pcp);
		pcp->count -= pcp->batch;
	}

out:
	FUNC17(flags);
	FUNC21();
}