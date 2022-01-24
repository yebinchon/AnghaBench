#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* zfs_name; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct destroydata {char* snapname; int /*<<< orphan*/  nvl; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int ZFS_MAX_DATASET_NAME_LEN ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int (*) (TYPE_1__*,void*),struct destroydata*) ; 

__attribute__((used)) static int
FUNC6(zfs_handle_t *zhp, void *arg)
{
	struct destroydata *dd = arg;
	char name[ZFS_MAX_DATASET_NAME_LEN];
	int rv = 0;

	(void) FUNC2(name, sizeof (name),
	    "%s@%s", zhp->zfs_name, dd->snapname);

	if (FUNC0(name))
		FUNC3(FUNC1(dd->nvl, name) == 0);

	rv = FUNC5(zhp, zfs_check_snap_cb, dd);
	FUNC4(zhp);
	return (rv);
}