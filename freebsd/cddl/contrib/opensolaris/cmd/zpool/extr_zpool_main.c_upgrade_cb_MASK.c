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
typedef  int /*<<< orphan*/  zpool_handle_t ;
struct TYPE_2__ {scalar_t__ cb_version; int /*<<< orphan*/  cb_poolname; void* cb_first; void* cb_unavail; } ;
typedef  TYPE_1__ upgrade_cbdata_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  void* boolean_t ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 scalar_t__ POOL_STATE_UNAVAIL ; 
 scalar_t__ SPA_VERSION_FEATURES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  g_zfs ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  history_str ; 
 void* log_history ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(zpool_handle_t *zhp, void *arg)
{
	upgrade_cbdata_t *cbp = arg;
	nvlist_t *config;
	uint64_t version;
	boolean_t printnl = B_FALSE;
	int ret;

	if (FUNC12(zhp) == POOL_STATE_UNAVAIL) {
		(void) FUNC2(stderr, FUNC3("cannot upgrade '%s': pool is "
		    "currently unavailable.\n\n"), FUNC11(zhp));
		cbp->cb_unavail = B_TRUE;
		/* Allow iteration to continue. */
		return (0);
	}

	config = FUNC10(zhp, NULL);
	FUNC9(FUNC4(config, ZPOOL_CONFIG_VERSION,
	    &version) == 0);

	FUNC1(FUNC0(version));

	if (version < cbp->cb_version) {
		cbp->cb_first = B_FALSE;
		ret = FUNC8(zhp, cbp->cb_version);
		if (ret != 0)
			return (ret);
#ifdef __FreeBSD__
		root_pool_upgrade_check(zhp, cbp->cb_poolname,
		    sizeof(cbp->cb_poolname));
#endif	/* __FreeBSD__ */
		printnl = B_TRUE;

#ifdef illumos
		/*
		 * If they did "zpool upgrade -a", then we could
		 * be doing ioctls to different pools.  We need
		 * to log this history once to each pool, and bypass
		 * the normal history logging that happens in main().
		 */
		(void) zpool_log_history(g_zfs, history_str);
		log_history = B_FALSE;
#endif
	}

	if (cbp->cb_version >= SPA_VERSION_FEATURES) {
		int count;
		ret = FUNC7(zhp, &count);
		if (ret != 0)
			return (ret);

		if (count > 0) {
			cbp->cb_first = B_FALSE;
			printnl = B_TRUE;
#ifdef __FreeBSD__
			root_pool_upgrade_check(zhp, cbp->cb_poolname,
			    sizeof(cbp->cb_poolname));
#endif	/* __FreeBSD__ */
			/*
			 * If they did "zpool upgrade -a", then we could
			 * be doing ioctls to different pools.  We need
			 * to log this history once to each pool, and bypass
			 * the normal history logging that happens in main().
			 */
			(void) FUNC13(g_zfs, history_str);
			log_history = B_FALSE;
		}
	}

	if (printnl) {
		(void) FUNC5(FUNC3("\n"));
	}

	return (0);
}