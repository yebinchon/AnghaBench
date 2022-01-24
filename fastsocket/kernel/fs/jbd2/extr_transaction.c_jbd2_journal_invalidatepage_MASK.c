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
struct buffer_head {unsigned int b_size; struct buffer_head* b_this_page; } ;
typedef  int /*<<< orphan*/  journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 struct buffer_head* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 

void FUNC9(journal_t *journal,
		      struct page *page,
		      unsigned long offset)
{
	struct buffer_head *head, *bh, *next;
	unsigned int curr_off = 0;
	int may_free = 1;

	if (!FUNC2(page))
		FUNC0();
	if (!FUNC6(page))
		return;

	/* We will potentially be playing with lists other than just the
	 * data lists (especially for journaled data mode), so be
	 * cautious in our locking. */

	head = bh = FUNC5(page);
	do {
		unsigned int next_off = curr_off + bh->b_size;
		next = bh->b_this_page;

		if (offset <= curr_off) {
			/* This block is wholly outside the truncation point */
			FUNC4(bh);
			may_free &= FUNC3(journal, bh);
			FUNC8(bh);
		}
		curr_off = next_off;
		bh = next;

	} while (bh != head);

	if (!offset) {
		if (may_free && FUNC7(page))
			FUNC1(!FUNC6(page));
	}
}