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
typedef  int /*<<< orphan*/  u16 ;
struct ocfs2_xattr_block {int /*<<< orphan*/  xb_suballoc_slot; int /*<<< orphan*/  xb_suballoc_bit; int /*<<< orphan*/  xb_blkno; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EXTENT_ALLOC_SYSTEM_INODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCFS2_SUBALLOC_FREE ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC12 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int) ; 
 int FUNC15 (struct inode*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/ * FUNC16 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct inode*,struct buffer_head*,struct ocfs2_caching_info*,struct buffer_head*) ; 

__attribute__((used)) static int FUNC19(struct inode *inode,
				  u64 block,
				  struct ocfs2_caching_info *ref_ci,
				  struct buffer_head *ref_root_bh)
{
	struct inode *xb_alloc_inode;
	struct buffer_head *xb_alloc_bh = NULL;
	struct buffer_head *blk_bh = NULL;
	struct ocfs2_xattr_block *xb;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	handle_t *handle;
	int ret = 0;
	u64 blk, bg_blkno;
	u16 bit;

	ret = FUNC15(inode, block, &blk_bh);
	if (ret < 0) {
		FUNC7(ret);
		goto out;
	}

	ret = FUNC18(inode, blk_bh, ref_ci, ref_root_bh);
	if (ret < 0) {
		FUNC7(ret);
		goto out;
	}

	xb = (struct ocfs2_xattr_block *)blk_bh->b_data;
	blk = FUNC6(xb->xb_blkno);
	bit = FUNC5(xb->xb_suballoc_bit);
	bg_blkno = FUNC17(blk, bit);

	xb_alloc_inode = FUNC12(osb,
				EXTENT_ALLOC_SYSTEM_INODE,
				FUNC5(xb->xb_suballoc_slot));
	if (!xb_alloc_inode) {
		ret = -ENOMEM;
		FUNC7(ret);
		goto out;
	}
	FUNC8(&xb_alloc_inode->i_mutex);

	ret = FUNC13(xb_alloc_inode, &xb_alloc_bh, 1);
	if (ret < 0) {
		FUNC7(ret);
		goto out_mutex;
	}

	handle = FUNC16(osb, OCFS2_SUBALLOC_FREE);
	if (FUNC0(handle)) {
		ret = FUNC2(handle);
		FUNC7(ret);
		goto out_unlock;
	}

	ret = FUNC11(handle, xb_alloc_inode, xb_alloc_bh,
				       bit, bg_blkno, 1);
	if (ret < 0)
		FUNC7(ret);

	FUNC10(osb, handle);
out_unlock:
	FUNC14(xb_alloc_inode, 1);
	FUNC3(xb_alloc_bh);
out_mutex:
	FUNC9(&xb_alloc_inode->i_mutex);
	FUNC4(xb_alloc_inode);
out:
	FUNC3(blk_bh);
	return ret;
}