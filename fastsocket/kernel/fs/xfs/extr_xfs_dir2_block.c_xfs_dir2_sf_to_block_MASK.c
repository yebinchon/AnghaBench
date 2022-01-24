#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_72__   TYPE_9__ ;
typedef  struct TYPE_71__   TYPE_8__ ;
typedef  struct TYPE_70__   TYPE_7__ ;
typedef  struct TYPE_69__   TYPE_6__ ;
typedef  struct TYPE_68__   TYPE_5__ ;
typedef  struct TYPE_67__   TYPE_4__ ;
typedef  struct TYPE_66__   TYPE_3__ ;
typedef  struct TYPE_65__   TYPE_2__ ;
typedef  struct TYPE_64__   TYPE_1__ ;
typedef  struct TYPE_63__   TYPE_17__ ;
typedef  struct TYPE_62__   TYPE_16__ ;
typedef  struct TYPE_61__   TYPE_15__ ;
typedef  struct TYPE_60__   TYPE_14__ ;
typedef  struct TYPE_59__   TYPE_13__ ;
typedef  struct TYPE_58__   TYPE_12__ ;
typedef  struct TYPE_57__   TYPE_11__ ;
typedef  struct TYPE_56__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_70__ {TYPE_1__* m_dirnameops; scalar_t__ m_dirblksize; } ;
typedef  TYPE_7__ xfs_mount_t ;
struct TYPE_67__ {scalar_t__ di_size; } ;
struct TYPE_65__ {int /*<<< orphan*/ * if_data; } ;
struct TYPE_66__ {int if_flags; int if_bytes; TYPE_2__ if_u1; } ;
struct TYPE_71__ {int /*<<< orphan*/  i_ino; TYPE_4__ i_d; TYPE_3__ i_df; TYPE_7__* i_mount; } ;
typedef  TYPE_8__ xfs_inode_t ;
struct TYPE_69__ {int count; int /*<<< orphan*/  parent; int /*<<< orphan*/  i8count; } ;
struct TYPE_72__ {TYPE_6__ hdr; } ;
typedef  TYPE_9__ xfs_dir2_sf_t ;
struct TYPE_56__ {int namelen; TYPE_9__* name; } ;
typedef  TYPE_10__ xfs_dir2_sf_entry_t ;
struct TYPE_57__ {void* address; void* hashval; } ;
typedef  TYPE_11__ xfs_dir2_leaf_entry_t ;
typedef  int /*<<< orphan*/  xfs_dir2_db_t ;
struct TYPE_58__ {void* length; void* freetag; } ;
typedef  TYPE_12__ xfs_dir2_data_unused_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_t ;
struct TYPE_59__ {int namelen; char* name; void* inumber; } ;
typedef  TYPE_13__ xfs_dir2_data_entry_t ;
typedef  scalar_t__ xfs_dir2_data_aoff_t ;
struct TYPE_60__ {void* count; scalar_t__ stale; } ;
typedef  TYPE_14__ xfs_dir2_block_tail_t ;
struct TYPE_68__ {void* magic; } ;
struct TYPE_61__ {scalar_t__ u; TYPE_5__ hdr; } ;
typedef  TYPE_15__ xfs_dir2_block_t ;
struct TYPE_62__ {TYPE_15__* data; } ;
typedef  TYPE_16__ xfs_dabuf_t ;
struct TYPE_63__ {int /*<<< orphan*/ * trans; TYPE_8__* dp; } ;
typedef  TYPE_17__ xfs_da_args_t ;
typedef  int uint ;
struct xfs_name {int len; TYPE_9__* name; } ;
typedef  void* __be16 ;
struct TYPE_64__ {int (* hashname ) (struct xfs_name*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int XFS_DIR2_BLOCK_MAGIC ; 
 int XFS_DIR2_DATA_DOTDOT_OFFSET ; 
 int XFS_DIR2_DATA_DOT_OFFSET ; 
 int XFS_DIR2_DATA_FIRST_OFFSET ; 
 int XFS_DIR2_DATA_FREE_TAG ; 
 int /*<<< orphan*/  XFS_DIR2_DATA_SPACE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_7__*) ; 
 int XFS_IFINLINE ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 void* FUNC5 (int) ; 
 void* FUNC6 (int) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_9__*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parent ; 
 int FUNC12 (struct xfs_name*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_16__*) ; 
 TYPE_11__* FUNC15 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_16__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_16__*) ; 
 int /*<<< orphan*/  xfs_dir2_block_sort ; 
 TYPE_14__* FUNC18 (TYPE_7__*,TYPE_15__*) ; 
 int FUNC19 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_8__*,TYPE_16__*) ; 
 void** FUNC21 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,TYPE_12__*,int*) ; 
 int FUNC23 (TYPE_17__*,int /*<<< orphan*/ ,TYPE_16__**) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,TYPE_16__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,TYPE_16__*,TYPE_12__*) ; 
 void** FUNC26 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,TYPE_16__*,TYPE_12__*,scalar_t__,int,int*,int*) ; 
 int FUNC28 (TYPE_17__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_10__* FUNC29 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_9__*,int /*<<< orphan*/ *) ; 
 int FUNC31 (TYPE_10__*) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_dir2_sf_hdr_t ; 
 int /*<<< orphan*/ * FUNC33 (TYPE_10__*) ; 
 TYPE_10__* FUNC34 (TYPE_9__*,TYPE_10__*) ; 
 int xfs_dir_hash_dot ; 
 int xfs_dir_hash_dotdot ; 
 int /*<<< orphan*/  FUNC35 (TYPE_8__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_11__*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ) ; 

int						/* error */
FUNC38(
	xfs_da_args_t		*args)		/* operation arguments */
{
	xfs_dir2_db_t		blkno;		/* dir-relative block # (0) */
	xfs_dir2_block_t	*block;		/* block structure */
	xfs_dir2_leaf_entry_t	*blp;		/* block leaf entries */
	xfs_dabuf_t		*bp;		/* block buffer */
	xfs_dir2_block_tail_t	*btp;		/* block tail pointer */
	char			*buf;		/* sf buffer */
	int			buf_len;
	xfs_dir2_data_entry_t	*dep;		/* data entry pointer */
	xfs_inode_t		*dp;		/* incore directory inode */
	int			dummy;		/* trash */
	xfs_dir2_data_unused_t	*dup;		/* unused entry pointer */
	int			endoffset;	/* end of data objects */
	int			error;		/* error return value */
	int			i;		/* index */
	xfs_mount_t		*mp;		/* filesystem mount point */
	int			needlog;	/* need to log block header */
	int			needscan;	/* need to scan block freespc */
	int			newoffset;	/* offset from current entry */
	int			offset;		/* target block offset */
	xfs_dir2_sf_entry_t	*sfep;		/* sf entry pointer */
	xfs_dir2_sf_t		*sfp;		/* shortform structure */
	__be16			*tagp;		/* end of data entry */
	xfs_trans_t		*tp;		/* transaction pointer */
	struct xfs_name		name;

	FUNC13(args);

	dp = args->dp;
	tp = args->trans;
	mp = dp->i_mount;
	FUNC0(dp->i_df.if_flags & XFS_IFINLINE);
	/*
	 * Bomb out if the shortform directory is way too short.
	 */
	if (dp->i_d.di_size < FUNC11(xfs_dir2_sf_hdr_t, parent)) {
		FUNC0(FUNC2(mp));
		return FUNC1(EIO);
	}
	FUNC0(dp->i_df.if_bytes == dp->i_d.di_size);
	FUNC0(dp->i_df.if_u1.if_data != NULL);
	sfp = (xfs_dir2_sf_t *)dp->i_df.if_u1.if_data;
	FUNC0(dp->i_d.di_size >= FUNC32(sfp->hdr.i8count));
	/*
	 * Copy the directory into the stack buffer.
	 * Then pitch the incore inode data so we can make extents.
	 */

	buf_len = dp->i_df.if_bytes;
	buf = FUNC8(buf_len, KM_SLEEP);

	FUNC10(buf, sfp, buf_len);
	FUNC35(dp, -buf_len, XFS_DATA_FORK);
	dp->i_d.di_size = 0;
	FUNC37(tp, dp, XFS_ILOG_CORE);
	/*
	 * Reset pointer - old sfp is gone.
	 */
	sfp = (xfs_dir2_sf_t *)buf;
	/*
	 * Add block 0 to the inode.
	 */
	error = FUNC28(args, XFS_DIR2_DATA_SPACE, &blkno);
	if (error) {
		FUNC9(buf);
		return error;
	}
	/*
	 * Initialize the data block.
	 */
	error = FUNC23(args, blkno, &bp);
	if (error) {
		FUNC9(buf);
		return error;
	}
	block = bp->data;
	block->hdr.magic = FUNC6(XFS_DIR2_BLOCK_MAGIC);
	/*
	 * Compute size of block "tail" area.
	 */
	i = (uint)sizeof(*btp) +
	    (sfp->hdr.count + 2) * (uint)sizeof(xfs_dir2_leaf_entry_t);
	/*
	 * The whole thing is initialized to free by the init routine.
	 * Say we're using the leaf and tail area.
	 */
	dup = (xfs_dir2_data_unused_t *)block->u;
	needlog = needscan = 0;
	FUNC27(tp, bp, dup, mp->m_dirblksize - i, i, &needlog,
		&needscan);
	FUNC0(needscan == 0);
	/*
	 * Fill in the tail.
	 */
	btp = FUNC18(mp, block);
	btp->count = FUNC6(sfp->hdr.count + 2);	/* ., .. */
	btp->stale = 0;
	blp = FUNC15(btp);
	endoffset = (uint)((char *)blp - (char *)block);
	/*
	 * Remove the freespace, we'll manage it.
	 */
	FUNC27(tp, bp, dup,
		(xfs_dir2_data_aoff_t)((char *)dup - (char *)block),
		FUNC3(dup->length), &needlog, &needscan);
	/*
	 * Create entry for .
	 */
	dep = (xfs_dir2_data_entry_t *)
	      ((char *)block + XFS_DIR2_DATA_DOT_OFFSET);
	dep->inumber = FUNC7(dp->i_ino);
	dep->namelen = 1;
	dep->name[0] = '.';
	tagp = FUNC21(dep);
	*tagp = FUNC5((char *)dep - (char *)block);
	FUNC24(tp, bp, dep);
	blp[0].hashval = FUNC6(xfs_dir_hash_dot);
	blp[0].address = FUNC6(FUNC19(mp,
				(char *)dep - (char *)block));
	/*
	 * Create entry for ..
	 */
	dep = (xfs_dir2_data_entry_t *)
		((char *)block + XFS_DIR2_DATA_DOTDOT_OFFSET);
	dep->inumber = FUNC7(FUNC30(sfp, &sfp->hdr.parent));
	dep->namelen = 2;
	dep->name[0] = dep->name[1] = '.';
	tagp = FUNC21(dep);
	*tagp = FUNC5((char *)dep - (char *)block);
	FUNC24(tp, bp, dep);
	blp[1].hashval = FUNC6(xfs_dir_hash_dotdot);
	blp[1].address = FUNC6(FUNC19(mp,
				(char *)dep - (char *)block));
	offset = XFS_DIR2_DATA_FIRST_OFFSET;
	/*
	 * Loop over existing entries, stuff them in.
	 */
	if ((i = 0) == sfp->hdr.count)
		sfep = NULL;
	else
		sfep = FUNC29(sfp);
	/*
	 * Need to preserve the existing offset values in the sf directory.
	 * Insert holes (unused entries) where necessary.
	 */
	while (offset < endoffset) {
		/*
		 * sfep is null when we reach the end of the list.
		 */
		if (sfep == NULL)
			newoffset = endoffset;
		else
			newoffset = FUNC31(sfep);
		/*
		 * There should be a hole here, make one.
		 */
		if (offset < newoffset) {
			dup = (xfs_dir2_data_unused_t *)
			      ((char *)block + offset);
			dup->freetag = FUNC5(XFS_DIR2_DATA_FREE_TAG);
			dup->length = FUNC5(newoffset - offset);
			*FUNC26(dup) = FUNC5(
				((char *)dup - (char *)block));
			FUNC25(tp, bp, dup);
			(void)FUNC22((xfs_dir2_data_t *)block,
				dup, &dummy);
			offset += FUNC3(dup->length);
			continue;
		}
		/*
		 * Copy a real entry.
		 */
		dep = (xfs_dir2_data_entry_t *)((char *)block + newoffset);
		dep->inumber = FUNC7(FUNC30(sfp,
				FUNC33(sfep)));
		dep->namelen = sfep->namelen;
		FUNC10(dep->name, sfep->name, dep->namelen);
		tagp = FUNC21(dep);
		*tagp = FUNC5((char *)dep - (char *)block);
		FUNC24(tp, bp, dep);
		name.name = sfep->name;
		name.len = sfep->namelen;
		blp[2 + i].hashval = FUNC6(mp->m_dirnameops->
							hashname(&name));
		blp[2 + i].address = FUNC6(FUNC19(mp,
						 (char *)dep - (char *)block));
		offset = (int)((char *)(tagp + 1) - (char *)block);
		if (++i == sfp->hdr.count)
			sfep = NULL;
		else
			sfep = FUNC34(sfp, sfep);
	}
	/* Done with the temporary buffer */
	FUNC9(buf);
	/*
	 * Sort the leaf entries by hash value.
	 */
	FUNC36(blp, FUNC4(btp->count), sizeof(*blp), xfs_dir2_block_sort);
	/*
	 * Log the leaf entry area and tail.
	 * Already logged the header in data_init, ignore needlog.
	 */
	FUNC0(needscan == 0);
	FUNC16(tp, bp, 0, FUNC4(btp->count) - 1);
	FUNC17(tp, bp);
	FUNC20(dp, bp);
	FUNC14(bp);
	return 0;
}