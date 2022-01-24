#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_23__ {TYPE_1__* m_dirnameops; int /*<<< orphan*/  m_dirdatablk; } ;
typedef  TYPE_2__ xfs_mount_t ;
struct TYPE_24__ {TYPE_2__* i_mount; } ;
typedef  TYPE_3__ xfs_inode_t ;
struct TYPE_25__ {int /*<<< orphan*/  address; int /*<<< orphan*/  hashval; } ;
typedef  TYPE_4__ xfs_dir2_leaf_entry_t ;
typedef  int xfs_dir2_dataptr_t ;
struct TYPE_26__ {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
typedef  TYPE_5__ xfs_dir2_data_entry_t ;
struct TYPE_27__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_6__ xfs_dir2_block_tail_t ;
typedef  int /*<<< orphan*/  xfs_dir2_block_t ;
typedef  int xfs_dahash_t ;
struct TYPE_28__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_7__ xfs_dabuf_t ;
struct TYPE_29__ {int hashval; int op_flags; int cmpresult; int /*<<< orphan*/ * trans; TYPE_3__* dp; } ;
typedef  TYPE_8__ xfs_da_args_t ;
typedef  enum xfs_dacmp { ____Placeholder_xfs_dacmp } xfs_dacmp ;
struct TYPE_22__ {int (* compname ) (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOENT ; 
 scalar_t__ XFS_CMP_CASE ; 
 int XFS_CMP_DIFFERENT ; 
 int XFS_CMP_EXACT ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int XFS_DA_OP_OKNOENT ; 
 int XFS_DIR2_NULL_DATAPTR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int,TYPE_7__**,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (TYPE_6__*) ; 
 TYPE_6__* FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_7__*) ; 
 int FUNC9 (TYPE_2__*,int) ; 

__attribute__((used)) static int					/* error */
FUNC10(
	xfs_da_args_t		*args,		/* dir lookup arguments */
	xfs_dabuf_t		**bpp,		/* returned block buffer */
	int			*entno)		/* returned entry number */
{
	xfs_dir2_dataptr_t	addr;		/* data entry address */
	xfs_dir2_block_t	*block;		/* block structure */
	xfs_dir2_leaf_entry_t	*blp;		/* block leaf entries */
	xfs_dabuf_t		*bp;		/* block buffer */
	xfs_dir2_block_tail_t	*btp;		/* block tail */
	xfs_dir2_data_entry_t	*dep;		/* block data entry */
	xfs_inode_t		*dp;		/* incore inode */
	int			error;		/* error return value */
	xfs_dahash_t		hash;		/* found hash value */
	int			high;		/* binary search high index */
	int			low;		/* binary search low index */
	int			mid;		/* binary search current idx */
	xfs_mount_t		*mp;		/* filesystem mount point */
	xfs_trans_t		*tp;		/* transaction pointer */
	enum xfs_dacmp		cmp;		/* comparison result */

	dp = args->dp;
	tp = args->trans;
	mp = dp->i_mount;
	/*
	 * Read the buffer, return error if we can't get it.
	 */
	if ((error =
	    FUNC5(tp, dp, mp->m_dirdatablk, -1, &bp, XFS_DATA_FORK))) {
		return error;
	}
	FUNC0(bp != NULL);
	block = bp->data;
	FUNC8(dp, bp);
	btp = FUNC7(mp, block);
	blp = FUNC6(btp);
	/*
	 * Loop doing a binary search for our hash value.
	 * Find our entry, ENOENT if it's not there.
	 */
	for (low = 0, high = FUNC2(btp->count) - 1; ; ) {
		FUNC0(low <= high);
		mid = (low + high) >> 1;
		if ((hash = FUNC2(blp[mid].hashval)) == args->hashval)
			break;
		if (hash < args->hashval)
			low = mid + 1;
		else
			high = mid - 1;
		if (low > high) {
			FUNC0(args->op_flags & XFS_DA_OP_OKNOENT);
			FUNC4(tp, bp);
			return FUNC1(ENOENT);
		}
	}
	/*
	 * Back up to the first one with the right hash value.
	 */
	while (mid > 0 && FUNC2(blp[mid - 1].hashval) == args->hashval) {
		mid--;
	}
	/*
	 * Now loop forward through all the entries with the
	 * right hash value looking for our name.
	 */
	do {
		if ((addr = FUNC2(blp[mid].address)) == XFS_DIR2_NULL_DATAPTR)
			continue;
		/*
		 * Get pointer to the entry from the leaf.
		 */
		dep = (xfs_dir2_data_entry_t *)
			((char *)block + FUNC9(mp, addr));
		/*
		 * Compare name and if it's an exact match, return the index
		 * and buffer. If it's the first case-insensitive match, store
		 * the index and buffer and continue looking for an exact match.
		 */
		cmp = mp->m_dirnameops->compname(args, dep->name, dep->namelen);
		if (cmp != XFS_CMP_DIFFERENT && cmp != args->cmpresult) {
			args->cmpresult = cmp;
			*bpp = bp;
			*entno = mid;
			if (cmp == XFS_CMP_EXACT)
				return 0;
		}
	} while (++mid < FUNC2(btp->count) &&
			FUNC2(blp[mid].hashval) == hash);

	FUNC0(args->op_flags & XFS_DA_OP_OKNOENT);
	/*
	 * Here, we can only be doing a lookup (not a rename or replace).
	 * If a case-insensitive match was found earlier, return success.
	 */
	if (args->cmpresult == XFS_CMP_CASE)
		return 0;
	/*
	 * No match, release the buffer and return ENOENT.
	 */
	FUNC4(tp, bp);
	return FUNC1(ENOENT);
}