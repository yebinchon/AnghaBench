#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gfs2_sbd {TYPE_1__* sd_jdesc; } ;
struct gfs2_rgrpd {int /*<<< orphan*/  rd_gl; } ;
struct gfs2_inode {int /*<<< orphan*/  i_no_addr; int /*<<< orphan*/  i_inode; } ;
struct gfs2_holder {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  jd_blocks; } ;

/* Variables and functions */
 int EIO ; 
 struct gfs2_sbd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int /*<<< orphan*/  NO_QUOTA_CHANGE ; 
 scalar_t__ RES_QUOTA ; 
 scalar_t__ RES_RG_BIT ; 
 scalar_t__ RES_STATFS ; 
 struct gfs2_rgrpd* FUNC1 (struct gfs2_sbd*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_rgrpd*,struct gfs2_inode*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_holder*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int FUNC9 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_inode*) ; 
 int FUNC11 (struct gfs2_sbd*) ; 
 int FUNC12 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct gfs2_sbd*) ; 

__attribute__((used)) static int FUNC14(struct gfs2_inode *ip)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	struct gfs2_rgrpd *rgd;
	struct gfs2_holder gh;
	int error;

	if (FUNC6(&ip->i_inode) != 1) {
		if (FUNC2(ip))
			FUNC3(ip);
		return -EIO;
	}

	error = FUNC11(sdp);
	if (error)
		return error;

	error = FUNC9(ip, NO_QUOTA_CHANGE, NO_QUOTA_CHANGE);
	if (error)
		return error;

	rgd = FUNC1(sdp, ip->i_no_addr, 1);
	if (!rgd) {
		FUNC2(ip);
		error = -EIO;
		goto out_qs;
	}

	error = FUNC8(rgd->rd_gl, LM_ST_EXCLUSIVE, 0, &gh);
	if (error)
		goto out_qs;

	error = FUNC12(sdp, RES_RG_BIT + RES_STATFS + RES_QUOTA,
				 sdp->sd_jdesc->jd_blocks);
	if (error)
		goto out_rg_gunlock;

	FUNC5(rgd, ip);

	FUNC4(ip);

	FUNC13(sdp);

out_rg_gunlock:
	FUNC7(&gh);
out_qs:
	FUNC10(ip);
	return error;
}