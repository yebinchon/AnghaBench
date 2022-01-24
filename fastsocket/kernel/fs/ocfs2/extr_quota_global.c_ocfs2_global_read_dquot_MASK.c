#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct super_block {int s_blocksize_bits; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_mem_dqinfo {int /*<<< orphan*/  dqi_gi; struct inode* dqi_gqinode; } ;
struct inode {scalar_t__ i_size; } ;
struct TYPE_6__ {int /*<<< orphan*/  dqb_curinodes; int /*<<< orphan*/  dqb_curspace; } ;
struct dquot {int dq_type; struct super_block* dq_sb; int /*<<< orphan*/  dq_off; TYPE_1__ dq_dqb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_9__ {int /*<<< orphan*/  dq_originodes; int /*<<< orphan*/  dq_origspace; int /*<<< orphan*/  dq_use_count; } ;
struct TYPE_8__ {int /*<<< orphan*/  ip_alloc_sem; } ;
struct TYPE_7__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC1 (struct dquot*) ; 
 TYPE_4__* FUNC2 (struct inode*) ; 
 struct ocfs2_super* FUNC3 (struct super_block*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct inode*,scalar_t__,scalar_t__) ; 
 int FUNC14 (struct super_block*,int) ; 
 int FUNC15 (struct ocfs2_mem_dqinfo*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_mem_dqinfo*,int) ; 
 int /*<<< orphan*/ * FUNC17 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ *,struct dquot*) ; 
 int FUNC19 (int /*<<< orphan*/ *,struct dquot*) ; 
 TYPE_2__* FUNC20 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

int FUNC22(struct dquot *dquot)
{
	int err, err2, ex = 0;
	struct super_block *sb = dquot->dq_sb;
	int type = dquot->dq_type;
	struct ocfs2_mem_dqinfo *info = FUNC20(sb, type)->dqi_priv;
	struct ocfs2_super *osb = FUNC3(sb);
	struct inode *gqinode = info->dqi_gqinode;
	int need_alloc = FUNC14(sb, type);
	handle_t *handle = NULL;

	err = FUNC15(info, 0);
	if (err < 0)
		goto out;
	err = FUNC18(&info->dqi_gi, dquot);
	if (err < 0)
		goto out_qlock;
	FUNC1(dquot)->dq_use_count++;
	FUNC1(dquot)->dq_origspace = dquot->dq_dqb.dqb_curspace;
	FUNC1(dquot)->dq_originodes = dquot->dq_dqb.dqb_curinodes;
	FUNC16(info, 0);

	if (!dquot->dq_off) {	/* No real quota entry? */
		ex = 1;
		/*
		 * Add blocks to quota file before we start a transaction since
		 * locking allocators ranks above a transaction start
		 */
		FUNC5(FUNC9());
		FUNC7(&FUNC2(gqinode)->ip_alloc_sem);
		err = FUNC13(gqinode,
			gqinode->i_size + (need_alloc << sb->s_blocksize_bits),
			gqinode->i_size);
		FUNC21(&FUNC2(gqinode)->ip_alloc_sem);
		if (err < 0)
			goto out;
	}

	handle = FUNC17(osb,
				   FUNC11(sb, type));
	if (FUNC0(handle)) {
		err = FUNC4(handle);
		goto out;
	}
	err = FUNC15(info, ex);
	if (err < 0)
		goto out_trans;
	err = FUNC19(&info->dqi_gi, dquot);
	if (ex && FUNC8(FUNC20(dquot->dq_sb, dquot->dq_type))) {
		err2 = FUNC6(dquot->dq_sb, dquot->dq_type);
		if (!err)
			err = err2;
	}
out_qlock:
	if (ex)
		FUNC16(info, 1);
	else
		FUNC16(info, 0);
out_trans:
	if (handle)
		FUNC12(osb, handle);
out:
	if (err < 0)
		FUNC10(err);
	return err;
}