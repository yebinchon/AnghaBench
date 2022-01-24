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
typedef  int /*<<< orphan*/  zprop_source_t ;
typedef  scalar_t__ zpool_prop_t ;
struct TYPE_4__ {int /*<<< orphan*/ * zpool_props; int /*<<< orphan*/ * zpool_config; } ;
typedef  TYPE_1__ zpool_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 scalar_t__ ZPOOL_PROP_GUID ; 
 int /*<<< orphan*/  ZPROP_SOURCE ; 
 int /*<<< orphan*/  ZPROP_SRC_DEFAULT ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

uint64_t
FUNC6(zpool_handle_t *zhp, zpool_prop_t prop, zprop_source_t *src)
{
	nvlist_t *nv, *nvl;
	uint64_t value;
	zprop_source_t source;

	if (zhp->zpool_props == NULL && FUNC3(zhp)) {
		/*
		 * zpool_get_all_props() has most likely failed because
		 * the pool is faulted, but if all we need is the top level
		 * vdev's guid then get it from the zhp config nvlist.
		 */
		if ((prop == ZPOOL_PROP_GUID) &&
		    (FUNC0(zhp->zpool_config,
		    ZPOOL_CONFIG_VDEV_TREE, &nv) == 0) &&
		    (FUNC1(nv, ZPOOL_CONFIG_GUID, &value)
		    == 0)) {
			return (value);
		}
		return (FUNC4(prop));
	}

	nvl = zhp->zpool_props;
	if (FUNC0(nvl, FUNC5(prop), &nv) == 0) {
		FUNC2(FUNC1(nv, ZPROP_SOURCE, &value) == 0);
		source = value;
		FUNC2(FUNC1(nv, ZPROP_VALUE, &value) == 0);
	} else {
		source = ZPROP_SRC_DEFAULT;
		value = FUNC4(prop);
	}

	if (src)
		*src = source;

	return (value);
}