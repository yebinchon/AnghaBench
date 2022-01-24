#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_4__ {int cb_iteration; scalar_t__ cb_verbose; } ;
typedef  TYPE_1__ iostat_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(zpool_handle_t *zhp, void *data)
{
	iostat_cbdata_t *cb = data;
	nvlist_t *oldconfig, *newconfig;
	nvlist_t *oldnvroot, *newnvroot;

	newconfig = FUNC4(zhp, &oldconfig);

	if (cb->cb_iteration == 1)
		oldconfig = NULL;

	FUNC3(FUNC0(newconfig, ZPOOL_CONFIG_VDEV_TREE,
	    &newnvroot) == 0);

	if (oldconfig == NULL)
		oldnvroot = NULL;
	else
		FUNC3(FUNC0(oldconfig, ZPOOL_CONFIG_VDEV_TREE,
		    &oldnvroot) == 0);

	/*
	 * Print out the statistics for the pool.
	 */
	FUNC2(zhp, FUNC5(zhp), oldnvroot, newnvroot, cb, 0);

	if (cb->cb_verbose)
		FUNC1(cb);

	return (0);
}