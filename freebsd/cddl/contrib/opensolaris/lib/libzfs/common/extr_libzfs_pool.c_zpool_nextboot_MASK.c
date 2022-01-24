#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_9__ {int /*<<< orphan*/  libzfs_fd; } ;
typedef  TYPE_2__ libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_IOC_NEXTBOOT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_GUID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC7(libzfs_handle_t *hdl, uint64_t pool_guid, uint64_t dev_guid,
    const char *command)
{
	zfs_cmd_t zc = { 0 };
	nvlist_t *args;
	char *packed;
	size_t size;
	int error;

	args = FUNC2();
	FUNC1(args, ZPOOL_CONFIG_POOL_GUID, pool_guid);
	FUNC1(args, ZPOOL_CONFIG_GUID, dev_guid);
	FUNC0(args, "command", command);
	error = FUNC6(hdl, &zc, args);
	if (error == 0)
		error = FUNC3(hdl->libzfs_fd, ZFS_IOC_NEXTBOOT, &zc);
	FUNC5(&zc);
	FUNC4(args);
	return (error);
}