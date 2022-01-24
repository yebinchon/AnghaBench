#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_blkno; int /*<<< orphan*/  bg_bits; } ;
struct TYPE_3__ {int /*<<< orphan*/  cl_cpg; int /*<<< orphan*/  cl_bpc; } ;
struct TYPE_4__ {TYPE_1__ i_chain; } ;
struct ocfs2_dinode {TYPE_2__ id2; int /*<<< orphan*/  i_clusters; } ;
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EROFS ; 
 int /*<<< orphan*/  GLOBAL_BITMAP_SYSTEM_INODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  OCFS2_GROUP_EXTEND_CREDITS ; 
 int /*<<< orphan*/  OCFS2_INVALID_SLOT ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_dinode*) ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 struct inode* FUNC17 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,int) ; 
 scalar_t__ FUNC21 (struct ocfs2_super*) ; 
 scalar_t__ FUNC22 (struct ocfs2_super*) ; 
 int FUNC23 (struct inode*,struct ocfs2_dinode*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/ * FUNC24 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,struct buffer_head*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct inode*,scalar_t__) ; 

int FUNC28(struct inode * inode, int new_clusters)
{
	int ret;
	handle_t *handle;
	struct buffer_head *main_bm_bh = NULL;
	struct buffer_head *group_bh = NULL;
	struct inode *main_bm_inode = NULL;
	struct ocfs2_dinode *fe = NULL;
	struct ocfs2_group_desc *group = NULL;
	struct ocfs2_super *osb = FUNC3(inode->i_sb);
	u16 cl_bpc;
	u32 first_new_cluster;
	u64 lgd_blkno;

	FUNC11();

	if (FUNC21(osb) || FUNC22(osb))
		return -EROFS;

	if (new_clusters < 0)
		return -EINVAL;
	else if (new_clusters == 0)
		return 0;

	main_bm_inode = FUNC17(osb,
						    GLOBAL_BITMAP_SYSTEM_INODE,
						    OCFS2_INVALID_SLOT);
	if (!main_bm_inode) {
		ret = -EINVAL;
		FUNC12(ret);
		goto out;
	}

	FUNC14(&main_bm_inode->i_mutex);

	ret = FUNC19(main_bm_inode, &main_bm_bh, 1);
	if (ret < 0) {
		FUNC12(ret);
		goto out_mutex;
	}

	fe = (struct ocfs2_dinode *)main_bm_bh->b_data;

	/* main_bm_bh is validated by inode read inside ocfs2_inode_lock(),
	 * so any corruption is a code bug. */
	FUNC0(!FUNC2(fe));

	if (FUNC7(fe->id2.i_chain.cl_cpg) !=
				 FUNC18(osb->sb) * 8) {
		FUNC10(ML_ERROR, "The disk is too old and small. "
		     "Force to do offline resize.");
		ret = -EINVAL;
		goto out_unlock;
	}

	first_new_cluster = FUNC8(fe->i_clusters);
	lgd_blkno = FUNC27(main_bm_inode,
					      first_new_cluster - 1);

	ret = FUNC23(main_bm_inode, fe, lgd_blkno,
					  &group_bh);
	if (ret < 0) {
		FUNC12(ret);
		goto out_unlock;
	}
	group = (struct ocfs2_group_desc *)group_bh->b_data;

	cl_bpc = FUNC7(fe->id2.i_chain.cl_bpc);
	if (FUNC7(group->bg_bits) / cl_bpc + new_clusters >
		FUNC7(fe->id2.i_chain.cl_cpg)) {
		ret = -EINVAL;
		goto out_unlock;
	}

	FUNC10(0, "extend the last group at %llu, new clusters = %d\n",
	     (unsigned long long)FUNC9(group->bg_blkno), new_clusters);

	handle = FUNC24(osb, OCFS2_GROUP_EXTEND_CREDITS);
	if (FUNC1(handle)) {
		FUNC12(FUNC4(handle));
		ret = -EINVAL;
		goto out_unlock;
	}

	/* update the last group descriptor and inode. */
	ret = FUNC25(handle, main_bm_inode,
						main_bm_bh, group_bh,
						first_new_cluster,
						new_clusters);
	if (ret) {
		FUNC12(ret);
		goto out_commit;
	}

	FUNC26(main_bm_inode, new_clusters);

out_commit:
	FUNC16(osb, handle);
out_unlock:
	FUNC5(group_bh);
	FUNC5(main_bm_bh);

	FUNC20(main_bm_inode, 1);

out_mutex:
	FUNC15(&main_bm_inode->i_mutex);
	FUNC6(main_bm_inode);

out:
	FUNC13();
	return ret;
}