#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_ufsize_t ;
typedef  int /*<<< orphan*/  xfs_trans_t ;
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_15__ {scalar_t__ i_delayed_blks; } ;
typedef  TYPE_1__ xfs_inode_t ;
typedef  scalar_t__ xfs_fileoff_t ;
typedef  scalar_t__ xfs_filblks_t ;
struct TYPE_16__ {scalar_t__ br_startblock; } ;
typedef  TYPE_2__ xfs_bmbt_irec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 scalar_t__ HOLESTARTBLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int XFS_FREE_EOF_TRYLOCK ; 
 int XFS_ILOCK_EXCL ; 
 int XFS_ILOCK_SHARED ; 
 int XFS_IOLOCK_EXCL ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  XFS_ITRUNCATE_LOG_COUNT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XFS_ITRUNC_DEFINITE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int XFS_TRANS_ABORT ; 
 int /*<<< orphan*/  XFS_TRANS_INACTIVE ; 
 int /*<<< orphan*/  XFS_TRANS_PERM_LOG_RES ; 
 int XFS_TRANS_RELEASE_LOG_RES ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ **,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC19(
	xfs_mount_t	*mp,
	xfs_inode_t	*ip,
	int		flags)
{
	xfs_trans_t	*tp;
	int		error;
	xfs_fileoff_t	end_fsb;
	xfs_fileoff_t	last_fsb;
	xfs_filblks_t	map_len;
	int		nimaps;
	xfs_bmbt_irec_t	imap;

	/*
	 * Figure out if there are any blocks beyond the end
	 * of the file.  If not, then there is nothing to do.
	 */
	end_fsb = FUNC1(mp, (xfs_ufsize_t)FUNC3(ip));
	last_fsb = FUNC1(mp, (xfs_ufsize_t)FUNC5(mp));
	if (last_fsb <= end_fsb)
		return 0;
	map_len = last_fsb - end_fsb;

	nimaps = 1;
	FUNC7(ip, XFS_ILOCK_SHARED);
	error = FUNC6(NULL, ip, end_fsb, map_len, 0,
			  NULL, 0, &imap, &nimaps, NULL);
	FUNC12(ip, XFS_ILOCK_SHARED);

	if (!error && (nimaps != 0) &&
	    (imap.br_startblock != HOLESTARTBLOCK ||
	     ip->i_delayed_blks)) {
		/*
		 * Attach the dquots to the inode up front.
		 */
		error = FUNC13(ip, 0);
		if (error)
			return error;

		/*
		 * There are blocks after the end of file.
		 * Free them up now by truncating the file to
		 * its current size.
		 */
		tp = FUNC14(mp, XFS_TRANS_INACTIVE);

		/*
		 * Do the xfs_itruncate_start() call before
		 * reserving any log space because
		 * itruncate_start will call into the buffer
		 * cache and we can't
		 * do that within a transaction.
		 */
		if (flags & XFS_FREE_EOF_TRYLOCK) {
			if (!FUNC8(ip, XFS_IOLOCK_EXCL)) {
				FUNC15(tp, 0);
				return EAGAIN;
			}
		} else {
			FUNC7(ip, XFS_IOLOCK_EXCL);
		}
		error = FUNC11(ip, XFS_ITRUNC_DEFINITE,
				    FUNC3(ip));
		if (error) {
			FUNC15(tp, 0);
			FUNC12(ip, XFS_IOLOCK_EXCL);
			return error;
		}

		error = FUNC18(tp, 0,
					  FUNC4(mp),
					  0, XFS_TRANS_PERM_LOG_RES,
					  XFS_ITRUNCATE_LOG_COUNT);
		if (error) {
			FUNC0(FUNC2(mp));
			FUNC15(tp, 0);
			FUNC12(ip, XFS_IOLOCK_EXCL);
			return error;
		}

		FUNC7(ip, XFS_ILOCK_EXCL);
		FUNC17(tp, ip);

		error = FUNC10(&tp, ip, FUNC3(ip),
					     XFS_DATA_FORK);
		/*
		 * If we get an error at this point we
		 * simply don't bother truncating the file.
		 */
		if (error) {
			FUNC15(tp,
					 (XFS_TRANS_RELEASE_LOG_RES |
					  XFS_TRANS_ABORT));
		} else {
			error = FUNC16(tp,
						XFS_TRANS_RELEASE_LOG_RES);
			if (!error)
				FUNC9(ip);
		}
		FUNC12(ip, XFS_IOLOCK_EXCL|XFS_ILOCK_EXCL);
	}
	return error;
}