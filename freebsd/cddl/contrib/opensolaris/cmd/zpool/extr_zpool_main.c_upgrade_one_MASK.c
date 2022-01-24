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
struct TYPE_2__ {scalar_t__ cb_version; int /*<<< orphan*/  cb_poolname; void* cb_unavail; } ;
typedef  TYPE_1__ upgrade_cbdata_t ;
typedef  scalar_t__ uint64_t ;
typedef  void* boolean_t ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 scalar_t__ POOL_STATE_UNAVAIL ; 
 scalar_t__ SPA_VERSION ; 
 scalar_t__ SPA_VERSION_FEATURES ; 
 int /*<<< orphan*/  ZPOOL_PROP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(zpool_handle_t *zhp, void *data)
{
	boolean_t printnl = B_FALSE;
	upgrade_cbdata_t *cbp = data;
	uint64_t cur_version;
	int ret;

	if (FUNC9(zhp) == POOL_STATE_UNAVAIL) {
		(void) FUNC0(stderr, FUNC1("cannot upgrade '%s': pool is "
		    "is currently unavailable.\n\n"), FUNC7(zhp));
		cbp->cb_unavail = B_TRUE;
		return (1);
	}

	if (FUNC4("log", FUNC7(zhp)) == 0) {
		(void) FUNC2(FUNC1("'log' is now a reserved word\n"
		    "Pool 'log' must be renamed using export and import"
		    " to upgrade.\n\n"));
		return (1);
	}

	cur_version = FUNC8(zhp, ZPOOL_PROP_VERSION, NULL);
	if (cur_version > cbp->cb_version) {
		(void) FUNC2(FUNC1("Pool '%s' is already formatted "
		    "using more current version '%llu'.\n\n"),
		    FUNC7(zhp), cur_version);
		return (0);
	}

	if (cbp->cb_version != SPA_VERSION && cur_version == cbp->cb_version) {
		(void) FUNC2(FUNC1("Pool '%s' is already formatted "
		    "using version %llu.\n\n"), FUNC7(zhp),
		    cbp->cb_version);
		return (0);
	}

	if (cur_version != cbp->cb_version) {
		printnl = B_TRUE;
		ret = FUNC6(zhp, cbp->cb_version);
		if (ret != 0)
			return (ret);
#ifdef __FreeBSD__
		root_pool_upgrade_check(zhp, cbp->cb_poolname,
		    sizeof(cbp->cb_poolname));
#endif	/* __FreeBSD__ */
	}

	if (cbp->cb_version >= SPA_VERSION_FEATURES) {
		int count = 0;
		ret = FUNC5(zhp, &count);
		if (ret != 0)
			return (ret);

		if (count != 0) {
			printnl = B_TRUE;
#ifdef __FreeBSD__
			root_pool_upgrade_check(zhp, cbp->cb_poolname,
			    sizeof(cbp->cb_poolname));
#endif	/* __FreeBSD __*/
		} else if (cur_version == SPA_VERSION) {
			(void) FUNC2(FUNC1("Pool '%s' already has all "
			    "supported features enabled.\n\n"),
			    FUNC7(zhp));
		}
	}

	if (printnl) {
		(void) FUNC2(FUNC1("\n"));
	}

	return (0);
}