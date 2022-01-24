#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct ocfs2_super {int s_clustersize_bits; int /*<<< orphan*/  sb; } ;
struct ocfs2_new_group_input {size_t chain; int clusters; int frees; scalar_t__ group; } ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_next_group; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_used; int /*<<< orphan*/  i_total; } ;
struct TYPE_7__ {TYPE_2__ bitmap1; } ;
struct ocfs2_chain_list {int /*<<< orphan*/  cl_next_free_rec; struct ocfs2_chain_rec* cl_recs; int /*<<< orphan*/  cl_bpc; int /*<<< orphan*/  cl_cpg; } ;
struct TYPE_5__ {struct ocfs2_chain_list i_chain; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_clusters; TYPE_3__ id1; TYPE_1__ id2; } ;
struct ocfs2_chain_rec {int /*<<< orphan*/  c_free; int /*<<< orphan*/  c_total; int /*<<< orphan*/  c_blkno; } ;
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_8__ {int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_clusters; } ;

/* Variables and functions */
 int EINVAL ; 
 int EROFS ; 
 int /*<<< orphan*/  GLOBAL_BITMAP_SYSTEM_INODE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  OCFS2_GROUP_ADD_CREDITS ; 
 TYPE_4__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INVALID_SLOT ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ocfs2_chain_rec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 struct inode* FUNC23 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int FUNC25 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*,int) ; 
 scalar_t__ FUNC27 (struct ocfs2_super*) ; 
 scalar_t__ FUNC28 (struct ocfs2_super*) ; 
 int FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC31 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC32 (struct ocfs2_super*,scalar_t__,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC34 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct inode*,int) ; 
 int FUNC36 (struct inode*,struct ocfs2_dinode*,struct ocfs2_new_group_input*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 

int FUNC39(struct inode *inode, struct ocfs2_new_group_input *input)
{
	int ret;
	handle_t *handle;
	struct buffer_head *main_bm_bh = NULL;
	struct inode *main_bm_inode = NULL;
	struct ocfs2_dinode *fe = NULL;
	struct ocfs2_super *osb = FUNC3(inode->i_sb);
	struct buffer_head *group_bh = NULL;
	struct ocfs2_group_desc *group = NULL;
	struct ocfs2_chain_list *cl;
	struct ocfs2_chain_rec *cr;
	u16 cl_bpc;

	FUNC17();

	if (FUNC27(osb) || FUNC28(osb))
		return -EROFS;

	main_bm_inode = FUNC23(osb,
						    GLOBAL_BITMAP_SYSTEM_INODE,
						    OCFS2_INVALID_SLOT);
	if (!main_bm_inode) {
		ret = -EINVAL;
		FUNC18(ret);
		goto out;
	}

	FUNC20(&main_bm_inode->i_mutex);

	ret = FUNC25(main_bm_inode, &main_bm_bh, 1);
	if (ret < 0) {
		FUNC18(ret);
		goto out_mutex;
	}

	fe = (struct ocfs2_dinode *)main_bm_bh->b_data;

	if (FUNC10(fe->id2.i_chain.cl_cpg) !=
				 FUNC24(osb->sb) * 8) {
		FUNC16(ML_ERROR, "The disk is too old and small."
		     " Force to do offline resize.");
		ret = -EINVAL;
		goto out_unlock;
	}

	ret = FUNC32(osb, input->group, 1, &group_bh);
	if (ret < 0) {
		FUNC16(ML_ERROR, "Can't read the group descriptor # %llu "
		     "from the device.", (unsigned long long)input->group);
		goto out_unlock;
	}

	FUNC33(FUNC0(inode), group_bh);

	ret = FUNC36(main_bm_inode, fe, input, group_bh);
	if (ret) {
		FUNC18(ret);
		goto out_unlock;
	}

	FUNC16(0, "Add a new group  %llu in chain = %u, length = %u\n",
	     (unsigned long long)input->group, input->chain, input->clusters);

	handle = FUNC34(osb, OCFS2_GROUP_ADD_CREDITS);
	if (FUNC1(handle)) {
		FUNC18(FUNC4(handle));
		ret = -EINVAL;
		goto out_unlock;
	}

	cl_bpc = FUNC10(fe->id2.i_chain.cl_bpc);
	cl = &fe->id2.i_chain;
	cr = &cl->cl_recs[input->chain];

	ret = FUNC30(handle, FUNC0(main_bm_inode),
				      group_bh, OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret < 0) {
		FUNC18(ret);
		goto out_commit;
	}

	group = (struct ocfs2_group_desc *)group_bh->b_data;
	group->bg_next_group = cr->c_blkno;

	ret = FUNC31(handle, group_bh);
	if (ret < 0) {
		FUNC18(ret);
		goto out_commit;
	}

	ret = FUNC29(handle, FUNC0(main_bm_inode),
				      main_bm_bh, OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret < 0) {
		FUNC18(ret);
		goto out_commit;
	}

	if (input->chain == FUNC10(cl->cl_next_free_rec)) {
		FUNC9(&cl->cl_next_free_rec, 1);
		FUNC15(cr, 0, sizeof(struct ocfs2_chain_rec));
	}

	cr->c_blkno = FUNC6(input->group);
	FUNC11(&cr->c_total, input->clusters * cl_bpc);
	FUNC11(&cr->c_free, input->frees * cl_bpc);

	FUNC11(&fe->id1.bitmap1.i_total, input->clusters *cl_bpc);
	FUNC11(&fe->id1.bitmap1.i_used,
		     (input->clusters - input->frees) * cl_bpc);
	FUNC11(&fe->i_clusters, input->clusters);

	FUNC31(handle, main_bm_bh);

	FUNC37(&FUNC2(main_bm_inode)->ip_lock);
	FUNC2(main_bm_inode)->ip_clusters = FUNC12(fe->i_clusters);
	FUNC13(&fe->i_size, input->clusters << osb->s_clustersize_bits);
	FUNC38(&FUNC2(main_bm_inode)->ip_lock);
	FUNC7(main_bm_inode, FUNC14(fe->i_size));

	FUNC35(main_bm_inode, input->clusters);

out_commit:
	FUNC22(osb, handle);
out_unlock:
	FUNC5(group_bh);
	FUNC5(main_bm_bh);

	FUNC26(main_bm_inode, 1);

out_mutex:
	FUNC21(&main_bm_inode->i_mutex);
	FUNC8(main_bm_inode);

out:
	FUNC19();
	return ret;
}