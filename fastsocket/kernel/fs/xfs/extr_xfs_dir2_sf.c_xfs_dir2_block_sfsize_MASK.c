#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_12__ {int /*<<< orphan*/ * i_mount; } ;
typedef  TYPE_1__ xfs_inode_t ;
typedef  scalar_t__ xfs_ino_t ;
typedef  int /*<<< orphan*/  xfs_dir2_sf_t ;
typedef  int /*<<< orphan*/  xfs_dir2_sf_off_t ;
struct TYPE_13__ {int count; int i8count; int /*<<< orphan*/  parent; } ;
typedef  TYPE_2__ xfs_dir2_sf_hdr_t ;
struct TYPE_14__ {int /*<<< orphan*/  address; } ;
typedef  TYPE_3__ xfs_dir2_leaf_entry_t ;
typedef  int /*<<< orphan*/  xfs_dir2_ino8_t ;
typedef  int /*<<< orphan*/  xfs_dir2_ino4_t ;
typedef  int xfs_dir2_dataptr_t ;
struct TYPE_15__ {int namelen; char* name; int /*<<< orphan*/  inumber; } ;
typedef  TYPE_4__ xfs_dir2_data_entry_t ;
struct TYPE_16__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_5__ xfs_dir2_block_tail_t ;
typedef  int /*<<< orphan*/  xfs_dir2_block_t ;
typedef  int uint ;

/* Variables and functions */
 scalar_t__ XFS_DIR2_MAX_SHORT_INUM ; 
 int XFS_DIR2_NULL_DATAPTR ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_5__*) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 

int						/* size for sf form */
FUNC8(
	xfs_inode_t		*dp,		/* incore inode pointer */
	xfs_dir2_block_t	*block,		/* block directory data */
	xfs_dir2_sf_hdr_t	*sfhp)		/* output: header for sf form */
{
	xfs_dir2_dataptr_t	addr;		/* data entry address */
	xfs_dir2_leaf_entry_t	*blp;		/* leaf area of the block */
	xfs_dir2_block_tail_t	*btp;		/* tail area of the block */
	int			count;		/* shortform entry count */
	xfs_dir2_data_entry_t	*dep;		/* data entry in the block */
	int			i;		/* block entry index */
	int			i8count;	/* count of big-inode entries */
	int			isdot;		/* entry is "." */
	int			isdotdot;	/* entry is ".." */
	xfs_mount_t		*mp;		/* mount structure pointer */
	int			namelen;	/* total name bytes */
	xfs_ino_t		parent = 0;	/* parent inode number */
	int			size=0;		/* total computed size */

	mp = dp->i_mount;

	count = i8count = namelen = 0;
	btp = FUNC4(mp, block);
	blp = FUNC3(btp);

	/*
	 * Iterate over the block's data entries by using the leaf pointers.
	 */
	for (i = 0; i < FUNC1(btp->count); i++) {
		if ((addr = FUNC1(blp[i].address)) == XFS_DIR2_NULL_DATAPTR)
			continue;
		/*
		 * Calculate the pointer to the entry at hand.
		 */
		dep = (xfs_dir2_data_entry_t *)
		      ((char *)block + FUNC5(mp, addr));
		/*
		 * Detect . and .., so we can special-case them.
		 * . is not included in sf directories.
		 * .. is included by just the parent inode number.
		 */
		isdot = dep->namelen == 1 && dep->name[0] == '.';
		isdotdot =
			dep->namelen == 2 &&
			dep->name[0] == '.' && dep->name[1] == '.';
#if XFS_BIG_INUMS
		if (!isdot)
			i8count += be64_to_cpu(dep->inumber) > XFS_DIR2_MAX_SHORT_INUM;
#endif
		if (!isdot && !isdotdot) {
			count++;
			namelen += dep->namelen;
		} else if (isdotdot)
			parent = FUNC2(dep->inumber);
		/*
		 * Calculate the new size, see if we should give up yet.
		 */
		size = FUNC6(i8count) +		/* header */
		       count +					/* namelen */
		       count * (uint)sizeof(xfs_dir2_sf_off_t) + /* offset */
		       namelen +				/* name */
		       (i8count ?				/* inumber */
				(uint)sizeof(xfs_dir2_ino8_t) * count :
				(uint)sizeof(xfs_dir2_ino4_t) * count);
		if (size > FUNC0(dp))
			return size;		/* size value is a failure */
	}
	/*
	 * Create the output header, if it worked.
	 */
	sfhp->count = count;
	sfhp->i8count = i8count;
	FUNC7((xfs_dir2_sf_t *)sfhp, &parent, &sfhp->parent);
	return size;
}