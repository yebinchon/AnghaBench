#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  SPA_VERSION_FEATURES ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(zpool_handle_t *zhp, uint64_t version)
{
	int ret;
	nvlist_t *config;
	uint64_t oldversion;

	config = FUNC6(zhp, NULL);
	FUNC5(FUNC3(config, ZPOOL_CONFIG_VERSION,
	    &oldversion) == 0);

	FUNC1(FUNC0(oldversion));
	FUNC1(oldversion < version);

	ret = FUNC8(zhp, version);
	if (ret != 0)
		return (ret);

	if (version >= SPA_VERSION_FEATURES) {
		(void) FUNC4(FUNC2("Successfully upgraded "
		    "'%s' from version %llu to feature flags.\n"),
		    FUNC7(zhp), oldversion);
	} else {
		(void) FUNC4(FUNC2("Successfully upgraded "
		    "'%s' from version %llu to version %llu.\n"),
		    FUNC7(zhp), oldversion, version);
	}

	return (0);
}