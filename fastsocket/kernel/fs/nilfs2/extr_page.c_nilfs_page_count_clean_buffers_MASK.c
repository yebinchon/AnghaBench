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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 struct buffer_head* FUNC1 (struct page*) ; 

unsigned FUNC2(struct page *page,
					unsigned from, unsigned to)
{
	unsigned block_start, block_end;
	struct buffer_head *bh, *head;
	unsigned nc = 0;

	for (bh = head = FUNC1(page), block_start = 0;
	     bh != head || !block_start;
	     block_start = block_end, bh = bh->b_this_page) {
		block_end = block_start + bh->b_size;
		if (block_end > from && block_start < to && !FUNC0(bh))
			nc++;
	}
	return nc;
}