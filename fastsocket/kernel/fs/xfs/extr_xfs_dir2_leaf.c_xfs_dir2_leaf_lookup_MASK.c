#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_16__ {int /*<<< orphan*/  i_mount; } ;
typedef  TYPE_1__ xfs_inode_t ;
struct TYPE_17__ {TYPE_3__* ents; } ;
typedef  TYPE_2__ xfs_dir2_leaf_t ;
struct TYPE_18__ {int /*<<< orphan*/  address; } ;
typedef  TYPE_3__ xfs_dir2_leaf_entry_t ;
struct TYPE_19__ {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  inumber; } ;
typedef  TYPE_4__ xfs_dir2_data_entry_t ;
struct TYPE_20__ {TYPE_2__* data; } ;
typedef  TYPE_5__ xfs_dabuf_t ;
struct TYPE_21__ {int /*<<< orphan*/  inumber; TYPE_1__* dp; int /*<<< orphan*/ * trans; } ;
typedef  TYPE_6__ xfs_da_args_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_5__*) ; 
 int FUNC7 (TYPE_6__*,TYPE_5__**,int*,TYPE_5__**) ; 
 int FUNC8 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(
	xfs_da_args_t		*args)		/* operation arguments */
{
	xfs_dabuf_t		*dbp;		/* data block buffer */
	xfs_dir2_data_entry_t	*dep;		/* data block entry */
	xfs_inode_t		*dp;		/* incore directory inode */
	int			error;		/* error return code */
	int			index;		/* found entry index */
	xfs_dabuf_t		*lbp;		/* leaf buffer */
	xfs_dir2_leaf_t		*leaf;		/* leaf structure */
	xfs_dir2_leaf_entry_t	*lep;		/* leaf entry */
	xfs_trans_t		*tp;		/* transaction pointer */

	FUNC3(args);

	/*
	 * Look up name in the leaf block, returning both buffers and index.
	 */
	if ((error = FUNC7(args, &lbp, &index, &dbp))) {
		return error;
	}
	tp = args->trans;
	dp = args->dp;
	FUNC6(dp, lbp);
	leaf = lbp->data;
	/*
	 * Get to the leaf entry and contained data entry address.
	 */
	lep = &leaf->ents[index];
	/*
	 * Point to the data entry.
	 */
	dep = (xfs_dir2_data_entry_t *)
	      ((char *)dbp->data +
	       FUNC5(dp->i_mount, FUNC1(lep->address)));
	/*
	 * Return the found inode number & CI name if appropriate
	 */
	args->inumber = FUNC2(dep->inumber);
	error = FUNC8(args, dep->name, dep->namelen);
	FUNC4(tp, dbp);
	FUNC4(tp, lbp);
	return FUNC0(error);
}