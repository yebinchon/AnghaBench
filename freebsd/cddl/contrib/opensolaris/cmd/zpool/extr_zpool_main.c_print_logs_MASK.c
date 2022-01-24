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
typedef  size_t uint_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_IS_LOG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  g_zfs ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(zpool_handle_t *zhp, nvlist_t *nv, int namewidth, boolean_t verbose)
{
	uint_t c, children;
	nvlist_t **child;

	if (FUNC2(nv, ZPOOL_CONFIG_CHILDREN, &child,
	    &children) != 0)
		return;

	(void) FUNC6(FUNC1("\tlogs\n"));

	for (c = 0; c < children; c++) {
		uint64_t is_log = B_FALSE;
		char *name;

		(void) FUNC3(child[c], ZPOOL_CONFIG_IS_LOG,
		    &is_log);
		if (!is_log)
			continue;
		name = FUNC7(g_zfs, zhp, child[c], B_TRUE);
		if (verbose)
			FUNC5(zhp, name, child[c], namewidth,
			    2, B_FALSE);
		else
			FUNC4(name, child[c], namewidth, 2);
		FUNC0(name);
	}
}