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
typedef  scalar_t__ xfs_agnumber_t ;
struct xfs_perag {scalar_t__ pag_agno; unsigned long pag_ici_reclaim_cursor; int /*<<< orphan*/  pag_ici_reclaim_lock; int /*<<< orphan*/  pag_ici_root; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {scalar_t__ i_ino; } ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int SYNC_TRYLOCK ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_ICI_RECLAIM_TAG ; 
 unsigned long FUNC1 (struct xfs_mount*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct xfs_mount*,scalar_t__) ; 
 int XFS_LOOKUP_BATCH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,void**,unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct xfs_perag* FUNC9 (struct xfs_mount*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_perag*) ; 
 int FUNC11 (struct xfs_inode*,struct xfs_perag*,int) ; 
 scalar_t__ FUNC12 (struct xfs_inode*,int) ; 

int
FUNC13(
	struct xfs_mount	*mp,
	int			flags,
	int			*nr_to_scan)
{
	struct xfs_perag	*pag;
	int			error = 0;
	int			last_error = 0;
	xfs_agnumber_t		ag;
	int			trylock = flags & SYNC_TRYLOCK;
	int			skipped;

restart:
	ag = 0;
	skipped = 0;
	while ((pag = FUNC9(mp, ag, XFS_ICI_RECLAIM_TAG))) {
		unsigned long	first_index = 0;
		int		done = 0;
		int		nr_found = 0;

		ag = pag->pag_agno + 1;

		if (trylock) {
			if (!FUNC4(&pag->pag_ici_reclaim_lock)) {
				skipped++;
				FUNC10(pag);
				continue;
			}
			first_index = pag->pag_ici_reclaim_cursor;
		} else
			FUNC3(&pag->pag_ici_reclaim_lock);

		do {
			struct xfs_inode *batch[XFS_LOOKUP_BATCH];
			int	i;

			FUNC7();
			nr_found = FUNC6(
					&pag->pag_ici_root,
					(void **)batch, first_index,
					XFS_LOOKUP_BATCH,
					XFS_ICI_RECLAIM_TAG);
			if (!nr_found) {
				done = 1;
				FUNC8();
				break;
			}

			/*
			 * Grab the inodes before we drop the lock. if we found
			 * nothing, nr == 0 and the loop will be skipped.
			 */
			for (i = 0; i < nr_found; i++) {
				struct xfs_inode *ip = batch[i];

				if (done || FUNC12(ip, flags))
					batch[i] = NULL;

				/*
				 * Update the index for the next lookup. Catch
				 * overflows into the next AG range which can
				 * occur if we have inodes in the last block of
				 * the AG and we are currently pointing to the
				 * last inode.
				 *
				 * Because we may see inodes that are from the
				 * wrong AG due to RCU freeing and
				 * reallocation, only update the index if it
				 * lies in this AG. It was a race that lead us
				 * to see this inode, so another lookup from
				 * the same index will not find it again.
				 */
				if (FUNC2(mp, ip->i_ino) !=
								pag->pag_agno)
					continue;
				first_index = FUNC1(mp, ip->i_ino + 1);
				if (first_index < FUNC1(mp, ip->i_ino))
					done = 1;
			}

			/* unlock now we've grabbed the inodes. */
			FUNC8();

			for (i = 0; i < nr_found; i++) {
				if (!batch[i])
					continue;
				error = FUNC11(batch[i], pag, flags);
				if (error && last_error != EFSCORRUPTED)
					last_error = error;
			}

			*nr_to_scan -= XFS_LOOKUP_BATCH;

		} while (nr_found && !done && *nr_to_scan > 0);

		if (trylock && !done)
			pag->pag_ici_reclaim_cursor = first_index;
		else
			pag->pag_ici_reclaim_cursor = 0;
		FUNC5(&pag->pag_ici_reclaim_lock);
		FUNC10(pag);
	}

	/*
	 * if we skipped any AG, and we still have scan count remaining, do
	 * another pass this time using blocking reclaim semantics (i.e
	 * waiting on the reclaim locks and ignoring the reclaim cursors). This
	 * ensure that when we get more reclaimers than AGs we block rather
	 * than spin trying to execute reclaim.
	 */
	if (trylock && skipped && *nr_to_scan > 0) {
		trylock = 0;
		goto restart;
	}
	return FUNC0(last_error);
}