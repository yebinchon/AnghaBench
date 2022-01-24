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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct inode {scalar_t__ i_uid; scalar_t__ i_gid; } ;
struct iattr {scalar_t__ ia_uid; scalar_t__ ia_gid; int ia_valid; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_gl; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int ATTR_GID ; 
 int ATTR_UID ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 scalar_t__ NO_QUOTA_CHANGE ; 
 scalar_t__ RES_DINODE ; 
 int RES_QUOTA ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_inode*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC8 (struct gfs2_inode*,scalar_t__,scalar_t__) ; 
 int FUNC9 (struct gfs2_inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_inode*) ; 
 int FUNC11 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC13 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct gfs2_sbd*) ; 
 int FUNC15 (struct inode*,struct iattr*) ; 

__attribute__((used)) static int FUNC16(struct inode *inode, struct iattr *attr)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct buffer_head *dibh;
	u32 ouid, ogid, nuid, ngid;
	int error;

	ouid = inode->i_uid;
	ogid = inode->i_gid;
	nuid = attr->ia_uid;
	ngid = attr->ia_gid;

	if (!(attr->ia_valid & ATTR_UID) || ouid == nuid)
		ouid = nuid = NO_QUOTA_CHANGE;
	if (!(attr->ia_valid & ATTR_GID) || ogid == ngid)
		ogid = ngid = NO_QUOTA_CHANGE;

	error = FUNC11(sdp);
	if (error)
		return error;

	error = FUNC9(ip, nuid, ngid);
	if (error)
		return error;

	if (ouid != NO_QUOTA_CHANGE || ogid != NO_QUOTA_CHANGE) {
		error = FUNC8(ip, nuid, ngid);
		if (error)
			goto out_gunlock_q;
	}

	error = FUNC13(sdp, RES_DINODE + 2 * RES_QUOTA, 0);
	if (error)
		goto out_gunlock_q;

	error = FUNC6(ip, &dibh);
	if (error)
		goto out_end_trans;

	error = FUNC15(inode, attr);
	FUNC3(sdp, !error);

	FUNC12(ip->i_gl, dibh);
	FUNC4(ip, dibh->b_data);
	FUNC2(dibh);

	if (ouid != NO_QUOTA_CHANGE || ogid != NO_QUOTA_CHANGE) {
		u64 blocks = FUNC5(&ip->i_inode);
		FUNC7(ip, -blocks, ouid, ogid);
		FUNC7(ip, blocks, nuid, ngid);
	}

out_end_trans:
	FUNC14(sdp);
out_gunlock_q:
	FUNC10(ip);
	return error;
}