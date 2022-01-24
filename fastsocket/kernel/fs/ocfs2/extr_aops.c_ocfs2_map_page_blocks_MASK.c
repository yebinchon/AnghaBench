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
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct inode {int i_blkbits; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {struct buffer_head* b_this_page; int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_bdev; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 scalar_t__ FUNC10 (struct inode*,struct page*,unsigned int) ; 
 struct buffer_head* FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*,unsigned int,int /*<<< orphan*/ ) ; 

int FUNC18(struct page *page, u64 *p_blkno,
			  struct inode *inode, unsigned int from,
			  unsigned int to, int new)
{
	int ret = 0;
	struct buffer_head *head, *bh, *wait[2], **wait_bh = wait;
	unsigned int block_end, block_start;
	unsigned int bsize = 1 << inode->i_blkbits;

	if (!FUNC12(page))
		FUNC6(page, bsize, 0);

	head = FUNC11(page);
	for (bh = head, block_start = 0; bh != head || !block_start;
	     bh = bh->b_this_page, block_start += bsize) {
		block_end = block_start + bsize;

		FUNC5(bh);

		/*
		 * Ignore blocks outside of our i/o range -
		 * they may belong to unallocated clusters.
		 */
		if (block_start >= to || block_end <= from) {
			if (FUNC0(page))
				FUNC14(bh);
			continue;
		}

		/*
		 * For an allocating write with cluster size >= page
		 * size, we always write the entire page.
		 */
		if (new)
			FUNC13(bh);

		if (!FUNC2(bh)) {
			FUNC8(bh, inode->i_sb, *p_blkno);
			FUNC15(bh->b_bdev, bh->b_blocknr);
		}

		if (FUNC0(page)) {
			if (!FUNC4(bh))
				FUNC14(bh);
		} else if (!FUNC4(bh) && !FUNC1(bh) &&
			   !FUNC3(bh) &&
			   FUNC10(inode, page, block_start) &&
			   (block_start < from || block_end > to)) {
			FUNC7(READ, 1, &bh);
			*wait_bh++=bh;
		}

		*p_blkno = *p_blkno + 1;
	}

	/*
	 * If we issued read requests - let them complete.
	 */
	while(wait_bh > wait) {
		FUNC16(*--wait_bh);
		if (!FUNC4(*wait_bh))
			ret = -EIO;
	}

	if (ret == 0 || !new)
		return ret;

	/*
	 * If we get -EIO above, zero out any newly allocated blocks
	 * to avoid exposing stale data.
	 */
	bh = head;
	block_start = 0;
	do {
		block_end = block_start + bsize;
		if (block_end <= from)
			goto next_bh;
		if (block_start >= to)
			break;

		FUNC17(page, block_start, bh->b_size);
		FUNC14(bh);
		FUNC9(bh);

next_bh:
		block_start = block_end;
		bh = bh->b_this_page;
	} while (bh != head);

	return ret;
}