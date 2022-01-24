#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_12__ {int /*<<< orphan*/  i_mount; } ;
typedef  TYPE_1__ xfs_inode_t ;
struct TYPE_13__ {int if_flags; } ;
typedef  TYPE_2__ xfs_ifork_t ;
typedef  scalar_t__ xfs_fsblock_t ;
typedef  scalar_t__ xfs_fileoff_t ;
typedef  int /*<<< orphan*/  xfs_extnum_t ;
struct TYPE_14__ {scalar_t__ br_startoff; scalar_t__ br_startblock; scalar_t__ br_blockcount; } ;
typedef  TYPE_3__ xfs_bmbt_irec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EFSCORRUPTED ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ NULLFSBLOCK ; 
 scalar_t__ XFS_DINODE_FMT_BTREE ; 
 scalar_t__ XFS_DINODE_FMT_EXTENTS ; 
 int /*<<< orphan*/  XFS_ERRLEVEL_LOW ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int XFS_IFEXTENTS ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 TYPE_2__* FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__,int,int*,int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  xs_blk_mapr ; 

int						/* error */
FUNC11(
	xfs_trans_t	*tp,		/* transaction pointer */
	xfs_inode_t	*ip,		/* incore inode */
	int		whichfork,	/* data or attr fork */
	xfs_fsblock_t	*fsb,		/* output: mapped block */
	xfs_fileoff_t	bno)		/* starting file offs. mapped */
{
	int		eof;		/* we've hit the end of extents */
	int		error;		/* error return */
	xfs_bmbt_irec_t	got;		/* current file extent record */
	xfs_ifork_t	*ifp;		/* inode fork pointer */
	xfs_extnum_t	lastx;		/* last useful extent number */
	xfs_bmbt_irec_t	prev;		/* previous file extent record */

	ifp = FUNC5(ip, whichfork);
	if (FUNC8(
	    FUNC4(ip, whichfork) != XFS_DINODE_FMT_BTREE &&
	    FUNC4(ip, whichfork) != XFS_DINODE_FMT_EXTENTS)) {
	       FUNC2("xfs_bmapi_single", XFS_ERRLEVEL_LOW,
				ip->i_mount);
	       return FUNC1(EFSCORRUPTED);
	}
	if (FUNC3(ip->i_mount))
		return FUNC1(EIO);
	FUNC6(xs_blk_mapr);
	if (!(ifp->if_flags & XFS_IFEXTENTS) &&
	    (error = FUNC10(tp, ip, whichfork)))
		return error;
	(void)FUNC9(ip, bno, whichfork, &eof, &lastx, &got,
		&prev);
	/*
	 * Reading past eof, act as though there's a hole
	 * up to end.
	 */
	if (eof || got.br_startoff > bno) {
		*fsb = NULLFSBLOCK;
		return 0;
	}
	FUNC0(!FUNC7(got.br_startblock));
	FUNC0(bno < got.br_startoff + got.br_blockcount);
	*fsb = got.br_startblock + (bno - got.br_startoff);
	return 0;
}