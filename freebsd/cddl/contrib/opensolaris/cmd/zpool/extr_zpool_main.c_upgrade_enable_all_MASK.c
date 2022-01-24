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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_2__ {char* fi_uname; char* fi_guid; } ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int SPA_FEATURES ; 
 int /*<<< orphan*/  ZFS_FEATURE_ENABLED ; 
 int FUNC0 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 TYPE_1__* spa_feature_table ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(zpool_handle_t *zhp, int *countp)
{
	int i, ret, count;
	boolean_t firstff = B_TRUE;
	nvlist_t *enabled = FUNC6(zhp);

	count = 0;
	for (i = 0; i < SPA_FEATURES; i++) {
		const char *fname = spa_feature_table[i].fi_uname;
		const char *fguid = spa_feature_table[i].fi_guid;
		if (!FUNC3(enabled, fguid)) {
			char *propname;
			FUNC5(-1 != FUNC0(&propname, "feature@%s", fname));
			ret = FUNC8(zhp, propname,
			    ZFS_FEATURE_ENABLED);
			if (ret != 0) {
				FUNC1(propname);
				return (ret);
			}
			count++;

			if (firstff) {
				(void) FUNC4(FUNC2("Enabled the "
				    "following features on '%s':\n"),
				    FUNC7(zhp));
				firstff = B_FALSE;
			}
			(void) FUNC4(FUNC2("  %s\n"), fname);
			FUNC1(propname);
		}
	}

	if (countp != NULL)
		*countp = count;
	return (0);
}