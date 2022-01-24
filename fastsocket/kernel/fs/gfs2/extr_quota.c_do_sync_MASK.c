#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct gfs2_sbd {int /*<<< orphan*/  sd_quota_inode; } ;
struct gfs2_quota_data {int /*<<< orphan*/  qd_flags; int /*<<< orphan*/  qd_change_sync; TYPE_2__* qd_gl; } ;
struct gfs2_quota {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mutex; } ;
struct gfs2_inode {TYPE_2__* i_gl; TYPE_1__ i_inode; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_alloc_parms {unsigned int target; int /*<<< orphan*/  aflags; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_5__ {struct gfs2_sbd* gl_sbd; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_NOCACHE ; 
 int /*<<< orphan*/  I_MUTEX_QUOTA ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int /*<<< orphan*/  QDF_REFRESH ; 
 unsigned int RES_DINODE ; 
 scalar_t__ RES_STATFS ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_quota_data*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_quota_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_holder*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*) ; 
 int FUNC6 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_sbd*,TYPE_2__*) ; 
 scalar_t__ FUNC8 (struct gfs2_inode*,unsigned int) ; 
 int FUNC9 (struct gfs2_inode*) ; 
 int FUNC10 (struct gfs2_sbd*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_sbd*) ; 
 int FUNC12 (struct gfs2_inode*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct gfs2_inode*,int,unsigned int*,unsigned int*) ; 
 struct gfs2_holder* FUNC14 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct gfs2_quota_data**,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sort_qd ; 

__attribute__((used)) static int FUNC21(unsigned int num_qd, struct gfs2_quota_data **qda)
{
	struct gfs2_sbd *sdp = (*qda)->qd_gl->gl_sbd;
	struct gfs2_inode *ip = FUNC0(sdp->sd_quota_inode);
	struct gfs2_alloc_parms ap = { .aflags = 0, };
	unsigned int data_blocks, ind_blocks;
	struct gfs2_holder *ghs, i_gh;
	unsigned int qx, x;
	struct gfs2_quota_data *qd;
	unsigned reserved;
	loff_t offset;
	unsigned int nalloc = 0, blocks;
	int error;

	error = FUNC9(ip);
	if (error)
		return error;

	FUNC13(ip, sizeof(struct gfs2_quota),
			      &data_blocks, &ind_blocks);

	ghs = FUNC14(num_qd, sizeof(struct gfs2_holder), GFP_NOFS);
	if (!ghs)
		return -ENOMEM;

	FUNC20(qda, num_qd, sizeof(struct gfs2_quota_data *), sort_qd, NULL);
	FUNC16(&ip->i_inode.i_mutex, I_MUTEX_QUOTA);
	for (qx = 0; qx < num_qd; qx++) {
		error = FUNC4(qda[qx]->qd_gl, LM_ST_EXCLUSIVE,
					   GL_NOCACHE, &ghs[qx]);
		if (error)
			goto out;
	}

	error = FUNC4(ip->i_gl, LM_ST_EXCLUSIVE, 0, &i_gh);
	if (error)
		goto out;

	for (x = 0; x < num_qd; x++) {
		int alloc_required;

		offset = FUNC18(qda[x]);
		error = FUNC12(ip, offset,
						  sizeof(struct gfs2_quota),
						  &alloc_required);
		if (error)
			goto out_alloc;
		if (alloc_required)
			nalloc++;
	}

	/* 
	 * 1 blk for unstuffing inode if stuffed. We add this extra
	 * block to the reservation unconditionally. If the inode
	 * doesn't need unstuffing, the block will be released to the 
	 * rgrp since it won't be allocated during the transaction
	 */
	/* +3 in the end for unstuffing block, inode size update block
	 * and another block in case quota straddles page boundary and 
	 * two blocks need to be updated instead of 1 */
	blocks = num_qd * data_blocks + RES_DINODE + num_qd + 3;

	reserved = 1 + (nalloc * (data_blocks + ind_blocks));
	ap.target = reserved;
	error = FUNC6(ip, &ap);
	if (error)
		goto out_alloc;

	if (nalloc)
		blocks += FUNC8(ip, reserved) + nalloc * ind_blocks + RES_STATFS;

	error = FUNC10(sdp, blocks, 0);
	if (error)
		goto out_ipres;

	for (x = 0; x < num_qd; x++) {
		qd = qda[x];
		offset = FUNC18(qd);
		error = FUNC2(ip, offset, qd->qd_change_sync, qd, NULL);
		if (error)
			goto out_end_trans;

		FUNC1(qd, -qd->qd_change_sync);
		FUNC19(QDF_REFRESH, &qd->qd_flags);
	}

	error = 0;

out_end_trans:
	FUNC11(sdp);
out_ipres:
	FUNC5(ip);
out_alloc:
	FUNC3(&i_gh);
out:
	while (qx--)
		FUNC3(&ghs[qx]);
	FUNC17(&ip->i_inode.i_mutex);
	FUNC15(ghs);
	FUNC7(ip->i_gl->gl_sbd, ip->i_gl);
	return error;
}