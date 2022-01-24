#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  scalar_t__ xfs_fileoff_t ;
struct TYPE_6__ {scalar_t__ br_startblock; scalar_t__ br_blockcount; } ;
typedef  TYPE_1__ xfs_bmbt_irec_t ;
struct TYPE_7__ {int /*<<< orphan*/  xbf_first; int /*<<< orphan*/  xbf_count; } ;
typedef  TYPE_2__ xfs_bmap_free_t ;
struct xfs_inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DELAYSTARTBLOCK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  XFS_BMAPI_ENTIRE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct xfs_inode*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct xfs_inode*,scalar_t__,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_2__*,int*) ; 
 int FUNC7 (struct xfs_inode*,int /*<<< orphan*/ ) ; 

int
FUNC8(
	struct xfs_inode	*ip,
	xfs_fileoff_t		start_fsb,
	xfs_fileoff_t		length)
{
	xfs_fileoff_t		remaining = length;
	int			error = 0;

	FUNC0(FUNC7(ip, XFS_ILOCK_EXCL));

	do {
		int		done;
		xfs_bmbt_irec_t	imap;
		int		nimaps = 1;
		xfs_fsblock_t	firstblock;
		xfs_bmap_free_t flist;

		/*
		 * Map the range first and check that it is a delalloc extent
		 * before trying to unmap the range. Otherwise we will be
		 * trying to remove a real extent (which requires a
		 * transaction) or a hole, which is probably a bad idea...
		 */
		error = FUNC5(NULL, ip, start_fsb, 1,
				XFS_BMAPI_ENTIRE,  NULL, 0, &imap,
				&nimaps, NULL);

		if (error) {
			/* something screwed, just bail */
			if (!FUNC2(ip->i_mount)) {
				FUNC3(ip->i_mount,
			"Failed delalloc mapping lookup ino %lld fsb %lld.",
						ip->i_ino, start_fsb);
			}
			break;
		}
		if (!nimaps) {
			/* nothing there */
			goto next_block;
		}
		if (imap.br_startblock != DELAYSTARTBLOCK) {
			/* been converted, ignore */
			goto next_block;
		}
		FUNC1(imap.br_blockcount == 0);

		/*
		 * Note: while we initialise the firstblock/flist pair, they
		 * should never be used because blocks should never be
		 * allocated or freed for a delalloc extent and hence we need
		 * don't cancel or finish them after the xfs_bunmapi() call.
		 */
		FUNC4(&flist, &firstblock);
		error = FUNC6(NULL, ip, start_fsb, 1, 0, 1, &firstblock,
					&flist, &done);
		if (error)
			break;

		FUNC0(!flist.xbf_count && !flist.xbf_first);
next_block:
		start_fsb++;
		remaining--;
	} while(remaining > 0);

	return error;
}