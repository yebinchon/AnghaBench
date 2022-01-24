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
struct TYPE_2__ {int /*<<< orphan*/  cb_defer_destroy; scalar_t__ cb_force; int /*<<< orphan*/  cb_batchedsnaps; scalar_t__ cb_dryrun; scalar_t__ cb_parsable; scalar_t__ cb_verbose; } ;
typedef  TYPE_1__ destroy_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  MS_FORCE ; 
 scalar_t__ ZFS_TYPE_FILESYSTEM ; 
 scalar_t__ ZFS_TYPE_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_zfs ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(zfs_handle_t *zhp, void *data)
{
	destroy_cbdata_t *cb = data;
	const char *name = FUNC9(zhp);

	if (cb->cb_verbose) {
		if (cb->cb_parsable) {
			(void) FUNC4("destroy\t%s\n", name);
		} else if (cb->cb_dryrun) {
			(void) FUNC4(FUNC3("would destroy %s\n"),
			    name);
		} else {
			(void) FUNC4(FUNC3("will destroy %s\n"),
			    name);
		}
	}

	/*
	 * Ignore pools (which we've already flagged as an error before getting
	 * here).
	 */
	if (FUNC5(FUNC9(zhp), '/') == NULL &&
	    FUNC10(zhp) == ZFS_TYPE_FILESYSTEM) {
		FUNC6(zhp);
		return (0);
	}
	if (cb->cb_dryrun) {
		FUNC6(zhp);
		return (0);
	}

	/*
	 * We batch up all contiguous snapshots (even of different
	 * filesystems) and destroy them with one ioctl.  We can't
	 * simply do all snap deletions and then all fs deletions,
	 * because we must delete a clone before its origin.
	 */
	if (FUNC10(zhp) == ZFS_TYPE_SNAPSHOT) {
		FUNC0(cb->cb_batchedsnaps, name);
	} else {
		int error = FUNC8(g_zfs,
		    cb->cb_batchedsnaps, B_FALSE);
		FUNC2(cb->cb_batchedsnaps);
		cb->cb_batchedsnaps = FUNC1();

		if (error != 0 ||
		    FUNC11(zhp, NULL, cb->cb_force ? MS_FORCE : 0) != 0 ||
		    FUNC7(zhp, cb->cb_defer_destroy) != 0) {
			FUNC6(zhp);
			return (-1);
		}
	}

	FUNC6(zhp);
	return (0);
}