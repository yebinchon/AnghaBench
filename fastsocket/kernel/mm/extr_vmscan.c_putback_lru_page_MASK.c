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
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int LRU_UNEVICTABLE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  UNEVICTABLE_PGCULLED ; 
 int /*<<< orphan*/  UNEVICTABLE_PGRESCUED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int) ; 
 scalar_t__ FUNC9 (struct page*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

void FUNC13(struct page *page)
{
	int lru;
	int active = !!FUNC3(page);
	int was_unevictable = FUNC2(page);

	FUNC4(FUNC1(page));

redo:
	FUNC0(page);

	if (FUNC9(page, NULL)) {
		/*
		 * For evictable pages, we can use the cache.
		 * In event of a race, worst case is we end up with an
		 * unevictable page on [in]active list.
		 * We know how to handle that.
		 */
		lru = active + FUNC10(page);
		FUNC8(page, lru);
	} else {
		/*
		 * Put unevictable pages directly on zone's unevictable
		 * list.
		 */
		lru = LRU_UNEVICTABLE;
		FUNC5(page);
		/*
		 * When racing with an mlock clearing (page is
		 * unlocked), make sure that if the other thread does
		 * not observe our setting of PG_lru and fails
		 * isolation, we see PG_mlocked cleared below and move
		 * the page back to the evictable list.
		 *
		 * The other side is TestClearPageMlocked().
		 */
		FUNC12();
	}

	/*
	 * page's status can change while we move it among lru. If an evictable
	 * page is on unevictable list, it never be freed. To avoid that,
	 * check after we added it to the list, again.
	 */
	if (lru == LRU_UNEVICTABLE && FUNC9(page, NULL)) {
		if (!FUNC7(page)) {
			FUNC11(page);
			goto redo;
		}
		/* This means someone else dropped this page from LRU
		 * So, it will be freed or putback to LRU again. There is
		 * nothing to do here.
		 */
	}

	if (was_unevictable && lru != LRU_UNEVICTABLE)
		FUNC6(UNEVICTABLE_PGRESCUED);
	else if (!was_unevictable && lru == LRU_UNEVICTABLE)
		FUNC6(UNEVICTABLE_PGCULLED);

	FUNC11(page);		/* drop ref from isolate */
}