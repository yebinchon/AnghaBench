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
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 scalar_t__ DATA_TYPE_STRING ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_LOAD_INFO ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_UNSUP_FEAT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void
FUNC8(nvlist_t *config)
{
	nvlist_t *nvinfo, *unsup_feat;

	FUNC7(FUNC0(config, ZPOOL_CONFIG_LOAD_INFO, &nvinfo) ==
	    0);
	FUNC7(FUNC0(nvinfo, ZPOOL_CONFIG_UNSUP_FEAT,
	    &unsup_feat) == 0);

	for (nvpair_t *nvp = FUNC1(unsup_feat, NULL); nvp != NULL;
	    nvp = FUNC1(unsup_feat, nvp)) {
		char *desc;

		FUNC7(FUNC3(nvp) == DATA_TYPE_STRING);
		FUNC7(FUNC4(nvp, &desc) == 0);

		if (FUNC6(desc) > 0)
			(void) FUNC5("\t%s (%s)\n", FUNC2(nvp), desc);
		else
			(void) FUNC5("\t%s\n", FUNC2(nvp));
	}
}