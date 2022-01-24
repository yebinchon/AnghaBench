#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_inode_t ;
struct TYPE_4__ {int if_flags; int if_bytes; } ;
typedef  TYPE_1__ xfs_ifork_t ;
typedef  scalar_t__ xfs_fsblock_t ;
typedef  scalar_t__ xfs_fileoff_t ;
typedef  int xfs_extnum_t ;
typedef  int /*<<< orphan*/  xfs_bmbt_rec_t ;
typedef  int /*<<< orphan*/  xfs_bmbt_rec_host_t ;
typedef  int uint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XFS_DATA_FORK ; 
 int XFS_IFEXTENTS ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int					/* error */
FUNC6(
	xfs_inode_t	*ip,		/* incore inode pointer */
	xfs_fileoff_t	endoff,		/* file offset in fsblocks */
	int		whichfork,	/* data or attribute fork */
	int		*eof)		/* result value */
{
	xfs_fsblock_t	blockcount;	/* extent block count */
	int		error;		/* error return value */
	xfs_ifork_t	*ifp;		/* inode fork pointer */
	xfs_bmbt_rec_host_t *lastrec;	/* extent record pointer */
	xfs_extnum_t	nextents;	/* number of file extents */
	xfs_fileoff_t	startoff;	/* extent starting file offset */

	FUNC0(whichfork == XFS_DATA_FORK);
	ifp = FUNC1(ip, whichfork);
	if (!(ifp->if_flags & XFS_IFEXTENTS) &&
	    (error = FUNC5(NULL, ip, whichfork)))
		return error;
	nextents = ifp->if_bytes / (uint)sizeof(xfs_bmbt_rec_t);
	if (nextents == 0) {
		*eof = 1;
		return 0;
	}
	/*
	 * Go to the last extent
	 */
	lastrec = FUNC4(ifp, nextents - 1);
	startoff = FUNC3(lastrec);
	blockcount = FUNC2(lastrec);
	*eof = endoff >= startoff + blockcount;
	return 0;
}