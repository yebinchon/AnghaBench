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
typedef  int u64 ;
struct inode {int dummy; } ;
struct TYPE_5__ {scalar_t__ ar_quota; } ;
struct TYPE_4__ {int sb_bsize; } ;
struct gfs2_sbd {TYPE_2__ sd_args; TYPE_1__ sd_sb; scalar_t__ sd_max_height; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; TYPE_3__ i_inode; } ;
struct gfs2_dinode {int dummy; } ;
struct gfs2_alloc_parms {scalar_t__ target; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 scalar_t__ GFS2_QUOTA_OFF ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 scalar_t__ RES_DATA ; 
 scalar_t__ RES_DINODE ; 
 scalar_t__ RES_QUOTA ; 
 scalar_t__ RES_RG_BIT ; 
 scalar_t__ RES_STATFS ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_inode*) ; 
 int FUNC5 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 scalar_t__ FUNC6 (struct gfs2_inode*) ; 
 int FUNC7 (struct gfs2_inode*,struct buffer_head**) ; 
 int FUNC8 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC11 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_sbd*) ; 
 int FUNC13 (struct gfs2_inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int) ; 

__attribute__((used)) static int FUNC15(struct inode *inode, u64 size)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct gfs2_alloc_parms ap = { .target = sdp->sd_max_height + RES_DATA, };
	struct buffer_head *dibh;
	int error;
	int unstuff = 0;

	if (FUNC6(ip) &&
	    (size > (sdp->sd_sb.sb_bsize - sizeof(struct gfs2_dinode)))) {
		error = FUNC8(ip);
		if (error)
			return error;

		error = FUNC5(ip, &ap);
		if (error)
			goto do_grow_qunlock;
		unstuff = 1;
	}

	error = FUNC11(sdp, RES_DINODE + RES_STATFS + RES_RG_BIT +
				 (sdp->sd_args.ar_quota == GFS2_QUOTA_OFF ?
				  0 : RES_QUOTA), 0);
	if (error)
		goto do_grow_release;

	if (unstuff) {
		error = FUNC13(ip, NULL);
		if (error)
			goto do_end_trans;
	}

	error = FUNC7(ip, &dibh);
	if (error)
		goto do_end_trans;

	FUNC14(inode, size);
	ip->i_inode.i_mtime = ip->i_inode.i_ctime = CURRENT_TIME;
	FUNC10(ip->i_gl, dibh);
	FUNC3(ip, dibh->b_data);
	FUNC2(dibh);

do_end_trans:
	FUNC12(sdp);
do_grow_release:
	if (unstuff) {
		FUNC4(ip);
do_grow_qunlock:
		FUNC9(ip);
	}
	return error;
}