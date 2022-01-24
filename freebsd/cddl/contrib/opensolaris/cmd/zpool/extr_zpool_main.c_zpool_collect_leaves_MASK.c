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
typedef  scalar_t__ uint_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  g_zfs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,scalar_t__*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(zpool_handle_t *zhp, nvlist_t *nvroot, nvlist_t *res)
{
	uint_t children = 0;
	nvlist_t **child;
	uint_t i;

	(void) FUNC2(nvroot, ZPOOL_CONFIG_CHILDREN,
	    &child, &children);

	if (children == 0) {
		char *path = FUNC3(g_zfs, zhp, nvroot, B_FALSE);
		FUNC0(res, path);
		FUNC1(path);
		return;
	}

	for (i = 0; i < children; i++) {
		FUNC4(zhp, child[i], res);
	}
}