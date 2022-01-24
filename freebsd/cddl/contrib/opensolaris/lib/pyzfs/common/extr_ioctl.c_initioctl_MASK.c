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
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ) ; 
 void* ZFSError ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  zfsdevfd ; 
 int /*<<< orphan*/  zfsmethods ; 

void
FUNC5(void)
{
	PyObject *zfs_ioctl = FUNC3("zfs.ioctl", zfsmethods);
	PyObject *zfs_util = FUNC0("zfs.util");
	PyObject *devfile;

	if (zfs_util == NULL)
		return;

	ZFSError = FUNC2(zfs_util, "ZFSError");
	devfile = FUNC2(zfs_util, "dev");
	zfsdevfd = FUNC1(devfile);

	FUNC4();
}