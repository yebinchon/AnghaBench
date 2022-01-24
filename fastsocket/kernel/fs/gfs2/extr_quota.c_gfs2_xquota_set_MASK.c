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
struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct TYPE_4__ {scalar_t__ ar_quota; } ;
struct gfs2_sbd {int sd_fsb2bb_shift; TYPE_1__ sd_args; int /*<<< orphan*/  sd_quota_inode; } ;
struct TYPE_5__ {int /*<<< orphan*/  qb_value; int /*<<< orphan*/  qb_limit; int /*<<< orphan*/  qb_warn; } ;
struct gfs2_quota_data {TYPE_2__ qd_qb; int /*<<< orphan*/  qd_gl; } ;
struct gfs2_quota {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mutex; } ;
struct gfs2_inode {TYPE_3__ i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_alloc_parms {unsigned int target; int /*<<< orphan*/  aflags; } ;
struct fs_disk_quota {int d_fieldmask; int d_blk_softlimit; int d_blk_hardlimit; int d_bcount; int /*<<< orphan*/  d_id; int /*<<< orphan*/  d_flags; } ;
typedef  int /*<<< orphan*/  qid_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 int FS_DQ_BCOUNT ; 
 int FS_DQ_BHARD ; 
 int FS_DQ_BSOFT ; 
 int GFS2_FIELDMASK ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GFS2_QUOTA_OFF ; 
#define  GRPQUOTA 129 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int QUOTA_GROUP ; 
 int QUOTA_USER ; 
 scalar_t__ RES_DINODE ; 
#define  USRQUOTA 128 
 int /*<<< orphan*/  XFS_GROUP_QUOTA ; 
 int /*<<< orphan*/  XFS_USER_QUOTA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_quota_data*,struct fs_disk_quota*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_holder*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*) ; 
 int FUNC6 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 scalar_t__ FUNC7 (struct gfs2_inode*) ; 
 scalar_t__ FUNC8 (struct gfs2_inode*,unsigned int) ; 
 int FUNC9 (struct gfs2_inode*) ; 
 int FUNC10 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_sbd*) ; 
 int FUNC12 (struct gfs2_inode*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct gfs2_inode*,int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct gfs2_quota_data*) ; 
 int FUNC17 (struct gfs2_sbd*,int,int /*<<< orphan*/ ,struct gfs2_quota_data**) ; 
 int /*<<< orphan*/  FUNC18 (struct gfs2_quota_data*) ; 
 int FUNC19 (struct gfs2_sbd*,struct gfs2_quota_data*) ; 

__attribute__((used)) static int FUNC20(struct super_block *sb, int type, qid_t id,
			   struct fs_disk_quota *fdq)
{
	struct gfs2_sbd *sdp = sb->s_fs_info;
	struct gfs2_inode *ip = FUNC0(sdp->sd_quota_inode);
	struct gfs2_quota_data *qd;
	struct gfs2_holder q_gh, i_gh;
	unsigned int data_blocks, ind_blocks;
	unsigned int blocks = 0;
	int alloc_required;
	loff_t offset;
	int error;

	if (sdp->sd_args.ar_quota == GFS2_QUOTA_OFF)
		return -ESRCH; /* Crazy XFS error code */

	switch(type) {
	case USRQUOTA:
		type = QUOTA_USER;
		if (fdq->d_flags != XFS_USER_QUOTA)
			return -EINVAL;
		break;
	case GRPQUOTA:
		type = QUOTA_GROUP;
		if (fdq->d_flags != XFS_GROUP_QUOTA)
			return -EINVAL;
		break;
	default:
		return -EINVAL;
	}

	if (fdq->d_fieldmask & ~GFS2_FIELDMASK)
		return -EINVAL;
	if (fdq->d_id != id)
		return -EINVAL;

	error = FUNC17(sdp, type, id, &qd);
	if (error)
		return error;

	error = FUNC9(ip);
	if (error)
		goto out_unlockput;

	FUNC14(&ip->i_inode.i_mutex);
	error = FUNC4(qd->qd_gl, LM_ST_EXCLUSIVE, 0, &q_gh);
	if (error)
		goto out_put;
	error = FUNC4(ip->i_gl, LM_ST_EXCLUSIVE, 0, &i_gh);
	if (error)
		goto out_q;

	/* Check for existing entry, if none then alloc new blocks */
	error = FUNC19(sdp, qd);
	if (error)
		goto out_i;

	/* If nothing has changed, this is a no-op */
	if ((fdq->d_fieldmask & FS_DQ_BSOFT) &&
	    ((fdq->d_blk_softlimit >> sdp->sd_fsb2bb_shift) == FUNC1(qd->qd_qb.qb_warn)))
		fdq->d_fieldmask ^= FS_DQ_BSOFT;

	if ((fdq->d_fieldmask & FS_DQ_BHARD) &&
	    ((fdq->d_blk_hardlimit >> sdp->sd_fsb2bb_shift) == FUNC1(qd->qd_qb.qb_limit)))
		fdq->d_fieldmask ^= FS_DQ_BHARD;

	if ((fdq->d_fieldmask & FS_DQ_BCOUNT) &&
	    ((fdq->d_bcount >> sdp->sd_fsb2bb_shift) == FUNC1(qd->qd_qb.qb_value)))
		fdq->d_fieldmask ^= FS_DQ_BCOUNT;

	if (fdq->d_fieldmask == 0)
		goto out_i;

	offset = FUNC16(qd);
	error = FUNC12(ip, offset, sizeof(struct gfs2_quota),
					  &alloc_required);
	if (error)
		goto out_i;
	if (FUNC7(ip))
		alloc_required = 1;
	if (alloc_required) {
		struct gfs2_alloc_parms ap = { .aflags = 0, };
		FUNC13(ip, sizeof(struct gfs2_quota),
				       &data_blocks, &ind_blocks);
		blocks = 1 + data_blocks + ind_blocks;
		ap.target = blocks;
		error = FUNC6(ip, &ap);
		if (error)
			goto out_i;
		blocks += FUNC8(ip, blocks);
	}

	/* Some quotas span block boundaries and can update two blocks,
	   adding an extra block to the transaction to handle such quotas */
	error = FUNC10(sdp, blocks + RES_DINODE + 2, 0);
	if (error)
		goto out_release;

	/* Apply changes */
	error = FUNC2(ip, offset, 0, qd, fdq);

	FUNC11(sdp);
out_release:
	if (alloc_required)
		FUNC5(ip);
out_i:
	FUNC3(&i_gh);
out_q:
	FUNC3(&q_gh);
out_unlockput:
	FUNC15(&ip->i_inode.i_mutex);
out_put:
	FUNC18(qd);
	return error;
}