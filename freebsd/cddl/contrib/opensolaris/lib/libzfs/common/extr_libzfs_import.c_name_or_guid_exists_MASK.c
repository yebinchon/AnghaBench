#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  zpool_config; } ;
typedef  TYPE_1__ zpool_handle_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ guid; int /*<<< orphan*/ * poolname; } ;
typedef  TYPE_2__ importargs_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(zpool_handle_t *zhp, void *data)
{
	importargs_t *import = data;
	int found = 0;

	if (import->poolname != NULL) {
		char *pool_name;

		FUNC3(FUNC0(zhp->zpool_config,
		    ZPOOL_CONFIG_POOL_NAME, &pool_name) == 0);
		if (FUNC2(pool_name, import->poolname) == 0)
			found = 1;
	} else {
		uint64_t pool_guid;

		FUNC3(FUNC1(zhp->zpool_config,
		    ZPOOL_CONFIG_POOL_GUID, &pool_guid) == 0);
		if (pool_guid == import->guid)
			found = 1;
	}

	FUNC4(zhp);
	return (found);
}