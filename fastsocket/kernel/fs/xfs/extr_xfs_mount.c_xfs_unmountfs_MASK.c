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
struct xfs_mount {int /*<<< orphan*/  m_ddev_targp; int /*<<< orphan*/  m_rootip; } ;
typedef  scalar_t__ __uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYNC_WAIT ; 
 int /*<<< orphan*/  XFS_LOG_SYNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xfs_mount*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct xfs_mount*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC14 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC15 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct xfs_mount*,char*,...) ; 

void
FUNC18(
	struct xfs_mount	*mp)
{
	__uint64_t		resblks;
	int			error;

	FUNC10(mp);
	FUNC13(mp);
	FUNC0(mp->m_rootip);

	/*
	 * We can potentially deadlock here if we have an inode cluster
	 * that has been freed has its buffer still pinned in memory because
	 * the transaction is still sitting in a iclog. The stale inodes
	 * on that buffer will have their flush locks held until the
	 * transaction hits the disk and the callbacks run. the inode
	 * flush takes the flush lock unconditionally and with nothing to
	 * push out the iclog we will never get that unlocked. hence we
	 * need to force the log first.
	 */
	FUNC5(mp, XFS_LOG_SYNC);

	/*
	 * Do a delwri reclaim pass first so that as many dirty inodes are
	 * queued up for IO as possible. Then flush the buffers before making
	 * a synchronous path to catch all the remaining inodes are reclaimed.
	 * This makes the reclaim process as quick as possible by avoiding
	 * synchronous writeout and blocking on inodes already in the delwri
	 * state as much as possible.
	 */
	FUNC11(mp, 0);
	FUNC1(mp->m_ddev_targp);
	FUNC11(mp, SYNC_WAIT);

	FUNC9(mp);

	/*
	 * Flush out the log synchronously so that we know for sure
	 * that nothing is pinned.  This is important because bflush()
	 * will skip pinned buffers.
	 */
	FUNC5(mp, XFS_LOG_SYNC);

	/*
	 * Unreserve any blocks we have so that when we unmount we don't account
	 * the reserved free space as used. This is really only necessary for
	 * lazy superblock counting because it trusts the incore superblock
	 * counters to be absolutely correct on clean unmount.
	 *
	 * We don't bother correcting this elsewhere for lazy superblock
	 * counting because on mount of an unclean filesystem we reconstruct the
	 * correct counter value and this is irrelevant.
	 *
	 * For non-lazy counter filesystems, this doesn't matter at all because
	 * we only every apply deltas to the superblock and hence the incore
	 * value does not matter....
	 */
	resblks = 0;
	error = FUNC12(mp, &resblks, NULL);
	if (error)
		FUNC17(mp, "Unable to free reserved block pool. "
				"Freespace may not be correct on next mount.");

	error = FUNC6(mp, 1);
	if (error)
		FUNC17(mp, "Unable to update superblock counters. "
				"Freespace may not be correct on next mount.");
	FUNC14(mp);

	/*
	 * Make sure all buffers have been flushed and completed before
	 * unmounting the log.
	 */
	error = FUNC3(mp->m_ddev_targp, 1);
	if (error)
		FUNC17(mp, "%d busy buffers during unmount.", error);
	FUNC16(mp->m_ddev_targp);

	FUNC8(mp);
	FUNC7(mp);
	FUNC15(mp);

#if defined(DEBUG)
	xfs_errortag_clearall(mp, 0);
#endif
	FUNC4(mp);
}