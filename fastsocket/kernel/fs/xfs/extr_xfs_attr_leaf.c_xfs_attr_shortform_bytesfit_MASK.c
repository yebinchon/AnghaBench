#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int m_flags; } ;
typedef  TYPE_3__ xfs_mount_t ;
struct TYPE_10__ {int if_bytes; int /*<<< orphan*/  if_broot; } ;
struct TYPE_9__ {int di_format; int di_forkoff; } ;
struct TYPE_12__ {TYPE_2__ i_df; TYPE_1__ i_d; TYPE_3__* i_mount; } ;
typedef  TYPE_4__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_dev_t ;
typedef  int /*<<< orphan*/  uuid_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  MINABTPTRS ; 
 int /*<<< orphan*/  MINDBTPTRS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  XFS_DINODE_FMT_BTREE 131 
#define  XFS_DINODE_FMT_DEV 130 
#define  XFS_DINODE_FMT_EXTENTS 129 
#define  XFS_DINODE_FMT_UUID 128 
 int FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int XFS_MOUNT_ATTR2 ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (TYPE_4__*) ; 

int
FUNC7(xfs_inode_t *dp, int bytes)
{
	int offset;
	int minforkoff;	/* lower limit on valid forkoff locations */
	int maxforkoff;	/* upper limit on valid forkoff locations */
	int dsize;
	xfs_mount_t *mp = dp->i_mount;

	offset = (FUNC4(mp) - bytes) >> 3; /* rounded down */

	switch (dp->i_d.di_format) {
	case XFS_DINODE_FMT_DEV:
		minforkoff = FUNC5(sizeof(xfs_dev_t), 8) >> 3;
		return (offset >= minforkoff) ? minforkoff : 0;
	case XFS_DINODE_FMT_UUID:
		minforkoff = FUNC5(sizeof(uuid_t), 8) >> 3;
		return (offset >= minforkoff) ? minforkoff : 0;
	}

	/*
	 * If the requested numbers of bytes is smaller or equal to the
	 * current attribute fork size we can always proceed.
	 *
	 * Note that if_bytes in the data fork might actually be larger than
	 * the current data fork size is due to delalloc extents. In that
	 * case either the extent count will go down when they are converted
	 * to real extents, or the delalloc conversion will take care of the
	 * literal area rebalancing.
	 */
	if (bytes <= FUNC3(dp))
		return dp->i_d.di_forkoff;

	/*
	 * For attr2 we can try to move the forkoff if there is space in the
	 * literal area, but for the old format we are done if there is no
	 * space in the fixed attribute fork.
	 */
	if (!(mp->m_flags & XFS_MOUNT_ATTR2))
		return 0;

	dsize = dp->i_df.if_bytes;

	switch (dp->i_d.di_format) {
	case XFS_DINODE_FMT_EXTENTS:
		/*
		 * If there is no attr fork and the data fork is extents, 
		 * determine if creating the default attr fork will result
		 * in the extents form migrating to btree. If so, the
		 * minimum offset only needs to be the space required for
		 * the btree root.
		 */
		if (!dp->i_d.di_forkoff && dp->i_df.if_bytes >
		    FUNC6(dp))
			dsize = FUNC2(MINDBTPTRS);
		break;
	case XFS_DINODE_FMT_BTREE:
		/*
		 * If we have a data btree then keep forkoff if we have one,
		 * otherwise we are adding a new attr, so then we set
		 * minforkoff to where the btree root can finish so we have
		 * plenty of room for attrs
		 */
		if (dp->i_d.di_forkoff) {
			if (offset < dp->i_d.di_forkoff)
				return 0;
			return dp->i_d.di_forkoff;
		}
		dsize = FUNC1(dp->i_df.if_broot);
		break;
	}

	/*
	 * A data fork btree root must have space for at least
	 * MINDBTPTRS key/ptr pairs if the data fork is small or empty.
	 */
	minforkoff = FUNC0(dsize, FUNC2(MINDBTPTRS));
	minforkoff = FUNC5(minforkoff, 8) >> 3;

	/* attr fork btree root can have at least this many key/ptr pairs */
	maxforkoff = FUNC4(mp) - FUNC2(MINABTPTRS);
	maxforkoff = maxforkoff >> 3;	/* rounded down */

	if (offset >= maxforkoff)
		return maxforkoff;
	if (offset >= minforkoff)
		return offset;
	return 0;
}