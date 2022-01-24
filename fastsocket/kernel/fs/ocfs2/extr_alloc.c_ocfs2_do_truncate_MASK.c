#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u64 ;
struct ocfs2_truncate_context {int /*<<< orphan*/  tc_dealloc; } ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_list {scalar_t__ l_tree_depth; TYPE_2__* l_recs; } ;
struct ocfs2_extent_block {scalar_t__ h_next_leaf_blk; scalar_t__ h_blkno; } ;
struct TYPE_4__ {struct ocfs2_extent_list i_list; } ;
struct ocfs2_dinode {scalar_t__ i_last_eb_blk; int /*<<< orphan*/  i_clusters; TYPE_1__ id2; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {int /*<<< orphan*/  ip_lock; scalar_t__ ip_clusters; } ;
struct TYPE_5__ {scalar_t__ e_int_clusters; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int OCFS2_EXT_REFCOUNTED ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,struct ocfs2_alloc_context*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct inode*,unsigned int,struct ocfs2_path*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ocfs2_path*) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC17 (struct inode*,struct ocfs2_path*,int /*<<< orphan*/ *,struct ocfs2_truncate_context*,unsigned int,scalar_t__*,int*) ; 
 int FUNC18 (struct ocfs2_super*,int /*<<< orphan*/ *,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct ocfs2_super *osb,
			     unsigned int clusters_to_del,
			     struct inode *inode,
			     struct buffer_head *fe_bh,
			     handle_t *handle,
			     struct ocfs2_truncate_context *tc,
			     struct ocfs2_path *path,
			     struct ocfs2_alloc_context *meta_ac)
{
	int status;
	struct ocfs2_dinode *fe;
	struct ocfs2_extent_block *last_eb = NULL;
	struct ocfs2_extent_list *el;
	struct buffer_head *last_eb_bh = NULL;
	u64 delete_blk = 0;
	u8 rec_flags;

	fe = (struct ocfs2_dinode *) fe_bh->b_data;

	status = FUNC12(inode, clusters_to_del,
					     path, &last_eb_bh);
	if (status < 0) {
		FUNC6(status);
		goto bail;
	}

	/*
	 * Each component will be touched, so we might as well journal
	 * here to avoid having to handle errors later.
	 */
	status = FUNC15(FUNC0(inode), handle, path);
	if (status < 0) {
		FUNC6(status);
		goto bail;
	}

	if (last_eb_bh) {
		status = FUNC14(handle, FUNC0(inode), last_eb_bh,
						 OCFS2_JOURNAL_ACCESS_WRITE);
		if (status < 0) {
			FUNC6(status);
			goto bail;
		}

		last_eb = (struct ocfs2_extent_block *) last_eb_bh->b_data;
	}

	el = &(fe->id2.i_list);

	/*
	 * Lower levels depend on this never happening, but it's best
	 * to check it up here before changing the tree.
	 */
	if (el->l_tree_depth && el->l_recs[0].e_int_clusters == 0) {
		FUNC11(inode->i_sb,
			    "Inode %lu has an empty extent record, depth %u\n",
			    inode->i_ino, FUNC3(el->l_tree_depth));
		status = -EROFS;
		goto bail;
	}

	FUNC21(inode,
			FUNC9(osb->sb, clusters_to_del));
	FUNC19(&FUNC1(inode)->ip_lock);
	FUNC1(inode)->ip_clusters = FUNC5(fe->i_clusters) -
				      clusters_to_del;
	FUNC20(&FUNC1(inode)->ip_lock);
	FUNC4(&fe->i_clusters, -clusters_to_del);
	inode->i_blocks = FUNC13(inode);

	status = FUNC17(inode, path, handle, tc,
				 clusters_to_del, &delete_blk, &rec_flags);
	if (status) {
		FUNC6(status);
		goto bail;
	}

	if (FUNC5(fe->i_clusters) == 0) {
		/* trunc to zero is a special case. */
		el->l_tree_depth = 0;
		fe->i_last_eb_blk = 0;
	} else if (last_eb)
		fe->i_last_eb_blk = last_eb->h_blkno;

	status = FUNC16(handle, fe_bh);
	if (status < 0) {
		FUNC6(status);
		goto bail;
	}

	if (last_eb) {
		/* If there will be a new last extent block, then by
		 * definition, there cannot be any leaves to the right of
		 * him. */
		last_eb->h_next_leaf_blk = 0;
		status = FUNC16(handle, last_eb_bh);
		if (status < 0) {
			FUNC6(status);
			goto bail;
		}
	}

	if (delete_blk) {
		if (rec_flags & OCFS2_EXT_REFCOUNTED)
			status = FUNC10(inode, handle,
					FUNC8(osb->sb,
								 delete_blk),
					clusters_to_del, meta_ac,
					&tc->tc_dealloc, 1);
		else
			status = FUNC18(osb, handle,
							   delete_blk,
							   clusters_to_del);
		if (status < 0) {
			FUNC6(status);
			goto bail;
		}
	}
	status = 0;
bail:
	FUNC2(last_eb_bh);
	FUNC7(status);
	return status;
}