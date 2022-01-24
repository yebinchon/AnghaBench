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
struct buffer_head {int /*<<< orphan*/  b_state; struct buffer_head* b_this_page; struct page* b_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH_Uptodate_Lock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long) ; 
 struct buffer_head* FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 

__attribute__((used)) static void FUNC19(struct buffer_head *bh, int uptodate)
{
	unsigned long flags;
	struct buffer_head *first;
	struct buffer_head *tmp;
	struct page *page;
	int page_uptodate = 1;

	FUNC0(!FUNC6(bh));

	page = bh->b_page;
	if (uptodate) {
		FUNC16(bh);
	} else {
		FUNC11(bh);
		if (!FUNC15(bh))
			FUNC7(bh);
		FUNC2(page);
	}

	/*
	 * Be _very_ careful from here on. Bad things can happen if
	 * two buffer heads end IO at almost the same time and both
	 * decide that the page is now completely done.
	 */
	first = FUNC14(page);
	FUNC13(flags);
	FUNC4(BH_Uptodate_Lock, &first->b_state);
	FUNC10(bh);
	FUNC17(bh);
	tmp = bh;
	do {
		if (!FUNC9(tmp))
			page_uptodate = 0;
		if (FUNC6(tmp)) {
			FUNC0(!FUNC8(tmp));
			goto still_busy;
		}
		tmp = tmp->b_this_page;
	} while (tmp != bh);
	FUNC5(BH_Uptodate_Lock, &first->b_state);
	FUNC12(flags);

	/*
	 * If none of the buffers had errors and they are all
	 * uptodate then we can set the page uptodate.
	 */
	if (page_uptodate && !FUNC1(page))
		FUNC3(page);
	FUNC18(page);
	return;

still_busy:
	FUNC5(BH_Uptodate_Lock, &first->b_state);
	FUNC12(flags);
	return;
}