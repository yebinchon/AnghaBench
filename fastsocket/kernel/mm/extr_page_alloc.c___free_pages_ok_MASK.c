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
struct page {int /*<<< orphan*/ * mapping; } ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  PGFREE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct page*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static void FUNC18(struct page *page, unsigned int order)
{
	unsigned long flags;
	int i;
	int bad = 0;
	int wasMlocked = FUNC2(page);

	FUNC12(page, order);

	if (FUNC0(page))
		page->mapping = NULL;
	for (i = 0 ; i < (1 << order) ; ++i)
		bad += FUNC9(page + i);
	if (bad)
		return;

	if (!FUNC1(page)) {
		FUNC5(FUNC15(page),PAGE_SIZE<<order);
		FUNC6(FUNC15(page),
					   PAGE_SIZE << order);
	}
	FUNC4(page, order);
	FUNC11(page, 1 << order, 0);

	FUNC14(flags);
	if (FUNC17(wasMlocked))
		FUNC8(page);
	FUNC3(PGFREE, 1 << order);
	FUNC7(FUNC16(page), page, order,
					FUNC10(page));
	FUNC13(flags);
}