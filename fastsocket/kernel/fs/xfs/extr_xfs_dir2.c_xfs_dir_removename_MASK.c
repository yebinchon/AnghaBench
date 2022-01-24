#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_16__ {int di_mode; scalar_t__ di_format; } ;
struct TYPE_17__ {TYPE_3__ i_d; TYPE_2__* i_mount; } ;
typedef  TYPE_4__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_ino_t ;
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  int /*<<< orphan*/  xfs_extlen_t ;
struct TYPE_18__ {int /*<<< orphan*/ * trans; int /*<<< orphan*/  whichfork; int /*<<< orphan*/  total; int /*<<< orphan*/ * flist; int /*<<< orphan*/ * firstblock; TYPE_4__* dp; int /*<<< orphan*/  inumber; int /*<<< orphan*/  hashval; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
typedef  TYPE_5__ xfs_da_args_t ;
typedef  int /*<<< orphan*/  xfs_bmap_free_t ;
struct xfs_name {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct TYPE_15__ {TYPE_1__* m_dirnameops; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* hashname ) (struct xfs_name*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int S_IFDIR ; 
 int S_IFMT ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 scalar_t__ XFS_DINODE_FMT_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_name*) ; 
 int FUNC4 (TYPE_5__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,int*) ; 
 int FUNC7 (TYPE_5__*) ; 
 int FUNC8 (TYPE_5__*) ; 
 int FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  xs_dir_remove ; 

int
FUNC10(
	xfs_trans_t	*tp,
	xfs_inode_t	*dp,
	struct xfs_name	*name,
	xfs_ino_t	ino,
	xfs_fsblock_t	*first,		/* bmap's firstblock */
	xfs_bmap_free_t	*flist,		/* bmap's freeblock list */
	xfs_extlen_t	total)		/* bmap's total block count */
{
	xfs_da_args_t	args;
	int		rval;
	int		v;		/* type-checking value */

	FUNC0((dp->i_d.di_mode & S_IFMT) == S_IFDIR);
	FUNC1(xs_dir_remove);

	FUNC2(&args, 0, sizeof(xfs_da_args_t));
	args.name = name->name;
	args.namelen = name->len;
	args.hashval = dp->i_mount->m_dirnameops->hashname(name);
	args.inumber = ino;
	args.dp = dp;
	args.firstblock = first;
	args.flist = flist;
	args.total = total;
	args.whichfork = XFS_DATA_FORK;
	args.trans = tp;

	if (dp->i_d.di_format == XFS_DINODE_FMT_LOCAL)
		rval = FUNC9(&args);
	else if ((rval = FUNC5(tp, dp, &v)))
		return rval;
	else if (v)
		rval = FUNC4(&args);
	else if ((rval = FUNC6(tp, dp, &v)))
		return rval;
	else if (v)
		rval = FUNC7(&args);
	else
		rval = FUNC8(&args);
	return rval;
}