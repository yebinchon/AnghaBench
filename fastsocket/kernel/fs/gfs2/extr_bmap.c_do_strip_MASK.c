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
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct strip_mine {unsigned int sm_height; scalar_t__ sm_first; } ;
struct gfs2_sbd {unsigned int sd_inptrs; unsigned int sd_diptrs; } ;
struct gfs2_rgrpd {scalar_t__ rd_length; } ;
struct gfs2_rgrp_list {int rl_rgrps; TYPE_2__* rl_ghs; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct gfs2_inode {int i_height; int /*<<< orphan*/  i_rw_mutex; TYPE_4__ i_inode; int /*<<< orphan*/  i_gl; int /*<<< orphan*/  i_res; scalar_t__ i_depth; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  scalar_t__ __be64 ;
struct TYPE_7__ {TYPE_1__* gh_gl; } ;
struct TYPE_6__ {struct gfs2_rgrpd* gl_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 struct gfs2_sbd* FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 scalar_t__ RES_DINODE ; 
 scalar_t__ RES_INDIRECT ; 
 scalar_t__ RES_QUOTA ; 
 scalar_t__ RES_STATFS ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_inode*,scalar_t__,int,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_2__*) ; 
 int FUNC7 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_inode*,struct gfs2_rgrp_list*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_rgrp_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_rgrp_list*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct gfs2_sbd*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC17 (struct gfs2_sbd*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC19 (struct gfs2_rgrp_list*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct gfs2_inode *ip, struct buffer_head *dibh,
		    struct buffer_head *bh, __be64 *top, __be64 *bottom,
		    unsigned int height, struct strip_mine *sm)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	struct gfs2_rgrp_list rlist;
	u64 bn, bstart;
	u32 blen, btotal;
	__be64 *p;
	unsigned int rg_blocks = 0;
	int metadata;
	unsigned int revokes = 0;
	int x;
	int error;

	error = FUNC9(sdp);
	if (error)
		return error;

	if (!*top)
		sm->sm_first = 0;

	if (height != sm->sm_height)
		return 0;

	if (sm->sm_first) {
		top++;
		sm->sm_first = 0;
	}

	metadata = (height != ip->i_height - 1);
	if (metadata)
		revokes = (height) ? sdp->sd_inptrs : sdp->sd_diptrs;
	else if (ip->i_depth)
		revokes = sdp->sd_inptrs;

	FUNC19(&rlist, 0, sizeof(struct gfs2_rgrp_list));
	bstart = 0;
	blen = 0;

	for (p = top; p < bottom; p++) {
		if (!*p)
			continue;

		bn = FUNC2(*p);

		if (bstart + blen == bn)
			blen++;
		else {
			if (bstart)
				FUNC10(ip, &rlist, bstart);

			bstart = bn;
			blen = 1;
		}
	}

	if (bstart)
		FUNC10(ip, &rlist, bstart);
	else
		goto out; /* Nothing to do */

	FUNC11(&rlist, LM_ST_EXCLUSIVE);

	for (x = 0; x < rlist.rl_rgrps; x++) {
		struct gfs2_rgrpd *rgd;
		rgd = rlist.rl_ghs[x].gh_gl->gl_object;
		rg_blocks += rgd->rd_length;
	}

	error = FUNC7(rlist.rl_rgrps, rlist.rl_ghs);
	if (error)
		goto out_rlist;

	if (FUNC13(ip->i_res)) /* needs to be done with the rgrp glock held */
		FUNC14(ip->i_res);

	error = FUNC17(sdp, rg_blocks + RES_DINODE +
				 RES_INDIRECT + RES_STATFS + RES_QUOTA,
				 revokes);
	if (error)
		goto out_rg_gunlock;

	FUNC3(&ip->i_rw_mutex);

	FUNC16(ip->i_gl, dibh);
	FUNC16(ip->i_gl, bh);

	bstart = 0;
	blen = 0;
	btotal = 0;

	for (p = top; p < bottom; p++) {
		if (!*p)
			continue;

		bn = FUNC2(*p);

		if (bstart + blen == bn)
			blen++;
		else {
			if (bstart) {
				FUNC1(ip, bstart, blen, metadata);
				btotal += blen;
			}

			bstart = bn;
			blen = 1;
		}

		*p = 0;
		FUNC4(&ip->i_inode, -1);
	}
	if (bstart) {
		FUNC1(ip, bstart, blen, metadata);
		btotal += blen;
	}

	FUNC15(sdp, 0, +btotal, 0);
	FUNC8(ip, -(s64)btotal, ip->i_inode.i_uid,
			  ip->i_inode.i_gid);

	ip->i_inode.i_mtime = ip->i_inode.i_ctime = CURRENT_TIME;

	FUNC5(ip, dibh->b_data);

	FUNC20(&ip->i_rw_mutex);

	FUNC18(sdp);

out_rg_gunlock:
	FUNC6(rlist.rl_rgrps, rlist.rl_ghs);
out_rlist:
	FUNC12(&rlist);
out:
	return error;
}