#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_16__ {scalar_t__ sb_agcount; scalar_t__ sb_agblocks; } ;
struct TYPE_17__ {TYPE_1__ m_sb; } ;
typedef  TYPE_2__ xfs_mount_t ;
struct TYPE_18__ {TYPE_2__* i_mount; } ;
typedef  TYPE_3__ xfs_inode_t ;
struct TYPE_19__ {int if_bytes; int /*<<< orphan*/  if_broot_bytes; struct xfs_btree_block* if_broot; } ;
typedef  TYPE_4__ xfs_ifork_t ;
typedef  scalar_t__ xfs_fsblock_t ;
typedef  int /*<<< orphan*/  xfs_bmbt_rec_t ;
typedef  int uint ;
struct xfs_btree_block {int /*<<< orphan*/  bb_level; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EFSCORRUPTED ; 
 scalar_t__ NULLDFSBNO ; 
 scalar_t__ NULLFSBLOCK ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,struct xfs_btree_block*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ XFS_DINODE_FMT_EXTENTS ; 
 int /*<<< orphan*/  XFS_ERRLEVEL_LOW ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int) ; 
 TYPE_4__* FUNC7 (TYPE_3__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_4__*,scalar_t__,int,int*) ; 

int						/* error */
FUNC13(
	xfs_trans_t		*tp,		/* transaction pointer */
	xfs_inode_t		*ip,		/* incore inode */
	int			whichfork,	/* data or attr fork */
	int			*count)		/* out: count of blocks */
{
	struct xfs_btree_block	*block;	/* current btree block */
	xfs_fsblock_t		bno;	/* block # of "block" */
	xfs_ifork_t		*ifp;	/* fork structure */
	int			level;	/* btree level, for checking */
	xfs_mount_t		*mp;	/* file system mount structure */
	__be64			*pp;	/* pointer to block address */

	bno = NULLFSBLOCK;
	mp = ip->i_mount;
	ifp = FUNC7(ip, whichfork);
	if ( FUNC6(ip, whichfork) == XFS_DINODE_FMT_EXTENTS ) {
		FUNC11(ifp, 0,
			ifp->if_bytes / (uint)sizeof(xfs_bmbt_rec_t),
			count);
		return 0;
	}

	/*
	 * Root level must use BMAP_BROOT_PTR_ADDR macro to get ptr out.
	 */
	block = ifp->if_broot;
	level = FUNC8(block->bb_level);
	FUNC0(level > 0);
	pp = FUNC1(mp, block, 1, ifp->if_broot_bytes);
	bno = FUNC9(*pp);
	FUNC0(bno != NULLDFSBNO);
	FUNC0(FUNC5(mp, bno) < mp->m_sb.sb_agcount);
	FUNC0(FUNC4(mp, bno) < mp->m_sb.sb_agblocks);

	if (FUNC10(FUNC12(mp, tp, ifp, bno, level, count) < 0)) {
		FUNC3("xfs_bmap_count_blocks(2)", XFS_ERRLEVEL_LOW,
				 mp);
		return FUNC2(EFSCORRUPTED);
	}

	return 0;
}