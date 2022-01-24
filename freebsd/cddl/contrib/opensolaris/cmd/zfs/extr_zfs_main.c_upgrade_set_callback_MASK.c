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
typedef  int /*<<< orphan*/  verstr ;
struct TYPE_2__ {int cb_version; int /*<<< orphan*/  cb_numsamegraded; int /*<<< orphan*/  cb_numfailed; scalar_t__* cb_lastfs; int /*<<< orphan*/  cb_numupgraded; } ;
typedef  TYPE_1__ upgrade_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  ZFS_PROP_VERSION ; 
 int /*<<< orphan*/  g_zfs ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  history_str ; 
 int /*<<< orphan*/  log_history ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(zfs_handle_t *zhp, void *data)
{
	upgrade_cbdata_t *cb = data;
	int version = FUNC6(zhp, ZFS_PROP_VERSION);
	int needed_spa_version;
	int spa_version;

	if (FUNC8(zhp, &spa_version) < 0)
		return (-1);

	needed_spa_version = FUNC9(cb->cb_version);

	if (needed_spa_version < 0)
		return (-1);

	if (spa_version < needed_spa_version) {
		/* can't upgrade */
		(void) FUNC1(FUNC0("%s: can not be "
		    "upgraded; the pool version needs to first "
		    "be upgraded\nto version %d\n\n"),
		    FUNC5(zhp), needed_spa_version);
		cb->cb_numfailed++;
		return (0);
	}

	/* upgrade */
	if (version < cb->cb_version) {
		char verstr[16];
		(void) FUNC3(verstr, sizeof (verstr),
		    "%llu", cb->cb_version);
		if (cb->cb_lastfs[0] && !FUNC2(zhp, cb->cb_lastfs)) {
			/*
			 * If they did "zfs upgrade -a", then we could
			 * be doing ioctls to different pools.  We need
			 * to log this history once to each pool, and bypass
			 * the normal history logging that happens in main().
			 */
			(void) FUNC10(g_zfs, history_str);
			log_history = B_FALSE;
		}
		if (FUNC7(zhp, "version", verstr) == 0)
			cb->cb_numupgraded++;
		else
			cb->cb_numfailed++;
		(void) FUNC4(cb->cb_lastfs, FUNC5(zhp));
	} else if (version > cb->cb_version) {
		/* can't downgrade */
		(void) FUNC1(FUNC0("%s: can not be downgraded; "
		    "it is already at version %u\n"),
		    FUNC5(zhp), version);
		cb->cb_numfailed++;
	} else {
		cb->cb_numsamegraded++;
	}
	return (0);
}