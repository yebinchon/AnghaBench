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
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_18__ {int /*<<< orphan*/  i_mount; } ;
typedef  TYPE_1__ xfs_inode_t ;
struct TYPE_19__ {TYPE_3__* ents; } ;
typedef  TYPE_2__ xfs_dir2_leaf_t ;
struct TYPE_20__ {int /*<<< orphan*/  address; } ;
typedef  TYPE_3__ xfs_dir2_leaf_entry_t ;
struct TYPE_21__ {int /*<<< orphan*/  inumber; } ;
typedef  TYPE_4__ xfs_dir2_data_entry_t ;
struct TYPE_22__ {TYPE_2__* data; } ;
typedef  TYPE_5__ xfs_dabuf_t ;
struct TYPE_23__ {scalar_t__ inumber; int /*<<< orphan*/ * trans; TYPE_1__* dp; } ;
typedef  TYPE_6__ xfs_da_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_4__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_5__*) ; 
 int FUNC10 (TYPE_6__*,TYPE_5__**,int*,TYPE_5__**) ; 

int						/* error */
FUNC11(
	xfs_da_args_t		*args)		/* operation arguments */
{
	xfs_dabuf_t		*dbp;		/* data block buffer */
	xfs_dir2_data_entry_t	*dep;		/* data block entry */
	xfs_inode_t		*dp;		/* incore directory inode */
	int			error;		/* error return code */
	int			index;		/* index of leaf entry */
	xfs_dabuf_t		*lbp;		/* leaf buffer */
	xfs_dir2_leaf_t		*leaf;		/* leaf structure */
	xfs_dir2_leaf_entry_t	*lep;		/* leaf entry */
	xfs_trans_t		*tp;		/* transaction pointer */

	FUNC4(args);

	/*
	 * Look up the entry.
	 */
	if ((error = FUNC10(args, &lbp, &index, &dbp))) {
		return error;
	}
	dp = args->dp;
	leaf = lbp->data;
	/*
	 * Point to the leaf entry, get data address from it.
	 */
	lep = &leaf->ents[index];
	/*
	 * Point to the data entry.
	 */
	dep = (xfs_dir2_data_entry_t *)
	      ((char *)dbp->data +
	       FUNC8(dp->i_mount, FUNC1(lep->address)));
	FUNC0(args->inumber != FUNC2(dep->inumber));
	/*
	 * Put the new inode number in, log it.
	 */
	dep->inumber = FUNC3(args->inumber);
	tp = args->trans;
	FUNC7(tp, dbp, dep);
	FUNC6(dbp);
	FUNC9(dp, lbp);
	FUNC5(tp, lbp);
	return 0;
}