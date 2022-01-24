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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_L2CACHE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SPARES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  g_zfs ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,size_t*) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(zpool_handle_t *zhp, nvlist_t *nv, int depth, int max)
{
	char *name = FUNC3(g_zfs, zhp, nv, B_TRUE);
	nvlist_t **child;
	uint_t c, children;
	int ret;

	if (FUNC2(name) + depth > max)
		max = FUNC2(name) + depth;

	FUNC0(name);

	if (FUNC1(nv, ZPOOL_CONFIG_SPARES,
	    &child, &children) == 0) {
		for (c = 0; c < children; c++)
			if ((ret = FUNC4(zhp, child[c], depth + 2,
			    max)) > max)
				max = ret;
	}

	if (FUNC1(nv, ZPOOL_CONFIG_L2CACHE,
	    &child, &children) == 0) {
		for (c = 0; c < children; c++)
			if ((ret = FUNC4(zhp, child[c], depth + 2,
			    max)) > max)
				max = ret;
	}

	if (FUNC1(nv, ZPOOL_CONFIG_CHILDREN,
	    &child, &children) == 0) {
		for (c = 0; c < children; c++)
			if ((ret = FUNC4(zhp, child[c], depth + 2,
			    max)) > max)
				max = ret;
	}


	return (max);
}