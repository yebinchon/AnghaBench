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
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  zn_avlnode; int /*<<< orphan*/ * zn_handle; } ;
typedef  TYPE_1__ zfs_node_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  uu_avl_index_t ;
struct TYPE_11__ {int cb_types; int cb_flags; scalar_t__ cb_depth; scalar_t__ cb_depth_limit; int /*<<< orphan*/  cb_avl; TYPE_4__** cb_proplist; int /*<<< orphan*/  cb_props_table; int /*<<< orphan*/  cb_sortcol; } ;
typedef  TYPE_2__ callback_data_t ;
typedef  int boolean_t ;
struct TYPE_12__ {int /*<<< orphan*/  pl_all; } ;

/* Variables and functions */
 int B_FALSE ; 
 int B_TRUE ; 
 int ZFS_ITER_DEPTH_LIMIT ; 
 int ZFS_ITER_LITERAL_PROPS ; 
 int ZFS_ITER_RECURSE ; 
 int ZFS_ITER_RECVD_PROPS ; 
 int ZFS_ITER_SIMPLE ; 
 int ZFS_TYPE_BOOKMARK ; 
 int ZFS_TYPE_FILESYSTEM ; 
 int ZFS_TYPE_SNAPSHOT ; 
 int /*<<< orphan*/  avl_pool ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_4__**,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,void*),void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,void*),void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int (*) (int /*<<< orphan*/ *,void*),void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(zfs_handle_t *zhp, void *data)
{
	callback_data_t *cb = data;
	boolean_t should_close = B_TRUE;
	boolean_t include_snaps = FUNC8(zhp, cb);
	boolean_t include_bmarks = (cb->cb_types & ZFS_TYPE_BOOKMARK);

	if ((FUNC7(zhp) & cb->cb_types) ||
	    ((FUNC7(zhp) == ZFS_TYPE_SNAPSHOT) && include_snaps)) {
		uu_avl_index_t idx;
		zfs_node_t *node = FUNC1(sizeof (zfs_node_t));

		node->zn_handle = zhp;
		FUNC4(node, &node->zn_avlnode, avl_pool);
		if (FUNC2(cb->cb_avl, node, cb->cb_sortcol,
		    &idx) == NULL) {
			if (cb->cb_proplist) {
				if ((*cb->cb_proplist) &&
				    !(*cb->cb_proplist)->pl_all)
					FUNC12(zhp,
					    cb->cb_props_table);

				if (FUNC6(zhp, cb->cb_proplist,
				    (cb->cb_flags & ZFS_ITER_RECVD_PROPS),
				    (cb->cb_flags & ZFS_ITER_LITERAL_PROPS))
				    != 0) {
					FUNC0(node);
					return (-1);
				}
			}
			FUNC3(cb->cb_avl, node, idx);
			should_close = B_FALSE;
		} else {
			FUNC0(node);
		}
	}

	/*
	 * Recurse if necessary.
	 */
	if (cb->cb_flags & ZFS_ITER_RECURSE &&
	    ((cb->cb_flags & ZFS_ITER_DEPTH_LIMIT) == 0 ||
	    cb->cb_depth < cb->cb_depth_limit)) {
		cb->cb_depth++;
		if (FUNC7(zhp) == ZFS_TYPE_FILESYSTEM)
			(void) FUNC10(zhp, zfs_callback, data);
		if (((FUNC7(zhp) & (ZFS_TYPE_SNAPSHOT |
		    ZFS_TYPE_BOOKMARK)) == 0) && include_snaps)
			(void) FUNC11(zhp,
			    (cb->cb_flags & ZFS_ITER_SIMPLE) != 0, zfs_callback,
			    data, 0, 0);
		if (((FUNC7(zhp) & (ZFS_TYPE_SNAPSHOT |
		    ZFS_TYPE_BOOKMARK)) == 0) && include_bmarks)
			(void) FUNC9(zhp, zfs_callback, data);
		cb->cb_depth--;
	}

	if (should_close)
		FUNC5(zhp);

	return (0);
}