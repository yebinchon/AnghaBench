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
struct gfs2_sbd {int /*<<< orphan*/  sd_rindex_uptodate; int /*<<< orphan*/  sd_rindex; } ;
struct gfs2_rgrpd {int rd_flags; scalar_t__ rd_extfail_pt; scalar_t__ rd_free_clone; int /*<<< orphan*/  rd_gl; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mode; } ;
struct gfs2_inode {int /*<<< orphan*/  i_no_addr; struct gfs2_rgrpd* i_rgd; TYPE_2__ i_inode; int /*<<< orphan*/  i_goal; struct gfs2_blkreserv* i_res; } ;
struct TYPE_3__ {struct gfs2_rgrpd* rgd; } ;
struct gfs2_blkreserv {TYPE_1__ rs_rbm; int /*<<< orphan*/  rs_rgd_gh; } ;
struct gfs2_alloc_parms {int aflags; scalar_t__ target; } ;

/* Variables and functions */
 int EBADSLT ; 
 int ENOSPC ; 
 int GFS2_AF_ORLOV ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int GFS2_RDF_CHECK ; 
 int GFS2_RDF_ERROR ; 
 int GFS2_RGF_NOALLOC ; 
 struct gfs2_sbd* FUNC1 (TYPE_2__*) ; 
 int GLR_TRYFAILED ; 
 int LM_FLAG_TRY ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int /*<<< orphan*/  NO_BLOCK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct gfs2_rgrpd* FUNC3 (struct gfs2_sbd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_sbd*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct gfs2_inode*) ; 
 int FUNC9 (struct gfs2_inode*) ; 
 scalar_t__ FUNC10 (struct gfs2_blkreserv*) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_blkreserv*) ; 
 scalar_t__ FUNC12 (struct gfs2_rgrpd**,struct gfs2_rgrpd*) ; 
 int /*<<< orphan*/  FUNC13 (struct gfs2_rgrpd*,struct gfs2_inode*,struct gfs2_alloc_parms const*) ; 
 scalar_t__ FUNC14 (struct gfs2_rgrpd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct gfs2_rgrpd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int) ; 

int FUNC17(struct gfs2_inode *ip, const struct gfs2_alloc_parms *ap)
{
	struct gfs2_sbd *sdp = FUNC1(&ip->i_inode);
	struct gfs2_rgrpd *begin = NULL;
	struct gfs2_blkreserv *rs = ip->i_res;
	int error, rg_locked, flags = LM_FLAG_TRY;
	u64 last_unlinked = NO_BLOCK;
	int loops = 0;
	u32 skip = 0;

	if (FUNC10(rs)) {
		begin = rs->rs_rbm.rgd;
	} else {
		if (ip->i_rgd && FUNC14(ip->i_rgd, ip->i_goal)) {
			rs->rs_rbm.rgd = begin = ip->i_rgd;
		} else {
			rs->rs_rbm.rgd = begin = FUNC3(sdp, ip->i_goal, 1);
		}
		if (FUNC2(ip->i_inode.i_mode) && (ap->aflags & GFS2_AF_ORLOV))
			skip = FUNC8(ip);
	}
	if (rs->rs_rbm.rgd == NULL)
		return -EBADSLT;

	while (loops < 3) {
		rg_locked = 1;

		if (!FUNC5(rs->rs_rbm.rgd->rd_gl)) {
			rg_locked = 0;
			if (skip && skip--)
				goto next_rgrp;
			error = FUNC6(rs->rs_rbm.rgd->rd_gl,
						   LM_ST_EXCLUSIVE,
						   FUNC10(rs) ? 0 : flags,
						   &rs->rs_rgd_gh);
			if (error == GLR_TRYFAILED)
				goto next_rgrp;
			if (FUNC16(error))
				return error;
		}
		/* Skip unuseable resource groups */
		if ((rs->rs_rbm.rgd->rd_flags & (GFS2_RGF_NOALLOC |
						 GFS2_RDF_ERROR)) ||
		    (ap && (ap->target > rs->rs_rbm.rgd->rd_extfail_pt)))
			goto skip_rgrp;

		/* Get a reservation if we don't already have one */
		if (!FUNC10(rs))
			FUNC13(rs->rs_rbm.rgd, ip, ap);

		/* Skip rgrps when we can't get a reservation on first pass */
		if (!FUNC10(rs) && (loops < 1))
			goto check_rgrp;

		/* If rgrp has enough free space, use it */
		if (rs->rs_rbm.rgd->rd_free_clone >= ap->target) {
			ip->i_rgd = rs->rs_rbm.rgd;
			return 0;
		}

check_rgrp:
		/* Check for unlinked inodes which can be reclaimed */
		if (rs->rs_rbm.rgd->rd_flags & GFS2_RDF_CHECK)
			FUNC15(rs->rs_rbm.rgd, &last_unlinked,
					ip->i_no_addr);
skip_rgrp:
		/* Drop reservation, if we couldn't use reserved rgrp */
		if (FUNC10(rs))
			FUNC11(rs);

		/* Unlock rgrp if required */
		if (!rg_locked)
			FUNC4(&rs->rs_rgd_gh);
next_rgrp:
		/* Find the next rgrp, and continue looking */
		if (FUNC12(&rs->rs_rbm.rgd, begin))
			continue;
		if (skip)
			continue;

		/* If we've scanned all the rgrps, but found no free blocks
		 * then this checks for some less likely conditions before
		 * trying again.
		 */
		flags &= ~LM_FLAG_TRY;
		loops++;
		/* Check that fs hasn't grown if writing to rindex */
		if (ip == FUNC0(sdp->sd_rindex) && !sdp->sd_rindex_uptodate) {
			error = FUNC9(ip);
			if (error)
				return error;
		}
		/* Flushing the log may release space */
		if (loops == 2)
			FUNC7(sdp, NULL);
	}
	return -ENOSPC;
}