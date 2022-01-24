#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_22__ {int m_flags; } ;
typedef  TYPE_2__ xfs_mount_t ;
struct TYPE_21__ {scalar_t__ di_nlink; int di_flags; int /*<<< orphan*/  di_mode; } ;
struct TYPE_23__ {int /*<<< orphan*/  i_ino; TYPE_1__ i_d; TYPE_2__* i_mount; } ;
typedef  TYPE_3__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  int /*<<< orphan*/  xfs_bmap_free_t ;
struct xfs_name {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  EMLINK ; 
 int ENOSPC ; 
 int /*<<< orphan*/  EXDEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int XFS_DIFLAG_PROJINHERIT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int XFS_ICHGTIME_CHG ; 
 int XFS_ICHGTIME_MOD ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int /*<<< orphan*/  XFS_LINK_LOG_COUNT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ XFS_MAXLINK ; 
 int XFS_MOUNT_DIRSYNC ; 
 int XFS_MOUNT_WSYNC ; 
 int XFS_TRANS_ABORT ; 
 int /*<<< orphan*/  XFS_TRANS_LINK ; 
 int /*<<< orphan*/  XFS_TRANS_PERM_LOG_RES ; 
 int XFS_TRANS_RELEASE_LOG_RES ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct xfs_name*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_3__*,struct xfs_name*,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_3__*,struct xfs_name*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

int
FUNC25(
	xfs_inode_t		*tdp,
	xfs_inode_t		*sip,
	struct xfs_name		*target_name)
{
	xfs_mount_t		*mp = tdp->i_mount;
	xfs_trans_t		*tp;
	int			error;
	xfs_bmap_free_t         free_list;
	xfs_fsblock_t           first_block;
	int			cancel_flags;
	int			committed;
	int			resblks;

	FUNC6(tdp, target_name);

	FUNC0(!FUNC1(sip->i_d.di_mode));

	if (FUNC3(mp))
		return FUNC2(EIO);

	error = FUNC16(sip, 0);
	if (error)
		goto std_return;

	error = FUNC16(tdp, 0);
	if (error)
		goto std_return;

	tp = FUNC17(mp, XFS_TRANS_LINK);
	cancel_flags = XFS_TRANS_RELEASE_LOG_RES;
	resblks = FUNC5(mp, target_name->len);
	error = FUNC23(tp, resblks, FUNC4(mp), 0,
			XFS_TRANS_PERM_LOG_RES, XFS_LINK_LOG_COUNT);
	if (error == ENOSPC) {
		resblks = 0;
		error = FUNC23(tp, 0, FUNC4(mp), 0,
				XFS_TRANS_PERM_LOG_RES, XFS_LINK_LOG_COUNT);
	}
	if (error) {
		cancel_flags = 0;
		goto error_return;
	}

	FUNC15(sip, tdp, XFS_ILOCK_EXCL);

	FUNC21(tp, sip, XFS_ILOCK_EXCL);
	FUNC21(tp, tdp, XFS_ILOCK_EXCL);

	/*
	 * If the source has too many links, we can't make any more to it.
	 */
	if (sip->i_d.di_nlink >= XFS_MAXLINK) {
		error = FUNC2(EMLINK);
		goto error_return;
	}

	/*
	 * If we are using project inheritance, we only allow hard link
	 * creation in our tree when the project IDs are the same; else
	 * the tree quota mechanism could be circumvented.
	 */
	if (FUNC7((tdp->i_d.di_flags & XFS_DIFLAG_PROJINHERIT) &&
		     (FUNC14(tdp) != FUNC14(sip)))) {
		error = FUNC2(EXDEV);
		goto error_return;
	}

	error = FUNC12(tp, tdp, target_name, resblks);
	if (error)
		goto error_return;

	FUNC10(&free_list, &first_block);

	error = FUNC13(tp, tdp, target_name, sip->i_ino,
					&first_block, &free_list, resblks);
	if (error)
		goto abort_return;
	FUNC20(tp, tdp, XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);
	FUNC22(tp, tdp, XFS_ILOG_CORE);

	error = FUNC11(tp, sip);
	if (error)
		goto abort_return;

	/*
	 * If this is a synchronous mount, make sure that the
	 * link transaction goes to disk before returning to
	 * the user.
	 */
	if (mp->m_flags & (XFS_MOUNT_WSYNC|XFS_MOUNT_DIRSYNC)) {
		FUNC24(tp);
	}

	error = FUNC9 (&tp, &free_list, &committed);
	if (error) {
		FUNC8(&free_list);
		goto abort_return;
	}

	return FUNC19(tp, XFS_TRANS_RELEASE_LOG_RES);

 abort_return:
	cancel_flags |= XFS_TRANS_ABORT;
 error_return:
	FUNC18(tp, cancel_flags);
 std_return:
	return error;
}