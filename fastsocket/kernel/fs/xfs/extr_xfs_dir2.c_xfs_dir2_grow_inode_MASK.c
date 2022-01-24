#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_18__ {int m_dirblkfsbs; } ;
typedef  TYPE_2__ xfs_mount_t ;
struct TYPE_17__ {scalar_t__ di_size; scalar_t__ di_nblocks; } ;
struct TYPE_19__ {TYPE_1__ i_d; TYPE_2__* i_mount; } ;
typedef  TYPE_3__ xfs_inode_t ;
typedef  scalar_t__ xfs_fsize_t ;
typedef  scalar_t__ xfs_fileoff_t ;
typedef  scalar_t__ xfs_drfsbno_t ;
typedef  int /*<<< orphan*/  xfs_dir2_db_t ;
typedef  int /*<<< orphan*/  xfs_dablk_t ;
struct TYPE_20__ {int /*<<< orphan*/  total; int /*<<< orphan*/  flist; int /*<<< orphan*/ * firstblock; int /*<<< orphan*/ * trans; TYPE_3__* dp; } ;
typedef  TYPE_4__ xfs_da_args_t ;
struct TYPE_21__ {scalar_t__ br_startoff; scalar_t__ br_blockcount; } ;
typedef  TYPE_5__ xfs_bmbt_irec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int XFS_BMAPI_CONTIG ; 
 int XFS_BMAPI_METADATA ; 
 int XFS_BMAPI_WRITE ; 
 int /*<<< orphan*/  XFS_BMAP_MAX_NMAP ; 
 scalar_t__ FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int XFS_DIR2_DATA_SPACE ; 
 int XFS_DIR2_SPACE_SIZE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 TYPE_5__* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_3__*,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 

int
FUNC12(
	xfs_da_args_t	*args,
	int		space,		/* v2 dir's space XFS_DIR2_xxx_SPACE */
	xfs_dir2_db_t	*dbp)		/* out: block number added */
{
	xfs_fileoff_t	bno;		/* directory offset of new block */
	int		count;		/* count of filesystem blocks */
	xfs_inode_t	*dp;		/* incore directory inode */
	int		error;
	int		got;		/* blocks actually mapped */
	int		i;
	xfs_bmbt_irec_t	map;		/* single structure for bmap */
	int		mapi;		/* mapping index */
	xfs_bmbt_irec_t	*mapp;		/* bmap mapping structure(s) */
	xfs_mount_t	*mp;
	int		nmap;		/* number of bmap entries */
	xfs_trans_t	*tp;
	xfs_drfsbno_t	nblks;

	FUNC7(args, space);

	dp = args->dp;
	tp = args->trans;
	mp = dp->i_mount;
	nblks = dp->i_d.di_nblocks;
	/*
	 * Set lowest possible block in the space requested.
	 */
	bno = FUNC2(mp, space * XFS_DIR2_SPACE_SIZE);
	count = mp->m_dirblkfsbs;
	/*
	 * Find the first hole for our block.
	 */
	if ((error = FUNC8(tp, dp, count, &bno, XFS_DATA_FORK)))
		return error;
	nmap = 1;
	FUNC0(args->firstblock != NULL);
	/*
	 * Try mapping the new block contiguously (one extent).
	 */
	if ((error = FUNC9(tp, dp, bno, count,
			XFS_BMAPI_WRITE|XFS_BMAPI_METADATA|XFS_BMAPI_CONTIG,
			args->firstblock, args->total, &map, &nmap,
			args->flist)))
		return error;
	FUNC0(nmap <= 1);
	if (nmap == 1) {
		mapp = &map;
		mapi = 1;
	}
	/*
	 * Didn't work and this is a multiple-fsb directory block.
	 * Try again with contiguous flag turned on.
	 */
	else if (nmap == 0 && count > 1) {
		xfs_fileoff_t	b;	/* current file offset */

		/*
		 * Space for maximum number of mappings.
		 */
		mapp = FUNC5(sizeof(*mapp) * count, KM_SLEEP);
		/*
		 * Iterate until we get to the end of our block.
		 */
		for (b = bno, mapi = 0; b < bno + count; ) {
			int	c;	/* current fsb count */

			/*
			 * Can't map more than MAX_NMAP at once.
			 */
			nmap = FUNC1(XFS_BMAP_MAX_NMAP, count);
			c = (int)(bno + count - b);
			if ((error = FUNC9(tp, dp, b, c,
					XFS_BMAPI_WRITE|XFS_BMAPI_METADATA,
					args->firstblock, args->total,
					&mapp[mapi], &nmap, args->flist))) {
				FUNC6(mapp);
				return error;
			}
			if (nmap < 1)
				break;
			/*
			 * Add this bunch into our table, go to the next offset.
			 */
			mapi += nmap;
			b = mapp[mapi - 1].br_startoff +
			    mapp[mapi - 1].br_blockcount;
		}
	}
	/*
	 * Didn't work.
	 */
	else {
		mapi = 0;
		mapp = NULL;
	}
	/*
	 * See how many fsb's we got.
	 */
	for (i = 0, got = 0; i < mapi; i++)
		got += mapp[i].br_blockcount;
	/*
	 * Didn't get enough fsb's, or the first/last block's are wrong.
	 */
	if (got != count || mapp[0].br_startoff != bno ||
	    mapp[mapi - 1].br_startoff + mapp[mapi - 1].br_blockcount !=
	    bno + count) {
		if (mapp != &map)
			FUNC6(mapp);
		return FUNC3(ENOSPC);
	}
	/*
	 * Done with the temporary mapping table.
	 */
	if (mapp != &map)
		FUNC6(mapp);

	/* account for newly allocated blocks in reserved blocks total */
	args->total -= dp->i_d.di_nblocks - nblks;
	*dbp = FUNC10(mp, (xfs_dablk_t)bno);

	/*
	 * Update file's size if this is the data space and it grew.
	 */
	if (space == XFS_DIR2_DATA_SPACE) {
		xfs_fsize_t	size;		/* directory file (data) size */

		size = FUNC4(mp, bno + count);
		if (size > dp->i_d.di_size) {
			dp->i_d.di_size = size;
			FUNC11(tp, dp, XFS_ILOG_CORE);
		}
	}
	return 0;
}