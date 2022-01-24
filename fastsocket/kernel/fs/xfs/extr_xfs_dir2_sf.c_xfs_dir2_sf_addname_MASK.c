#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__ di_size; } ;
struct TYPE_20__ {int /*<<< orphan*/ * if_data; } ;
struct TYPE_21__ {int if_flags; scalar_t__ if_bytes; TYPE_1__ if_u1; } ;
struct TYPE_24__ {TYPE_4__ i_d; TYPE_2__ i_df; int /*<<< orphan*/  i_mount; } ;
typedef  TYPE_5__ xfs_inode_t ;
struct TYPE_22__ {scalar_t__ i8count; int count; } ;
struct TYPE_25__ {TYPE_3__ hdr; } ;
typedef  TYPE_6__ xfs_dir2_sf_t ;
typedef  int /*<<< orphan*/  xfs_dir2_sf_entry_t ;
typedef  int /*<<< orphan*/  xfs_dir2_ino8_t ;
typedef  int /*<<< orphan*/  xfs_dir2_ino4_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_aoff_t ;
struct TYPE_26__ {scalar_t__ inumber; int op_flags; scalar_t__ total; int /*<<< orphan*/  trans; int /*<<< orphan*/  namelen; TYPE_5__* dp; } ;
typedef  TYPE_7__ xfs_da_args_t ;
typedef  int uint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ENOSPC ; 
 int XFS_DA_OP_JUSTCHECK ; 
 scalar_t__ XFS_DIR2_MAX_SHORT_INUM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int XFS_IFINLINE ; 
 int FUNC3 (TYPE_5__*) ; 
 int XFS_ILOG_CORE ; 
 int XFS_ILOG_DDATA ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parent ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*) ; 
 int FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int,int) ; 
 int FUNC9 (TYPE_7__*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  xfs_dir2_sf_hdr_t ; 
 scalar_t__ FUNC12 (TYPE_7__*) ; 
 int FUNC13 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_5__*,int) ; 

int						/* error */
FUNC16(
	xfs_da_args_t		*args)		/* operation arguments */
{
	int			add_entsize;	/* size of the new entry */
	xfs_inode_t		*dp;		/* incore directory inode */
	int			error;		/* error return value */
	int			incr_isize;	/* total change in size */
	int			new_isize;	/* di_size after adding name */
	int			objchange;	/* changing to 8-byte inodes */
	xfs_dir2_data_aoff_t	offset = 0;	/* offset for new entry */
	int			old_isize;	/* di_size before adding name */
	int			pick;		/* which algorithm to use */
	xfs_dir2_sf_t		*sfp;		/* shortform structure */
	xfs_dir2_sf_entry_t	*sfep = NULL;	/* shortform entry */

	FUNC5(args);

	FUNC0(FUNC12(args) == ENOENT);
	dp = args->dp;
	FUNC0(dp->i_df.if_flags & XFS_IFINLINE);
	/*
	 * Make sure the shortform value has some of its header.
	 */
	if (dp->i_d.di_size < FUNC4(xfs_dir2_sf_hdr_t, parent)) {
		FUNC0(FUNC2(dp->i_mount));
		return FUNC1(EIO);
	}
	FUNC0(dp->i_df.if_bytes == dp->i_d.di_size);
	FUNC0(dp->i_df.if_u1.if_data != NULL);
	sfp = (xfs_dir2_sf_t *)dp->i_df.if_u1.if_data;
	FUNC0(dp->i_d.di_size >= FUNC11(sfp->hdr.i8count));
	/*
	 * Compute entry (and change in) size.
	 */
	add_entsize = FUNC10(sfp, args->namelen);
	incr_isize = add_entsize;
	objchange = 0;
#if XFS_BIG_INUMS
	/*
	 * Do we have to change to 8 byte inodes?
	 */
	if (args->inumber > XFS_DIR2_MAX_SHORT_INUM && sfp->hdr.i8count == 0) {
		/*
		 * Yes, adjust the entry size and the total size.
		 */
		add_entsize +=
			(uint)sizeof(xfs_dir2_ino8_t) -
			(uint)sizeof(xfs_dir2_ino4_t);
		incr_isize +=
			(sfp->hdr.count + 2) *
			((uint)sizeof(xfs_dir2_ino8_t) -
			 (uint)sizeof(xfs_dir2_ino4_t));
		objchange = 1;
	}
#endif
	old_isize = (int)dp->i_d.di_size;
	new_isize = old_isize + incr_isize;
	/*
	 * Won't fit as shortform any more (due to size),
	 * or the pick routine says it won't (due to offset values).
	 */
	if (new_isize > FUNC3(dp) ||
	    (pick =
	     FUNC9(args, objchange, &sfep, &offset)) == 0) {
		/*
		 * Just checking or no space reservation, it doesn't fit.
		 */
		if ((args->op_flags & XFS_DA_OP_JUSTCHECK) || args->total == 0)
			return FUNC1(ENOSPC);
		/*
		 * Convert to block form then add the name.
		 */
		error = FUNC13(args);
		if (error)
			return error;
		return FUNC6(args);
	}
	/*
	 * Just checking, it fits.
	 */
	if (args->op_flags & XFS_DA_OP_JUSTCHECK)
		return 0;
	/*
	 * Do it the easy way - just add it at the end.
	 */
	if (pick == 1)
		FUNC7(args, sfep, offset, new_isize);
	/*
	 * Do it the hard way - look for a place to insert the new entry.
	 * Convert to 8 byte inode numbers first if necessary.
	 */
	else {
		FUNC0(pick == 2);
#if XFS_BIG_INUMS
		if (objchange)
			xfs_dir2_sf_toino8(args);
#endif
		FUNC8(args, objchange, new_isize);
	}
	FUNC15(args->trans, dp, XFS_ILOG_CORE | XFS_ILOG_DDATA);
	return 0;
}