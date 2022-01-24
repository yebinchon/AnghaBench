#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ ar_quota; } ;
struct gfs2_sbd {TYPE_1__ sd_args; } ;
struct gfs2_quota_data {int dummy; } ;
struct TYPE_6__ {scalar_t__ i_uid; scalar_t__ i_gid; } ;
struct gfs2_inode {TYPE_2__* i_res; TYPE_3__ i_inode; int /*<<< orphan*/  i_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  rs_qa_qd_num; struct gfs2_quota_data** rs_qa_qd; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ GFS2_QUOTA_OFF ; 
 struct gfs2_sbd* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  GIF_QD_LOCKED ; 
 scalar_t__ NO_QUOTA_CHANGE ; 
 int /*<<< orphan*/  QUOTA_GROUP ; 
 int /*<<< orphan*/  QUOTA_USER ; 
 scalar_t__ FUNC1 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*) ; 
 int FUNC4 (struct gfs2_sbd*,int /*<<< orphan*/ ,scalar_t__,struct gfs2_quota_data**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct gfs2_inode *ip, u32 uid, u32 gid)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	struct gfs2_quota_data **qd;
	int error;

	if (ip->i_res == NULL)
		FUNC3(ip);

	qd = ip->i_res->rs_qa_qd;

	if (FUNC1(sdp, !ip->i_res->rs_qa_qd_num) ||
	    FUNC1(sdp, !FUNC5(GIF_QD_LOCKED, &ip->i_flags)))
		return -EIO;

	if (sdp->sd_args.ar_quota == GFS2_QUOTA_OFF)
		return 0;

	error = FUNC4(sdp, QUOTA_USER, ip->i_inode.i_uid, qd);
	if (error)
		goto out;
	ip->i_res->rs_qa_qd_num++;
	qd++;

	error = FUNC4(sdp, QUOTA_GROUP, ip->i_inode.i_gid, qd);
	if (error)
		goto out;
	ip->i_res->rs_qa_qd_num++;
	qd++;

	if (uid != NO_QUOTA_CHANGE && uid != ip->i_inode.i_uid) {
		error = FUNC4(sdp, QUOTA_USER, uid, qd);
		if (error)
			goto out;
		ip->i_res->rs_qa_qd_num++;
		qd++;
	}

	if (gid != NO_QUOTA_CHANGE && gid != ip->i_inode.i_gid) {
		error = FUNC4(sdp, QUOTA_GROUP, gid, qd);
		if (error)
			goto out;
		ip->i_res->rs_qa_qd_num++;
		qd++;
	}

out:
	if (error)
		FUNC2(ip);
	return error;
}