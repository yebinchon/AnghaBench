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
struct TYPE_4__ {int /*<<< orphan*/  zc_name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  ZFS_IOC_OBJSET_STATS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static PyObject *
FUNC6(PyObject *self, PyObject *args)
{
	zfs_cmd_t zc = { 0 };
	int snaps;
	char *name;
	PyObject *nvl;

	if (!FUNC0(args, "s", &name))
		return (NULL);

	(void) FUNC5(zc.zc_name, name, sizeof (zc.zc_name));

	nvl = FUNC3(ZFS_IOC_OBJSET_STATS, &zc);
	if (nvl) {
		FUNC2(&zc, nvl);
	} else {
		FUNC4(FUNC1("cannot access dataset %s"), name);
	}
	return (nvl);
}