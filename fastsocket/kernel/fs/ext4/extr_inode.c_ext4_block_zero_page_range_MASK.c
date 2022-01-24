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
struct page {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_lblk_t ;
typedef  int ext4_fsblk_t ;
struct TYPE_2__ {unsigned int s_blocksize; int s_blocksize_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NOBH ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  READ ; 
 int __GFP_FS ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 struct page* FUNC11 (struct address_space*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 int FUNC13 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 struct buffer_head* FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 scalar_t__ FUNC20 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 int /*<<< orphan*/  FUNC22 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC23 (struct page*,unsigned int,int) ; 

int FUNC24(handle_t *handle,
		struct address_space *mapping, loff_t from, loff_t length)
{
	ext4_fsblk_t index = from >> PAGE_CACHE_SHIFT;
	unsigned offset = from & (PAGE_CACHE_SIZE-1);
	unsigned blocksize, max, pos;
	ext4_lblk_t iblock;
	struct inode *inode = mapping->host;
	struct buffer_head *bh;
	struct page *page;
	int err = 0;

	page = FUNC11(mapping, from >> PAGE_CACHE_SHIFT,
				   FUNC13(mapping) & ~__GFP_FS);
	if (!page)
		return -ENOMEM;

	blocksize = inode->i_sb->s_blocksize;
	max = blocksize - (offset & (blocksize - 1));

	/*
	 * correct length if it does not fall between
	 * 'from' and the end of the block
	 */
	if (length > max || length < 0)
		length = max;

	iblock = index << (PAGE_CACHE_SHIFT - inode->i_sb->s_blocksize_bits);

	/*
	 * For "nobh" option,  we can only work if we don't need to
	 * read-in the page - otherwise we create buffers to do the IO.
	 */
	if (!FUNC17(page) && FUNC20(inode->i_sb, NOBH) &&
	     FUNC10(inode) && FUNC1(page)) {
		FUNC23(page, offset, length);
		FUNC19(page);
		goto unlock;
	}

	if (!FUNC17(page))
		FUNC5(page, blocksize, 0);

	/* Find the buffer that contains "offset" */
	bh = FUNC15(page);
	pos = blocksize;
	while (offset >= pos) {
		bh = bh->b_this_page;
		iblock++;
		pos += blocksize;
	}

	err = 0;
	if (FUNC2(bh)) {
		FUNC0(bh, "freed: skip");
		goto unlock;
	}

	if (!FUNC3(bh)) {
		FUNC0(bh, "unmapped");
		FUNC6(inode, iblock, bh, 0);
		/* unmapped? It's a hole - nothing to do */
		if (!FUNC3(bh)) {
			FUNC0(bh, "still unmapped");
			goto unlock;
		}
	}

	/* Ok, it's mapped. Make sure it's up-to-date */
	if (FUNC1(page))
		FUNC18(bh);

	if (!FUNC4(bh)) {
		err = -EIO;
		FUNC12(READ, 1, &bh);
		FUNC22(bh);
		/* Uhhuh. Read error. Complain and punt. */
		if (!FUNC4(bh))
			goto unlock;
	}

	if (FUNC9(inode)) {
		FUNC0(bh, "get write access");
		err = FUNC8(handle, bh);
		if (err)
			goto unlock;
	}

	FUNC23(page, offset, length);

	FUNC0(bh, "zeroed end of block");

	err = 0;
	if (FUNC9(inode)) {
		err = FUNC7(handle, inode, bh);
	} else
		FUNC14(bh);

unlock:
	FUNC21(page);
	FUNC16(page);
	return err;
}