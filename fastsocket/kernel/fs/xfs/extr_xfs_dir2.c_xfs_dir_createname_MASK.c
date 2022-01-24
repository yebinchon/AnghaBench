#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  t_mountp; } ;
typedef  TYPE_4__ xfs_trans_t ;
struct TYPE_20__ {int di_mode; scalar_t__ di_format; } ;
struct TYPE_22__ {TYPE_3__ i_d; TYPE_2__* i_mount; } ;
typedef  TYPE_5__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_ino_t ;
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  int /*<<< orphan*/  xfs_extlen_t ;
struct TYPE_23__ {int op_flags; TYPE_4__* trans; int /*<<< orphan*/  whichfork; int /*<<< orphan*/  total; int /*<<< orphan*/ * flist; int /*<<< orphan*/ * firstblock; TYPE_5__* dp; int /*<<< orphan*/  inumber; int /*<<< orphan*/  hashval; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
typedef  TYPE_6__ xfs_da_args_t ;
typedef  int /*<<< orphan*/  xfs_bmap_free_t ;
struct xfs_name {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct TYPE_19__ {TYPE_1__* m_dirnameops; } ;
struct TYPE_18__ {int /*<<< orphan*/  (* hashname ) (struct xfs_name*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int S_IFDIR ; 
 int S_IFMT ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int XFS_DA_OP_ADDNAME ; 
 int XFS_DA_OP_OKNOENT ; 
 scalar_t__ XFS_DINODE_FMT_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_name*) ; 
 int FUNC4 (TYPE_6__*) ; 
 int FUNC5 (TYPE_4__*,TYPE_5__*,int*) ; 
 int FUNC6 (TYPE_4__*,TYPE_5__*,int*) ; 
 int FUNC7 (TYPE_6__*) ; 
 int FUNC8 (TYPE_6__*) ; 
 int FUNC9 (TYPE_6__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xs_dir_create ; 

int
FUNC11(
	xfs_trans_t		*tp,
	xfs_inode_t		*dp,
	struct xfs_name		*name,
	xfs_ino_t		inum,		/* new entry inode number */
	xfs_fsblock_t		*first,		/* bmap's firstblock */
	xfs_bmap_free_t		*flist,		/* bmap's freeblock list */
	xfs_extlen_t		total)		/* bmap's total block count */
{
	xfs_da_args_t		args;
	int			rval;
	int			v;		/* type-checking value */

	FUNC0((dp->i_d.di_mode & S_IFMT) == S_IFDIR);
	if ((rval = FUNC10(tp->t_mountp, inum)))
		return rval;
	FUNC1(xs_dir_create);

	FUNC2(&args, 0, sizeof(xfs_da_args_t));
	args.name = name->name;
	args.namelen = name->len;
	args.hashval = dp->i_mount->m_dirnameops->hashname(name);
	args.inumber = inum;
	args.dp = dp;
	args.firstblock = first;
	args.flist = flist;
	args.total = total;
	args.whichfork = XFS_DATA_FORK;
	args.trans = tp;
	args.op_flags = XFS_DA_OP_ADDNAME | XFS_DA_OP_OKNOENT;

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