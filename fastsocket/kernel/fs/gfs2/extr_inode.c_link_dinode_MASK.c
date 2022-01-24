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
struct qstr {int dummy; } ;
struct gfs2_sbd {scalar_t__ sd_max_dirres; } ;
struct TYPE_5__ {int i_nlink; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; TYPE_2__ i_inode; TYPE_1__* i_rgd; } ;
struct gfs2_alloc_parms {scalar_t__ target; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
struct TYPE_4__ {scalar_t__ rd_length; } ;

/* Variables and functions */
 struct gfs2_sbd* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_QUOTA_CHANGE ; 
 int RES_DINODE ; 
 scalar_t__ RES_LEAF ; 
 scalar_t__ RES_QUOTA ; 
 scalar_t__ RES_STATFS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,struct qstr const*,struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*) ; 
 int FUNC7 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 int FUNC8 (struct gfs2_inode*,struct buffer_head**) ; 
 int FUNC9 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC13 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct gfs2_sbd*) ; 

__attribute__((used)) static int FUNC15(struct gfs2_inode *dip, const struct qstr *name,
		       struct gfs2_inode *ip, int arq)
{
	struct gfs2_sbd *sdp = FUNC0(&dip->i_inode);
	struct buffer_head *dibh;
	struct gfs2_alloc_parms ap = { .target = sdp->sd_max_dirres, };
	int error;

	error = FUNC10(dip, NO_QUOTA_CHANGE, NO_QUOTA_CHANGE);
	if (error)
		return error;

	if (arq) {
		error = FUNC9(dip, dip->i_inode.i_uid, dip->i_inode.i_gid);
		if (error)
			goto fail_quota_locks;

		error = FUNC7(dip, &ap);
		if (error)
			goto fail_quota_locks;

		error = FUNC13(sdp, sdp->sd_max_dirres +
					 dip->i_rgd->rd_length +
					 2 * RES_DINODE +
					 RES_STATFS + RES_QUOTA, 0);
		if (error)
			goto fail_ipreserv;
	} else {
		error = FUNC13(sdp, RES_LEAF + 2 * RES_DINODE, 0);
		if (error)
			goto fail_quota_locks;
	}

	error = FUNC5(&dip->i_inode, name, ip, FUNC1(ip->i_inode.i_mode));
	if (error)
		goto fail_end_trans;

	error = FUNC8(ip, &dibh);
	if (error)
		goto fail_end_trans;
	ip->i_inode.i_nlink = FUNC2(ip->i_inode.i_mode) ? 2 : 1;
	FUNC12(ip->i_gl, dibh);
	FUNC4(ip, dibh->b_data);
	FUNC3(dibh);
	return 0;

fail_end_trans:
	FUNC14(sdp);
fail_ipreserv:
	FUNC6(dip);
fail_quota_locks:
	FUNC11(dip);
	return error;
}