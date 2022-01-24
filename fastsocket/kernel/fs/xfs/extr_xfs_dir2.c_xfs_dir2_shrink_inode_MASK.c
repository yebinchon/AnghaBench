#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_15__ {scalar_t__ m_dirdatablk; int /*<<< orphan*/  m_dirblkfsbs; } ;
typedef  TYPE_2__ xfs_mount_t ;
struct TYPE_14__ {scalar_t__ di_size; } ;
struct TYPE_16__ {TYPE_1__ i_d; TYPE_2__* i_mount; } ;
typedef  TYPE_3__ xfs_inode_t ;
typedef  scalar_t__ xfs_fileoff_t ;
typedef  scalar_t__ xfs_dir2_db_t ;
typedef  int /*<<< orphan*/  xfs_dabuf_t ;
typedef  scalar_t__ xfs_dablk_t ;
struct TYPE_17__ {int /*<<< orphan*/  flist; int /*<<< orphan*/  firstblock; int /*<<< orphan*/ * trans; TYPE_3__* dp; } ;
typedef  TYPE_4__ xfs_da_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_BMAPI_METADATA ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 

int
FUNC10(
	xfs_da_args_t	*args,
	xfs_dir2_db_t	db,
	xfs_dabuf_t	*bp)
{
	xfs_fileoff_t	bno;		/* directory file offset */
	xfs_dablk_t	da;		/* directory file offset */
	int		done;		/* bunmap is finished */
	xfs_inode_t	*dp;
	int		error;
	xfs_mount_t	*mp;
	xfs_trans_t	*tp;

	FUNC3(args, db);

	dp = args->dp;
	mp = dp->i_mount;
	tp = args->trans;
	da = FUNC8(mp, db);
	/*
	 * Unmap the fsblock(s).
	 */
	if ((error = FUNC5(tp, dp, da, mp->m_dirblkfsbs,
			XFS_BMAPI_METADATA, 0, args->firstblock, args->flist,
			&done))) {
		/*
		 * ENOSPC actually can happen if we're in a removename with
		 * no space reservation, and the resulting block removal
		 * would cause a bmap btree split or conversion from extents
		 * to btree.  This can only happen for un-fragmented
		 * directory blocks, since you need to be punching out
		 * the middle of an extent.
		 * In this case we need to leave the block in the file,
		 * and not binval it.
		 * So the block has to be in a consistent empty state
		 * and appropriately logged.
		 * We don't free up the buffer, the caller can tell it
		 * hasn't happened since it got an error back.
		 */
		return error;
	}
	FUNC0(done);
	/*
	 * Invalidate the buffer from the transaction.
	 */
	FUNC6(tp, bp);
	/*
	 * If it's not a data block, we're done.
	 */
	if (db >= FUNC1(mp))
		return 0;
	/*
	 * If the block isn't the last one in the directory, we're done.
	 */
	if (dp->i_d.di_size > FUNC7(mp, db + 1, 0))
		return 0;
	bno = da;
	if ((error = FUNC4(tp, dp, &bno, XFS_DATA_FORK))) {
		/*
		 * This can't really happen unless there's kernel corruption.
		 */
		return error;
	}
	if (db == mp->m_dirdatablk)
		FUNC0(bno == 0);
	else
		FUNC0(bno > 0);
	/*
	 * Set the size to the new last block.
	 */
	dp->i_d.di_size = FUNC2(mp, bno);
	FUNC9(tp, dp, XFS_ILOG_CORE);
	return 0;
}