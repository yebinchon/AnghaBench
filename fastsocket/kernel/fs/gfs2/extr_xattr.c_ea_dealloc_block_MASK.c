#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {int /*<<< orphan*/  rd_gl; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_eattr; } ;
struct gfs2_holder {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int EIO ; 
 struct gfs2_sbd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 scalar_t__ RES_DINODE ; 
 scalar_t__ RES_QUOTA ; 
 scalar_t__ RES_RG_BIT ; 
 scalar_t__ RES_STATFS ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct gfs2_rgrpd* FUNC3 (struct gfs2_sbd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_holder*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int FUNC9 (struct gfs2_inode*,struct buffer_head**) ; 
 int FUNC10 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC12 (struct gfs2_sbd*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (struct gfs2_sbd*) ; 

__attribute__((used)) static int FUNC14(struct gfs2_inode *ip)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	struct gfs2_rgrpd *rgd;
	struct buffer_head *dibh;
	struct gfs2_holder gh;
	int error;

	error = FUNC10(sdp);
	if (error)
		return error;

	rgd = FUNC3(sdp, ip->i_eattr, 1);
	if (!rgd) {
		FUNC4(ip);
		return -EIO;
	}

	error = FUNC8(rgd->rd_gl, LM_ST_EXCLUSIVE, 0, &gh);
	if (error)
		return error;

	error = FUNC12(sdp, RES_RG_BIT + RES_DINODE + RES_STATFS +
				 RES_QUOTA, 1);
	if (error)
		goto out_gunlock;

	FUNC6(ip, ip->i_eattr, 1);

	ip->i_eattr = 0;
	FUNC2(&ip->i_inode, -1);

	error = FUNC9(ip, &dibh);
	if (!error) {
		FUNC11(ip->i_gl, dibh);
		FUNC5(ip, dibh->b_data);
		FUNC1(dibh);
	}

	FUNC13(sdp);

out_gunlock:
	FUNC7(&gh);
	return error;
}