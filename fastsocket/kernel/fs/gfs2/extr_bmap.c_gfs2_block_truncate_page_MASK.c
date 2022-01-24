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
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;
struct TYPE_2__ {unsigned int s_blocksize; int s_blocksize_bits; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,unsigned int,int /*<<< orphan*/ ) ; 
 struct page* FUNC5 (struct address_space*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,unsigned int,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 struct buffer_head* FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC18(struct address_space *mapping, loff_t from)
{
	struct inode *inode = mapping->host;
	struct gfs2_inode *ip = FUNC0(inode);
	unsigned long index = from >> PAGE_CACHE_SHIFT;
	unsigned offset = from & (PAGE_CACHE_SIZE-1);
	unsigned blocksize, iblock, length, pos;
	struct buffer_head *bh;
	struct page *page;
	int err;

	page = FUNC5(mapping, index, GFP_NOFS);
	if (!page)
		return 0;

	blocksize = inode->i_sb->s_blocksize;
	length = blocksize - (offset & (blocksize - 1));
	iblock = index << (PAGE_CACHE_SHIFT - inode->i_sb->s_blocksize_bits);

	if (!FUNC13(page))
		FUNC4(page, blocksize, 0);

	/* Find the buffer that contains "offset" */
	bh = FUNC11(page);
	pos = blocksize;
	while (offset >= pos) {
		bh = bh->b_this_page;
		iblock++;
		pos += blocksize;
	}

	err = 0;

	if (!FUNC2(bh)) {
		FUNC6(inode, iblock, bh, 0);
		/* unmapped? It's a hole - nothing to do */
		if (!FUNC2(bh))
			goto unlock;
	}

	/* Ok, it's mapped. Make sure it's up-to-date */
	if (FUNC1(page))
		FUNC14(bh);

	if (!FUNC3(bh)) {
		err = -EIO;
		FUNC9(READ, 1, &bh);
		FUNC16(bh);
		/* Uhhuh. Read error. Complain and punt. */
		if (!FUNC3(bh))
			goto unlock;
		err = 0;
	}

	if (!FUNC7(ip))
		FUNC8(ip->i_gl, bh);

	FUNC17(page, offset, length);
	FUNC10(bh);
unlock:
	FUNC15(page);
	FUNC12(page);
	return err;
}