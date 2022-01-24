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
struct nilfs_inode_info {int /*<<< orphan*/  i_bmap; } ;
struct inode {int i_blkbits; } ;
struct buffer_head {int /*<<< orphan*/  b_page; scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 int FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int
FUNC12(struct inode *inode, unsigned long block,
			   struct buffer_head *bh,
			   void (*init_block)(struct inode *,
					      struct buffer_head *, void *))
{
	struct nilfs_inode_info *ii = FUNC0(inode);
	void *kaddr;
	int ret;

	/* Caller exclude read accesses using page lock */

	/* set_buffer_new(bh); */
	bh->b_blocknr = 0;

	ret = FUNC6(ii->i_bmap, block, (unsigned long)bh);
	if (FUNC11(ret))
		return ret;

	FUNC9(bh);

	kaddr = FUNC3(bh->b_page, KM_USER0);
	FUNC5(kaddr + FUNC1(bh), 0, 1 << inode->i_blkbits);
	if (init_block)
		init_block(inode, bh, kaddr);
	FUNC2(bh->b_page);
	FUNC4(kaddr, KM_USER0);

	FUNC10(bh);
	FUNC7(bh);
	FUNC8(inode);
	return 0;
}