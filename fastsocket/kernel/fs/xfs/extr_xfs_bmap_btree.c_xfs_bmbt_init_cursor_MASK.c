#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xfs_trans {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  sb_blocklog; } ;
struct xfs_mount {TYPE_2__ m_sb; } ;
struct xfs_inode {int dummy; } ;
struct xfs_ifork {TYPE_1__* if_broot; } ;
struct TYPE_7__ {int whichfork; scalar_t__ flags; scalar_t__ allocated; int /*<<< orphan*/ * flist; int /*<<< orphan*/  firstblock; struct xfs_inode* ip; int /*<<< orphan*/  forksize; } ;
struct TYPE_8__ {TYPE_3__ b; } ;
struct xfs_btree_cur {int bc_flags; TYPE_4__ bc_private; int /*<<< orphan*/ * bc_ops; int /*<<< orphan*/  bc_blocklog; int /*<<< orphan*/  bc_btnum; scalar_t__ bc_nlevels; struct xfs_mount* bc_mp; struct xfs_trans* bc_tp; } ;
struct TYPE_5__ {int /*<<< orphan*/  bb_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NULLFSBLOCK ; 
 int /*<<< orphan*/  XFS_BTNUM_BMAP ; 
 int XFS_BTREE_LONG_PTRS ; 
 int XFS_BTREE_ROOT_IN_INODE ; 
 struct xfs_ifork* FUNC0 (struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_inode*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct xfs_btree_cur* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_bmbt_ops ; 
 int /*<<< orphan*/  xfs_btree_cur_zone ; 

struct xfs_btree_cur *				/* new bmap btree cursor */
FUNC4(
	struct xfs_mount	*mp,		/* file system mount point */
	struct xfs_trans	*tp,		/* transaction pointer */
	struct xfs_inode	*ip,		/* inode owning the btree */
	int			whichfork)	/* data or attr fork */
{
	struct xfs_ifork	*ifp = FUNC0(ip, whichfork);
	struct xfs_btree_cur	*cur;

	cur = FUNC3(xfs_btree_cur_zone, KM_SLEEP);

	cur->bc_tp = tp;
	cur->bc_mp = mp;
	cur->bc_nlevels = FUNC2(ifp->if_broot->bb_level) + 1;
	cur->bc_btnum = XFS_BTNUM_BMAP;
	cur->bc_blocklog = mp->m_sb.sb_blocklog;

	cur->bc_ops = &xfs_bmbt_ops;
	cur->bc_flags = XFS_BTREE_LONG_PTRS | XFS_BTREE_ROOT_IN_INODE;

	cur->bc_private.b.forksize = FUNC1(ip, whichfork);
	cur->bc_private.b.ip = ip;
	cur->bc_private.b.firstblock = NULLFSBLOCK;
	cur->bc_private.b.flist = NULL;
	cur->bc_private.b.allocated = 0;
	cur->bc_private.b.flags = 0;
	cur->bc_private.b.whichfork = whichfork;

	return cur;
}