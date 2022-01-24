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
struct page {TYPE_1__* mapping; } ;
struct gfs2_sbd {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; scalar_t__ b_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct gfs2_sbd* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,struct buffer_head*) ; 
 struct buffer_head* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct page *page, unsigned long offset)
{
	struct gfs2_sbd *sdp = FUNC2(page->mapping->host);
	struct buffer_head *bh, *head;
	unsigned long pos = 0;

	FUNC0(!FUNC3(page));
	if (offset == 0)
		FUNC1(page);
	if (!FUNC6(page))
		goto out;

	bh = head = FUNC5(page);
	do {
		if (offset <= pos)
			FUNC4(sdp, bh);
		pos += bh->b_size;
		bh = bh->b_this_page;
	} while (bh != head);
out:
	if (offset == 0)
		FUNC7(page, 0);
}