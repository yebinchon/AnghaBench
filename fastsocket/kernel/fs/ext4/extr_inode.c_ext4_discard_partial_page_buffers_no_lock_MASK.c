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
struct page {int index; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {struct buffer_head* b_this_page; int /*<<< orphan*/ * b_bdev; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_lblk_t ;
typedef  int ext4_fsblk_t ;
struct TYPE_2__ {unsigned int s_blocksize; int s_blocksize_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int EINVAL ; 
 int EIO ; 
 int EXT4_DISCARD_PARTIAL_PG_ZERO_UNMAPPED ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  READ ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 scalar_t__ FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 
 struct buffer_head* FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC22 (struct page*,unsigned int,unsigned int) ; 

int FUNC23(handle_t *handle,
		struct inode *inode, struct page *page, loff_t from,
		loff_t length, int flags)
{
	ext4_fsblk_t index = from >> PAGE_CACHE_SHIFT;
	unsigned int offset = from & (PAGE_CACHE_SIZE-1);
	unsigned int blocksize, max, pos;
	ext4_lblk_t iblock;
	struct buffer_head *bh;
	int err = 0;

	blocksize = inode->i_sb->s_blocksize;
	max = PAGE_CACHE_SIZE - offset;

	if (index != page->index)
		return -EINVAL;

	/*
	 * correct length if it does not fall between
	 * 'from' and the end of the page
	 */
	if (length > max || length < 0)
		length = max;

	iblock = index << (PAGE_CACHE_SHIFT - inode->i_sb->s_blocksize_bits);

	if (!FUNC19(page))
		FUNC11(page, blocksize, 0);

	/* Find the buffer that contains "offset" */
	bh = FUNC18(page);
	pos = blocksize;
	while (offset >= pos) {
		bh = bh->b_this_page;
		iblock++;
		pos += blocksize;
	}

	pos = offset;
	while (pos < offset + length) {
		unsigned int end_of_block, range_to_discard;

		err = 0;

		/* The length of space left to zero and unmap */
		range_to_discard = offset + length - pos;

		/* The length of space until the end of the block */
		end_of_block = blocksize - (pos & (blocksize-1));

		/*
		 * Do not unmap or zero past end of block
		 * for this buffer head
		 */
		if (range_to_discard > end_of_block)
			range_to_discard = end_of_block;


		/*
		 * Skip this buffer head if we are only zeroing unampped
		 * regions of the page
		 */
		if (flags & EXT4_DISCARD_PARTIAL_PG_ZERO_UNMAPPED &&
			FUNC2(bh))
				goto next;

		/* If the range is block aligned, unmap */
		if (range_to_discard == blocksize) {
			FUNC5(bh);
			bh->b_bdev = NULL;
			FUNC6(bh);
			FUNC8(bh);
			FUNC7(bh);
			FUNC4(bh);
			FUNC9(bh);
			FUNC10(bh);
			FUNC22(page, pos, range_to_discard);
			FUNC0(bh, "Buffer discarded");
			goto next;
		}

		/*
		 * If this block is not completely contained in the range
		 * to be discarded, then it is not going to be released. Because
		 * we need to keep this block, we need to make sure this part
		 * of the page is uptodate before we modify it by writeing
		 * partial zeros on it.
		 */
		if (!FUNC2(bh)) {
			/*
			 * Buffer head must be mapped before we can read
			 * from the block
			 */
			FUNC0(bh, "unmapped");
			FUNC12(inode, iblock, bh, 0);
			/* unmapped? It's a hole - nothing to do */
			if (!FUNC2(bh)) {
				FUNC0(bh, "still unmapped");
				goto next;
			}
		}

		/* Ok, it's mapped. Make sure it's up-to-date */
		if (FUNC1(page))
			FUNC20(bh);

		if (!FUNC3(bh)) {
			err = -EIO;
			FUNC16(READ, 1, &bh);
			FUNC21(bh);
			/* Uhhuh. Read error. Complain and punt.*/
			if (!FUNC3(bh))
				goto next;
		}

		if (FUNC15(inode)) {
			FUNC0(bh, "get write access");
			err = FUNC14(handle, bh);
			if (err)
				goto next;
		}

		FUNC22(page, pos, range_to_discard);

		err = 0;
		if (FUNC15(inode)) {
			err = FUNC13(handle, inode, bh);
		} else
			FUNC17(bh);

		FUNC0(bh, "Partial buffer zeroed");
next:
		bh = bh->b_this_page;
		iblock++;
		pos += range_to_discard;
	}

	return err;
}