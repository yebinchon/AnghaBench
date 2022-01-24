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
struct buffer_head {int b_blocknr; unsigned long b_size; struct buffer_head* b_this_page; int /*<<< orphan*/ * b_private; int /*<<< orphan*/  b_count; scalar_t__ b_state; int /*<<< orphan*/ * b_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 long PAGE_SIZE ; 
 struct buffer_head* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*,struct page*,long) ; 

struct buffer_head *FUNC6(struct page *page, unsigned long size,
		int retry)
{
	struct buffer_head *bh, *head;
	long offset;

try_again:
	head = NULL;
	offset = PAGE_SIZE;
	while ((offset -= size) >= 0) {
		bh = FUNC0(GFP_NOFS);
		if (!bh)
			goto no_grow;

		bh->b_bdev = NULL;
		bh->b_this_page = head;
		bh->b_blocknr = -1;
		head = bh;

		bh->b_state = 0;
		FUNC1(&bh->b_count, 0);
		bh->b_private = NULL;
		bh->b_size = size;

		/* Link the buffer to its page */
		FUNC5(bh, page, offset);

		FUNC4(bh, NULL, NULL);
	}
	return head;
/*
 * In case anything failed, we just free everything we got.
 */
no_grow:
	if (head) {
		do {
			bh = head;
			head = head->b_this_page;
			FUNC2(bh);
		} while (head);
	}

	/*
	 * Return failure for non-async IO requests.  Async IO requests
	 * are not allowed to fail, so we have to wait until buffer heads
	 * become available.  But we don't want tasks sleeping with 
	 * partially complete buffers, so all were released above.
	 */
	if (!retry)
		return NULL;

	/* We're _really_ low on memory. Now we just
	 * wait for old buffer heads to become free due to
	 * finishing IO.  Since this is an async request and
	 * the reserve list is empty, we're sure there are 
	 * async buffer heads in use.
	 */
	FUNC3();
	goto try_again;
}