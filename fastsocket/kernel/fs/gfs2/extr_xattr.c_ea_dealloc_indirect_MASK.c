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
struct gfs2_sbd {int sd_inptrs; } ;
struct gfs2_rgrpd {scalar_t__ rd_length; } ;
struct gfs2_rgrp_list {unsigned int rl_rgrps; TYPE_2__* rl_ghs; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; int /*<<< orphan*/  i_diskflags; int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_eattr; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  scalar_t__ __be64 ;
struct TYPE_5__ {TYPE_1__* gh_gl; } ;
struct TYPE_4__ {struct gfs2_rgrpd* gl_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIO_WAIT ; 
 int EIO ; 
 int /*<<< orphan*/  GFS2_DIF_EA_INDIRECT ; 
 int /*<<< orphan*/  GFS2_METATYPE_IN ; 
 struct gfs2_sbd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 scalar_t__ RES_DINODE ; 
 scalar_t__ RES_INDIRECT ; 
 scalar_t__ RES_QUOTA ; 
 scalar_t__ RES_STATFS ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,TYPE_2__*) ; 
 int FUNC7 (unsigned int,TYPE_2__*) ; 
 int FUNC8 (struct gfs2_inode*,struct buffer_head**) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 scalar_t__ FUNC10 (struct gfs2_sbd*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_inode*,struct gfs2_rgrp_list*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct gfs2_rgrp_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct gfs2_rgrp_list*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC16 (struct gfs2_sbd*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC18 (struct gfs2_rgrp_list*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC19(struct gfs2_inode *ip)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	struct gfs2_rgrp_list rlist;
	struct buffer_head *indbh, *dibh;
	__be64 *eablk, *end;
	unsigned int rg_blocks = 0;
	u64 bstart = 0;
	unsigned int blen = 0;
	unsigned int blks = 0;
	unsigned int x;
	int error;

	error = FUNC11(sdp);
	if (error)
		return error;

	FUNC18(&rlist, 0, sizeof(struct gfs2_rgrp_list));

	error = FUNC9(ip->i_gl, ip->i_eattr, DIO_WAIT, &indbh);
	if (error)
		return error;

	if (FUNC10(sdp, indbh, GFS2_METATYPE_IN)) {
		error = -EIO;
		goto out;
	}

	eablk = (__be64 *)(indbh->b_data + sizeof(struct gfs2_meta_header));
	end = eablk + sdp->sd_inptrs;

	for (; eablk < end; eablk++) {
		u64 bn;

		if (!*eablk)
			break;
		bn = FUNC1(*eablk);

		if (bstart + blen == bn)
			blen++;
		else {
			if (bstart)
				FUNC12(ip, &rlist, bstart);
			bstart = bn;
			blen = 1;
		}
		blks++;
	}
	if (bstart)
		FUNC12(ip, &rlist, bstart);
	else
		goto out;

	FUNC13(&rlist, LM_ST_EXCLUSIVE);

	for (x = 0; x < rlist.rl_rgrps; x++) {
		struct gfs2_rgrpd *rgd;
		rgd = rlist.rl_ghs[x].gh_gl->gl_object;
		rg_blocks += rgd->rd_length;
	}

	error = FUNC7(rlist.rl_rgrps, rlist.rl_ghs);
	if (error)
		goto out_rlist_free;

	error = FUNC16(sdp, rg_blocks + RES_DINODE + RES_INDIRECT +
				 RES_STATFS + RES_QUOTA, blks);
	if (error)
		goto out_gunlock;

	FUNC15(ip->i_gl, indbh);

	eablk = (__be64 *)(indbh->b_data + sizeof(struct gfs2_meta_header));
	bstart = 0;
	blen = 0;

	for (; eablk < end; eablk++) {
		u64 bn;

		if (!*eablk)
			break;
		bn = FUNC1(*eablk);

		if (bstart + blen == bn)
			blen++;
		else {
			if (bstart)
				FUNC5(ip, bstart, blen);
			bstart = bn;
			blen = 1;
		}

		*eablk = 0;
		FUNC3(&ip->i_inode, -1);
	}
	if (bstart)
		FUNC5(ip, bstart, blen);

	ip->i_diskflags &= ~GFS2_DIF_EA_INDIRECT;

	error = FUNC8(ip, &dibh);
	if (!error) {
		FUNC15(ip->i_gl, dibh);
		FUNC4(ip, dibh->b_data);
		FUNC2(dibh);
	}

	FUNC17(sdp);

out_gunlock:
	FUNC6(rlist.rl_rgrps, rlist.rl_ghs);
out_rlist_free:
	FUNC14(&rlist);
out:
	FUNC2(indbh);
	return error;
}