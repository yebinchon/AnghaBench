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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ pool_initialize_func_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_IOC_POOL_INITIALIZE ; 
 int /*<<< orphan*/  ZPOOL_INITIALIZE_COMMAND ; 
 int /*<<< orphan*/  ZPOOL_INITIALIZE_VDEVS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

int
FUNC5(const char *poolname, pool_initialize_func_t cmd_type,
    nvlist_t *vdevs, nvlist_t **errlist)
{
	int error;
	nvlist_t *args = FUNC2();
	FUNC1(args, ZPOOL_INITIALIZE_COMMAND, (uint64_t)cmd_type);
	FUNC0(args, ZPOOL_INITIALIZE_VDEVS, vdevs);

	error = FUNC4(ZFS_IOC_POOL_INITIALIZE, poolname, args, errlist);

	FUNC3(args);

	return (error);
}