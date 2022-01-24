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
struct page {int /*<<< orphan*/  mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_MLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  UNEVICTABLE_PGCLEARED ; 
 int /*<<< orphan*/  UNEVICTABLE_PGSTRANDED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

void FUNC7(struct page *page)
{
	FUNC2(!FUNC0(page));

	if (!page->mapping) {	/* truncated ? */
		return;
	}

	FUNC4(page, NR_MLOCK);
	FUNC3(UNEVICTABLE_PGCLEARED);
	if (!FUNC5(page)) {
		FUNC6(page);
	} else {
		/*
		 * We lost the race. the page already moved to evictable list.
		 */
		if (FUNC1(page))
			FUNC3(UNEVICTABLE_PGSTRANDED);
	}
}