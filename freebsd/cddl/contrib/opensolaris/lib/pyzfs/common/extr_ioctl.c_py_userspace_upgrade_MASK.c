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
struct TYPE_3__ {int /*<<< orphan*/  zc_name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int /*<<< orphan*/  ZFS_IOC_USERSPACE_UPGRADE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  zfsdevfd ; 

__attribute__((used)) static PyObject *
FUNC5(PyObject *self, PyObject *args)
{
	zfs_cmd_t zc = { 0 };
	char *name;
	int error;

	if (!FUNC0(args, "s", &name))
		return (NULL);

	(void) FUNC4(zc.zc_name, name, sizeof (zc.zc_name));
	error = FUNC2(zfsdevfd, ZFS_IOC_USERSPACE_UPGRADE, &zc);

	if (error != 0) {
		FUNC3(FUNC1("cannot initialize user accounting information on %s"),
		    name);
		return (NULL);
	}

	Py_RETURN_NONE;
}