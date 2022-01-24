#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  zfs_props; int /*<<< orphan*/ * zpool_hdl; int /*<<< orphan*/  zfs_type; int /*<<< orphan*/  zfs_head_type; int /*<<< orphan*/  zfs_name; int /*<<< orphan*/  zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_TYPE_BOOKMARK ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 

zfs_handle_t *
FUNC6(zfs_handle_t *parent, const char *path,
    nvlist_t *bmark_props)
{
	zfs_handle_t *zhp = FUNC0(sizeof (zfs_handle_t), 1);

	if (zhp == NULL)
		return (NULL);

	/* Fill in the name. */
	zhp->zfs_hdl = parent->zfs_hdl;
	(void) FUNC4(zhp->zfs_name, path, sizeof (zhp->zfs_name));

	/* Set the property lists. */
	if (FUNC2(bmark_props, &zhp->zfs_props, 0) != 0) {
		FUNC1(zhp);
		return (NULL);
	}

	/* Set the types. */
	zhp->zfs_head_type = parent->zfs_head_type;
	zhp->zfs_type = ZFS_TYPE_BOOKMARK;

	if ((zhp->zpool_hdl = FUNC5(zhp)) == NULL) {
		FUNC3(zhp->zfs_props);
		FUNC1(zhp);
		return (NULL);
	}

	return (zhp);
}