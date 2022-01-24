#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_prop_t ;
struct TYPE_5__ {int /*<<< orphan*/  zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_PROP_VOLBLOCKSIZE ; 
 int /*<<< orphan*/  ZFS_PROP_VOLSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 

int
FUNC11(zfs_handle_t *zhp, nvlist_t *nvl)
{
	uint64_t old_volsize;
	uint64_t new_volsize;
	uint64_t old_reservation;
	uint64_t new_reservation;
	zfs_prop_t resv_prop;
	nvlist_t *props;

	/*
	 * If this is an existing volume, and someone is setting the volsize,
	 * make sure that it matches the reservation, or add it if necessary.
	 */
	old_volsize = FUNC7(zhp, ZFS_PROP_VOLSIZE);
	if (FUNC9(zhp, &resv_prop) < 0)
		return (-1);
	old_reservation = FUNC7(zhp, resv_prop);

	props = FUNC1();
	FUNC0(props, FUNC8(ZFS_PROP_VOLBLOCKSIZE),
	    FUNC7(zhp, ZFS_PROP_VOLBLOCKSIZE));

	if ((FUNC10(old_volsize, props) !=
	    old_reservation) || FUNC5(nvl,
	    FUNC8(resv_prop))) {
		FUNC2(props);
		return (0);
	}
	if (FUNC6(nvl, FUNC8(ZFS_PROP_VOLSIZE),
	    &new_volsize) != 0) {
		FUNC2(props);
		return (-1);
	}
	new_reservation = FUNC10(new_volsize, props);
	FUNC2(props);

	if (FUNC4(nvl, FUNC8(resv_prop),
	    new_reservation) != 0) {
		(void) FUNC3(zhp->zfs_hdl);
		return (-1);
	}
	return (1);
}