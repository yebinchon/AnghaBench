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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct gfs2_sbd {int /*<<< orphan*/  sd_jbsize; } ;
struct gfs2_rgrpd {scalar_t__ rd_length; } ;
struct gfs2_rgrp_list {unsigned int rl_rgrps; TYPE_2__* rl_ghs; } ;
struct gfs2_leaf {int /*<<< orphan*/  lf_next; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; int /*<<< orphan*/  i_inode; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_5__ {TYPE_1__* gh_gl; } ;
struct TYPE_4__ {struct gfs2_rgrpd* gl_object; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct gfs2_sbd* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int /*<<< orphan*/  NO_QUOTA_CHANGE ; 
 scalar_t__ RES_DINODE ; 
 scalar_t__ RES_QUOTA ; 
 scalar_t__ RES_STATFS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int FUNC4 (struct gfs2_inode*,scalar_t__,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*,scalar_t__) ; 
 int FUNC7 (struct gfs2_inode*,char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_inode*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,TYPE_2__*) ; 
 int FUNC10 (unsigned int,TYPE_2__*) ; 
 int FUNC11 (struct gfs2_inode*,struct buffer_head**) ; 
 int FUNC12 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct gfs2_inode*) ; 
 int FUNC14 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC15 (struct gfs2_inode*,struct gfs2_rgrp_list*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct gfs2_rgrp_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct gfs2_rgrp_list*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC19 (struct gfs2_sbd*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (struct gfs2_sbd*) ; 
 scalar_t__ FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 char* FUNC23 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct gfs2_rgrp_list*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 char* FUNC26 (unsigned int) ; 

__attribute__((used)) static int FUNC27(struct gfs2_inode *dip, u32 index, u32 len,
			u64 leaf_no)
{
	struct gfs2_sbd *sdp = FUNC1(&dip->i_inode);
	struct gfs2_leaf *tmp_leaf;
	struct gfs2_rgrp_list rlist;
	struct buffer_head *bh, *dibh;
	u64 blk, nblk;
	unsigned int rg_blocks = 0, l_blocks = 0;
	char *ht;
	unsigned int x, size = len * sizeof(u64);
	int error;

	error = FUNC14(sdp);
	if (error)
		return error;

	FUNC24(&rlist, 0, sizeof(struct gfs2_rgrp_list));

	ht = FUNC23(size, GFP_NOFS);
	if (ht == NULL)
		ht = FUNC26(size);
	if (!ht)
		return -ENOMEM;

	error = FUNC14(sdp);
	if (error)
		goto out;

	error = FUNC12(dip, NO_QUOTA_CHANGE, NO_QUOTA_CHANGE);
	if (error)
		goto out;

	/*  Count the number of leaves  */

	for (blk = leaf_no; blk; blk = nblk) {
		error = FUNC4(dip, blk, &bh);
		if (error)
			goto out_rlist;
		tmp_leaf = (struct gfs2_leaf *)bh->b_data;
		nblk = FUNC2(tmp_leaf->lf_next);
		FUNC3(bh);

		FUNC15(dip, &rlist, blk);
		l_blocks++;
	}

	FUNC16(&rlist, LM_ST_EXCLUSIVE);

	for (x = 0; x < rlist.rl_rgrps; x++) {
		struct gfs2_rgrpd *rgd;
		rgd = rlist.rl_ghs[x].gh_gl->gl_object;
		rg_blocks += rgd->rd_length;
	}

	error = FUNC10(rlist.rl_rgrps, rlist.rl_ghs);
	if (error)
		goto out_rlist;

	error = FUNC19(sdp,
			rg_blocks + (FUNC0(size, sdp->sd_jbsize) + 1) +
			RES_DINODE + RES_STATFS + RES_QUOTA, l_blocks);
	if (error)
		goto out_rg_gunlock;

	for (blk = leaf_no; blk; blk = nblk) {
		error = FUNC4(dip, blk, &bh);
		if (error)
			goto out_end_trans;
		tmp_leaf = (struct gfs2_leaf *)bh->b_data;
		nblk = FUNC2(tmp_leaf->lf_next);
		FUNC3(bh);

		FUNC8(dip, blk, 1);
		FUNC5(&dip->i_inode, -1);
	}

	error = FUNC7(dip, ht, index * sizeof(u64), size);
	if (error != size) {
		if (error >= 0)
			error = -EIO;
		goto out_end_trans;
	}

	error = FUNC11(dip, &dibh);
	if (error)
		goto out_end_trans;

	FUNC18(dip->i_gl, dibh);
	FUNC6(dip, dibh->b_data);
	FUNC3(dibh);

out_end_trans:
	FUNC20(sdp);
out_rg_gunlock:
	FUNC9(rlist.rl_rgrps, rlist.rl_ghs);
out_rlist:
	FUNC17(&rlist);
	FUNC13(dip);
out:
	if (FUNC21(ht))
		FUNC25(ht);
	else
		FUNC22(ht);
	return error;
}