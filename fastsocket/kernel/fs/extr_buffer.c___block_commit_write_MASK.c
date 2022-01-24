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
struct inode {int dummy; } ;
struct buffer_head {unsigned int b_size; struct buffer_head* b_this_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 struct buffer_head* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct page *page,
		unsigned from, unsigned to)
{
	unsigned block_start, block_end;
	int partial = 0;
	unsigned blocksize;
	struct buffer_head *bh, *head;

	bh = head = FUNC4(page);
	blocksize = bh->b_size;

	block_start = 0;
	do {
		block_end = block_start + blocksize;
		if (block_end <= from || block_start >= to) {
			if (!FUNC1(bh))
				partial = 1;
		} else {
			FUNC5(bh);
			FUNC3(bh);
		}
		FUNC2(bh);

		block_start = block_end;
		bh = bh->b_this_page;
	} while (bh != head);

	/*
	 * If this is a partial write which happened to make all buffers
	 * uptodate then we can optimize away a bogus readpage() for
	 * the next read(). Here we 'discover' whether the page went
	 * uptodate as a result of this (potentially partial) write.
	 */
	if (!partial)
		FUNC0(page);
	return 0;
}