#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  zpool_config; } ;
typedef  TYPE_1__ zpool_handle_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_PHYS_PATH ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

nvlist_t *
FUNC6(zpool_handle_t *zhp, const char *ppath,
    boolean_t *avail_spare, boolean_t *l2cache, boolean_t *log)
{
	nvlist_t *search, *nvroot, *ret;

	FUNC5(FUNC1(&search, NV_UNIQUE_NAME, KM_SLEEP) == 0);
	FUNC5(FUNC0(search, ZPOOL_CONFIG_PHYS_PATH, ppath) == 0);

	FUNC5(FUNC3(zhp->zpool_config, ZPOOL_CONFIG_VDEV_TREE,
	    &nvroot) == 0);

	*avail_spare = B_FALSE;
	*l2cache = B_FALSE;
	if (log != NULL)
		*log = B_FALSE;
	ret = FUNC4(nvroot, search, avail_spare, l2cache, log);
	FUNC2(search);

	return (ret);
}