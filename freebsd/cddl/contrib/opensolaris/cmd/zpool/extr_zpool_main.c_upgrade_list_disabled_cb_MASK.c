#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_handle_t ;
struct TYPE_3__ {void* cb_first; void* cb_unavail; } ;
typedef  TYPE_1__ upgrade_cbdata_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  void* boolean_t ;
struct TYPE_4__ {char* fi_guid; char* fi_uname; } ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 scalar_t__ POOL_STATE_UNAVAIL ; 
 int SPA_FEATURES ; 
 scalar_t__ SPA_VERSION_FEATURES ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VERSION ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 TYPE_2__* spa_feature_table ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(zpool_handle_t *zhp, void *arg)
{
	upgrade_cbdata_t *cbp = arg;
	nvlist_t *config;
	uint64_t version;

	if (FUNC8(zhp) == POOL_STATE_UNAVAIL) {
		/*
		 * This will have been reported by upgrade_list_unavail so
		 * just allow iteration to continue.
		 */
		cbp->cb_unavail = B_TRUE;
		return (0);
	}

	config = FUNC5(zhp, NULL);
	FUNC4(FUNC2(config, ZPOOL_CONFIG_VERSION,
	    &version) == 0);

	if (version >= SPA_VERSION_FEATURES) {
		int i;
		boolean_t poolfirst = B_TRUE;
		nvlist_t *enabled = FUNC6(zhp);

		for (i = 0; i < SPA_FEATURES; i++) {
			const char *fguid = spa_feature_table[i].fi_guid;
			const char *fname = spa_feature_table[i].fi_uname;
			if (!FUNC1(enabled, fguid)) {
				if (cbp->cb_first) {
					(void) FUNC3(FUNC0("\nSome "
					    "supported features are not "
					    "enabled on the following pools. "
					    "Once a\nfeature is enabled the "
					    "pool may become incompatible with "
					    "software\nthat does not support "
					    "the feature. See "
					    "zpool-features(7) for "
					    "details.\n\n"));
					(void) FUNC3(FUNC0("POOL  "
					    "FEATURE\n"));
					(void) FUNC3(FUNC0("------"
					    "---------\n"));
					cbp->cb_first = B_FALSE;
				}

				if (poolfirst) {
					(void) FUNC3(FUNC0("%s\n"),
					    FUNC7(zhp));
					poolfirst = B_FALSE;
				}

				(void) FUNC3(FUNC0("      %s\n"), fname);
			}
		}
	}

	return (0);
}