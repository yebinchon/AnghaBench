#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int /*<<< orphan*/ * if_data; } ;
struct TYPE_26__ {int if_flags; int if_bytes; TYPE_2__ if_u1; } ;
struct TYPE_24__ {int di_size; } ;
struct TYPE_28__ {TYPE_3__ i_df; TYPE_1__ i_d; int /*<<< orphan*/  i_mount; } ;
typedef  TYPE_5__ xfs_inode_t ;
struct TYPE_27__ {int i8count; int count; } ;
struct TYPE_29__ {TYPE_4__ hdr; } ;
typedef  TYPE_6__ xfs_dir2_sf_t ;
struct TYPE_30__ {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
typedef  TYPE_7__ xfs_dir2_sf_entry_t ;
struct TYPE_31__ {scalar_t__ inumber; int /*<<< orphan*/  trans; int /*<<< orphan*/  namelen; TYPE_5__* dp; } ;
typedef  TYPE_8__ xfs_da_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOENT ; 
 scalar_t__ XFS_CMP_EXACT ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 scalar_t__ XFS_DIR2_MAX_SHORT_INUM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int XFS_IFINLINE ; 
 int XFS_ILOG_CORE ; 
 int XFS_ILOG_DDATA ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parent ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 scalar_t__ FUNC6 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*) ; 
 int FUNC8 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC9 (TYPE_6__*) ; 
 scalar_t__ FUNC10 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  xfs_dir2_sf_hdr_t ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*) ; 
 TYPE_7__* FUNC13 (TYPE_6__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_5__*,int) ; 

int						/* error */
FUNC17(
	xfs_da_args_t		*args)
{
	int			byteoff;	/* offset of removed entry */
	xfs_inode_t		*dp;		/* incore directory inode */
	int			entsize;	/* this entry's size */
	int			i;		/* shortform entry index */
	int			newsize;	/* new inode size */
	int			oldsize;	/* old inode size */
	xfs_dir2_sf_entry_t	*sfep;		/* shortform directory entry */
	xfs_dir2_sf_t		*sfp;		/* shortform structure */

	FUNC5(args);

	dp = args->dp;

	FUNC0(dp->i_df.if_flags & XFS_IFINLINE);
	oldsize = (int)dp->i_d.di_size;
	/*
	 * Bail out if the directory is way too short.
	 */
	if (oldsize < FUNC4(xfs_dir2_sf_hdr_t, parent)) {
		FUNC0(FUNC2(dp->i_mount));
		return FUNC1(EIO);
	}
	FUNC0(dp->i_df.if_bytes == oldsize);
	FUNC0(dp->i_df.if_u1.if_data != NULL);
	sfp = (xfs_dir2_sf_t *)dp->i_df.if_u1.if_data;
	FUNC0(oldsize >= FUNC11(sfp->hdr.i8count));
	/*
	 * Loop over the old directory entries.
	 * Find the one we're deleting.
	 */
	for (i = 0, sfep = FUNC9(sfp); i < sfp->hdr.count;
				i++, sfep = FUNC13(sfp, sfep)) {
		if (FUNC6(args, sfep->name, sfep->namelen) ==
								XFS_CMP_EXACT) {
			FUNC0(FUNC10(sfp,
						FUNC12(sfep)) ==
								args->inumber);
			break;
		}
	}
	/*
	 * Didn't find it.
	 */
	if (i == sfp->hdr.count)
		return FUNC1(ENOENT);
	/*
	 * Calculate sizes.
	 */
	byteoff = (int)((char *)sfep - (char *)sfp);
	entsize = FUNC8(sfp, args->namelen);
	newsize = oldsize - entsize;
	/*
	 * Copy the part if any after the removed entry, sliding it down.
	 */
	if (byteoff + entsize < oldsize)
		FUNC3((char *)sfp + byteoff, (char *)sfp + byteoff + entsize,
			oldsize - (byteoff + entsize));
	/*
	 * Fix up the header and file size.
	 */
	sfp->hdr.count--;
	dp->i_d.di_size = newsize;
	/*
	 * Reallocate, making it smaller.
	 */
	FUNC15(dp, newsize - oldsize, XFS_DATA_FORK);
	sfp = (xfs_dir2_sf_t *)dp->i_df.if_u1.if_data;
#if XFS_BIG_INUMS
	/*
	 * Are we changing inode number size?
	 */
	if (args->inumber > XFS_DIR2_MAX_SHORT_INUM) {
		if (sfp->hdr.i8count == 1)
			xfs_dir2_sf_toino4(args);
		else
			sfp->hdr.i8count--;
	}
#endif
	FUNC7(args);
	FUNC16(args->trans, dp, XFS_ILOG_CORE | XFS_ILOG_DDATA);
	return 0;
}