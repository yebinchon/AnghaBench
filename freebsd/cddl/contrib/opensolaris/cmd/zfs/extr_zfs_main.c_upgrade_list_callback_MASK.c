#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_2__ {scalar_t__ cb_foundone; scalar_t__ cb_newer; } ;
typedef  TYPE_1__ upgrade_cbdata_t ;

/* Variables and functions */
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  ZFS_PROP_VERSION ; 
 int ZPL_VERSION ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(zfs_handle_t *zhp, void *data)
{
	upgrade_cbdata_t *cb = data;
	int version = FUNC4(zhp, ZFS_PROP_VERSION);

	/* list if it's old/new */
	if ((!cb->cb_newer && version < ZPL_VERSION) ||
	    (cb->cb_newer && version > ZPL_VERSION)) {
		char *str;
		if (cb->cb_newer) {
			str = FUNC0("The following filesystems are "
			    "formatted using a newer software version and\n"
			    "cannot be accessed on the current system.\n\n");
		} else {
			str = FUNC0("The following filesystems are "
			    "out of date, and can be upgraded.  After being\n"
			    "upgraded, these filesystems (and any 'zfs send' "
			    "streams generated from\n"
			    "subsequent snapshots) will no longer be "
			    "accessible by older software versions.\n\n");
		}

		if (!cb->cb_foundone) {
			(void) FUNC2(str);
			(void) FUNC1(FUNC0("VER  FILESYSTEM\n"));
			(void) FUNC1(FUNC0("---  ------------\n"));
			cb->cb_foundone = B_TRUE;
		}

		(void) FUNC1("%2u   %s\n", version, FUNC3(zhp));
	}

	return (0);
}