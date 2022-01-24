#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zfs_prop_t ;
struct TYPE_6__ {int /*<<< orphan*/  zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ ZFS_PROP_REFRESERVATION ; 
 scalar_t__ ZFS_PROP_VOLBLOCKSIZE ; 
 scalar_t__ ZFS_PROP_VOLSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (TYPE_1__*,scalar_t__*) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(zfs_handle_t *zhp, nvlist_t *nvl)
{
	uint64_t volsize;
	uint64_t resvsize;
	zfs_prop_t prop;
	nvlist_t *props;

	if (!FUNC0(zhp)) {
		return (0);
	}

	if (FUNC10(zhp, &prop) != 0) {
		return (-1);
	}

	if (prop != ZFS_PROP_REFRESERVATION) {
		return (0);
	}

	if (FUNC6(nvl, FUNC9(prop), &resvsize) != 0) {
		/* No value being set, so it can't be "auto" */
		return (0);
	}
	if (resvsize != UINT64_MAX) {
		/* Being set to a value other than "auto" */
		return (0);
	}

	props = FUNC2();

	FUNC1(props, FUNC9(ZFS_PROP_VOLBLOCKSIZE),
	    FUNC8(zhp, ZFS_PROP_VOLBLOCKSIZE));

	if (FUNC6(nvl, FUNC9(ZFS_PROP_VOLSIZE),
	    &volsize) != 0) {
		volsize = FUNC8(zhp, ZFS_PROP_VOLSIZE);
	}

	resvsize = FUNC11(volsize, props);
	FUNC3(props);

	(void) FUNC7(nvl, FUNC9(prop));
	if (FUNC5(nvl, FUNC9(prop), resvsize) != 0) {
		(void) FUNC4(zhp->zfs_hdl);
		return (-1);
	}
	return (1);
}