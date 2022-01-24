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
struct pagevec {int dummy; } ;
struct page {int /*<<< orphan*/  lru; } ;
struct lruvec {int /*<<< orphan*/ * lists; } ;
struct list_head {int dummy; } ;
typedef  enum lru_list { ____Placeholder_lru_list } lru_list ;

/* Variables and functions */
 int NR_LRU_BASE ; 
 int /*<<< orphan*/  PGDEACTIVATE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct zone*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct pagevec*) ; 
 scalar_t__ buffer_heads_over_limit ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct page* FUNC10 (struct list_head*) ; 
 struct lruvec* FUNC11 (struct zone*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct pagevec*,struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct pagevec*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct zone *zone,
				     struct list_head *list,
				     enum lru_list lru)
{
	unsigned long pgmoved = 0;
	struct pagevec pvec;
	struct page *page;

	FUNC13(&pvec, 1);

	while (!FUNC8(list)) {
		struct lruvec *lruvec;

		page = FUNC10(list);

		FUNC2(FUNC0(page));
		FUNC1(page);

		lruvec = FUNC11(zone, page, lru);
		FUNC9(&page->lru, &lruvec->lists[lru]);
		pgmoved += FUNC6(page);

		if (!FUNC12(&pvec, page) || FUNC8(list)) {
			FUNC16(&zone->lru_lock);
			if (buffer_heads_over_limit)
				FUNC14(&pvec);
			FUNC5(&pvec);
			FUNC15(&zone->lru_lock);
		}
	}
	FUNC4(zone, NR_LRU_BASE + lru, pgmoved);
	if (!FUNC7(lru))
		FUNC3(PGDEACTIVATE, pgmoved);
}