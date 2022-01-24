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
struct writeback_control {scalar_t__ sync_mode; int /*<<< orphan*/  nonblocking; } ;
struct page {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;

/* Variables and functions */
 int BIO_RW_META ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 scalar_t__ WB_SYNC_ALL ; 
 scalar_t__ WB_SYNC_NONE ; 
 int WRITE ; 
 int WRITE_SYNC_PLUG ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 struct buffer_head* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct writeback_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (int,struct buffer_head*) ; 
 scalar_t__ FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 

__attribute__((used)) static int FUNC17(struct page *page, struct writeback_control *wbc)
{
	struct buffer_head *bh, *head;
	int nr_underway = 0;
	int write_op = (1 << BIO_RW_META) |
		(wbc->sync_mode == WB_SYNC_ALL ? WRITE_SYNC_PLUG : WRITE);

	FUNC0(!FUNC1(page));
	FUNC0(!FUNC9(page));

	head = FUNC8(page);
	bh = head;

	do {
		if (!FUNC4(bh))
			continue;
		/*
		 * If it's a fully non-blocking write attempt and we cannot
		 * lock the buffer then redirty the page.  Note that this can
		 * potentially cause a busy-wait loop from pdflush and kswapd
		 * activity, but those code paths have their own higher-level
		 * throttling.
		 */
		if (wbc->sync_mode != WB_SYNC_NONE || !wbc->nonblocking) {
			FUNC6(bh);
		} else if (!FUNC14(bh)) {
			FUNC10(wbc, page);
			continue;
		}
		if (FUNC13(bh)) {
			FUNC7(bh);
		} else {
			FUNC15(bh);
		}
	} while ((bh = bh->b_this_page) != head);

	/*
	 * The page and its buffers are protected by PageWriteback(), so we can
	 * drop the bh refcounts early.
	 */
	FUNC0(FUNC2(page));
	FUNC11(page);

	do {
		struct buffer_head *next = bh->b_this_page;
		if (FUNC3(bh)) {
			FUNC12(write_op, bh);
			nr_underway++;
		}
		bh = next;
	} while (bh != head);
	FUNC16(page);

	if (nr_underway == 0)
		FUNC5(page);

	return 0;
}