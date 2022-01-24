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
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_9__ {int /*<<< orphan*/  libzfs_fd; } ;
typedef  TYPE_2__ libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_IOC_LOG_HISTORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC6(libzfs_handle_t *hdl, const char *message)
{
	zfs_cmd_t zc = { 0 };
	nvlist_t *args;
	int err;

	args = FUNC1();
	FUNC0(args, "message", message);
	err = FUNC5(hdl, &zc, args);
	if (err == 0)
		err = FUNC2(hdl->libzfs_fd, ZFS_IOC_LOG_HISTORY, &zc);
	FUNC3(args);
	FUNC4(&zc);
	return (err);
}