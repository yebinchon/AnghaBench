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
typedef  int u64 ;
struct page {scalar_t__ index; } ;
struct inode {int i_blkbits; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mapping; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; struct inode i_inode; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {int b_size; scalar_t__ b_data; } ;

/* Variables and functions */
 int BH_Uptodate ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int,int) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC8 (struct inode*) ; 
 void* FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (void*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct buffer_head* FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 

__attribute__((used)) static int FUNC20(struct gfs2_inode *ip, struct buffer_head *dibh,
			       u64 block, struct page *page)
{
	struct inode *inode = &ip->i_inode;
	struct buffer_head *bh;
	int release = 0;

	if (!page || page->index) {
		page = FUNC4(inode->i_mapping, 0, GFP_NOFS);
		if (!page)
			return -ENOMEM;
		release = 1;
	}

	if (!FUNC0(page)) {
		void *kaddr = FUNC9(page);
		u64 dsize = FUNC8(inode);
 
		if (dsize > (dibh->b_size - sizeof(struct gfs2_dinode)))
			dsize = dibh->b_size - sizeof(struct gfs2_dinode);

		FUNC13(kaddr, dibh->b_data + sizeof(struct gfs2_dinode), dsize);
		FUNC14(kaddr + dsize, 0, PAGE_CACHE_SIZE - dsize);
		FUNC10(page);

		FUNC1(page);
	}

	if (!FUNC17(page))
		FUNC3(page, 1 << inode->i_blkbits,
				     (1 << BH_Uptodate));

	bh = FUNC15(page);

	if (!FUNC2(bh))
		FUNC11(bh, inode->i_sb, block);

	FUNC18(bh);
	if (!FUNC5(ip))
		FUNC12(bh);
	if (!FUNC6(ip))
		FUNC7(ip->i_gl, bh);

	if (release) {
		FUNC19(page);
		FUNC16(page);
	}

	return 0;
}