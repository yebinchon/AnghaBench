#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_7__ {void* l_next_free_rec; void* l_count; scalar_t__ l_tree_depth; } ;
struct ocfs2_xattr_tree_root {TYPE_2__ xt_list; scalar_t__ xt_last_eb_blk; void* xt_clusters; } ;
struct TYPE_6__ {struct ocfs2_xattr_tree_root xb_root; } ;
struct ocfs2_xattr_block {void* xb_flags; TYPE_1__ xb_attrs; void* xb_blkno; void* xb_fs_generation; void* xb_suballoc_bit; void* xb_suballoc_slot; } ;
struct ocfs2_super {int slot_num; int fs_generation; } ;
struct ocfs2_dinode {void* i_xattr_loc; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {TYPE_3__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_8__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 struct ocfs2_super* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  OCFS2_XATTR_BLOCK_SIGNATURE ; 
 int OCFS2_XATTR_INDEXED ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_xattr_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct ocfs2_super*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC13 (TYPE_3__*) ; 
 struct buffer_head* FUNC14 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(handle_t *handle,
				    struct inode *inode,
				    struct buffer_head *inode_bh,
				    struct ocfs2_alloc_context *meta_ac,
				    struct buffer_head **ret_bh,
				    int indexed)
{
	int ret;
	u16 suballoc_bit_start;
	u32 num_got;
	u64 first_blkno;
	struct ocfs2_dinode *di =  (struct ocfs2_dinode *)inode_bh->b_data;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	struct buffer_head *new_bh = NULL;
	struct ocfs2_xattr_block *xblk;

	ret = FUNC9(handle, FUNC0(inode), inode_bh,
				      OCFS2_JOURNAL_ACCESS_CREATE);
	if (ret < 0) {
		FUNC7(ret);
		goto end;
	}

	ret = FUNC8(osb, handle, meta_ac, 1,
				   &suballoc_bit_start, &num_got,
				   &first_blkno);
	if (ret < 0) {
		FUNC7(ret);
		goto end;
	}

	new_bh = FUNC14(inode->i_sb, first_blkno);
	FUNC12(FUNC0(inode), new_bh);

	ret = FUNC10(handle, FUNC0(inode),
				      new_bh,
				      OCFS2_JOURNAL_ACCESS_CREATE);
	if (ret < 0) {
		FUNC7(ret);
		goto end;
	}

	/* Initialize ocfs2_xattr_block */
	xblk = (struct ocfs2_xattr_block *)new_bh->b_data;
	FUNC6(xblk, 0, inode->i_sb->s_blocksize);
	FUNC15((void *)xblk, OCFS2_XATTR_BLOCK_SIGNATURE);
	xblk->xb_suballoc_slot = FUNC3(osb->slot_num);
	xblk->xb_suballoc_bit = FUNC3(suballoc_bit_start);
	xblk->xb_fs_generation = FUNC4(osb->fs_generation);
	xblk->xb_blkno = FUNC5(first_blkno);

	if (indexed) {
		struct ocfs2_xattr_tree_root *xr = &xblk->xb_attrs.xb_root;
		xr->xt_clusters = FUNC4(1);
		xr->xt_last_eb_blk = 0;
		xr->xt_list.l_tree_depth = 0;
		xr->xt_list.l_count = FUNC3(
					FUNC13(inode->i_sb));
		xr->xt_list.l_next_free_rec = FUNC3(1);
		xblk->xb_flags = FUNC3(OCFS2_XATTR_INDEXED);
	}

	ret = FUNC11(handle, new_bh);
	if (ret < 0) {
		FUNC7(ret);
		goto end;
	}
	di->i_xattr_loc = FUNC5(first_blkno);
	FUNC11(handle, inode_bh);

	*ret_bh = new_bh;
	new_bh = NULL;

end:
	FUNC2(new_bh);
	return ret;
}