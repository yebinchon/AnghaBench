#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zprop_source_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  where ;
typedef  int /*<<< orphan*/  uu_list_index_t ;
typedef  int /*<<< orphan*/  property ;
struct TYPE_8__ {int cn_mounted; int /*<<< orphan*/  cn_listnode; scalar_t__ cn_zoned; void* cn_needpost; int /*<<< orphan*/  cn_shared; int /*<<< orphan*/ * cn_handle; } ;
typedef  TYPE_1__ prop_changenode_t ;
struct TYPE_9__ {scalar_t__ cl_realprop; scalar_t__ cl_prop; scalar_t__ cl_shareprop; int cl_gflags; scalar_t__ cl_alldependents; int /*<<< orphan*/  cl_list; scalar_t__ cl_sorted; int /*<<< orphan*/  cl_pool; void* cl_haszonedchild; scalar_t__ cl_allchildren; } ;
typedef  TYPE_2__ prop_changelist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 void* B_TRUE ; 
 int CL_GATHER_MOUNT_ALWAYS ; 
 scalar_t__ GLOBAL_ZONEID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int ZFS_MAXPROPLEN ; 
 scalar_t__ ZFS_PROP_NAME ; 
 int /*<<< orphan*/  ZFS_PROP_ZONED ; 
 scalar_t__ ZPROP_INVAL ; 
 scalar_t__ ZPROP_SRC_DEFAULT ; 
 scalar_t__ ZPROP_SRC_INHERITED ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,void*),void*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,scalar_t__,char*,int,scalar_t__*,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(zfs_handle_t *zhp, void *data)
{
	prop_changelist_t *clp = data;
	char property[ZFS_MAXPROPLEN];
	char where[64];
	prop_changenode_t *cn;
	zprop_source_t sourcetype;
	zprop_source_t share_sourcetype;

	/*
	 * We only want to unmount/unshare those filesystems that may inherit
	 * from the target filesystem.  If we find any filesystem with a
	 * locally set mountpoint, we ignore any children since changing the
	 * property will not affect them.  If this is a rename, we iterate
	 * over all children regardless, since we need them unmounted in
	 * order to do the rename.  Also, if this is a volume and we're doing
	 * a rename, then always add it to the changelist.
	 */

	if (!(FUNC0(zhp) && clp->cl_realprop == ZFS_PROP_NAME) &&
	    FUNC14(zhp, clp->cl_prop, property,
	    sizeof (property), &sourcetype, where, sizeof (where),
	    B_FALSE) != 0) {
		FUNC9(zhp);
		return (0);
	}

	/*
	 * If we are "watching" sharenfs or sharesmb
	 * then check out the companion property which is tracked
	 * in cl_shareprop
	 */
	if (clp->cl_shareprop != ZPROP_INVAL &&
	    FUNC14(zhp, clp->cl_shareprop, property,
	    sizeof (property), &share_sourcetype, where, sizeof (where),
	    B_FALSE) != 0) {
		FUNC9(zhp);
		return (0);
	}

	if (clp->cl_alldependents || clp->cl_allchildren ||
	    sourcetype == ZPROP_SRC_DEFAULT ||
	    sourcetype == ZPROP_SRC_INHERITED ||
	    (clp->cl_shareprop != ZPROP_INVAL &&
	    (share_sourcetype == ZPROP_SRC_DEFAULT ||
	    share_sourcetype == ZPROP_SRC_INHERITED))) {
		if ((cn = FUNC8(FUNC10(zhp),
		    sizeof (prop_changenode_t))) == NULL) {
			FUNC9(zhp);
			return (-1);
		}

		cn->cn_handle = zhp;
		cn->cn_mounted = (clp->cl_gflags & CL_GATHER_MOUNT_ALWAYS) ||
		    FUNC11(zhp, NULL);
		cn->cn_shared = FUNC12(zhp);
		cn->cn_zoned = FUNC15(zhp, ZFS_PROP_ZONED);
		cn->cn_needpost = B_TRUE;

		/* Indicate if any child is exported to a local zone. */
		if (FUNC1() == GLOBAL_ZONEID && cn->cn_zoned)
			clp->cl_haszonedchild = B_TRUE;

		FUNC6(cn, &cn->cn_listnode, clp->cl_pool);

		if (clp->cl_sorted) {
			uu_list_index_t idx;

			(void) FUNC2(clp->cl_list, cn, NULL,
			    &idx);
			FUNC4(clp->cl_list, cn, idx);
		} else {
			/*
			 * Add this child to beginning of the list. Children
			 * below this one in the hierarchy will get added above
			 * this one in the list. This produces a list in
			 * reverse dataset name order.
			 * This is necessary when the original mountpoint
			 * is legacy or none.
			 */
			FUNC7(FUNC5(clp->cl_list,
			    FUNC3(clp->cl_list), cn) == 0);
		}

		if (!clp->cl_alldependents)
			return (FUNC13(zhp, change_one, data));
	} else {
		FUNC9(zhp);
	}

	return (0);
}