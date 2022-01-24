#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t zfs_prop_t ;
struct TYPE_3__ {scalar_t__* zfs_props_table; int /*<<< orphan*/  zfs_props; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  nvpair_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 size_t ZPROP_INVAL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(zfs_handle_t *zhp, uint8_t *props)
{
	nvpair_t *curr;

	/*
	 * Keep a reference to the props-table against which we prune the
	 * properties.
	 */
	zhp->zfs_props_table = props;

	curr = FUNC0(zhp->zfs_props, NULL);

	while (curr) {
		zfs_prop_t zfs_prop = FUNC4(FUNC2(curr));
		nvpair_t *next = FUNC0(zhp->zfs_props, curr);

		/*
		 * User properties will result in ZPROP_INVAL, and since we
		 * only know how to prune standard ZFS properties, we always
		 * leave these in the list.  This can also happen if we
		 * encounter an unknown DSL property (when running older
		 * software, for example).
		 */
		if (zfs_prop != ZPROP_INVAL && props[zfs_prop] == B_FALSE)
			(void) FUNC1(zhp->zfs_props,
			    FUNC2(curr), FUNC3(curr));
		curr = next;
	}
}