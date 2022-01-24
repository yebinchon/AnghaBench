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
struct TYPE_4__ {int /*<<< orphan*/  zc_cookie; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 scalar_t__ ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char**,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_StopIteration ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int ZFS_IOC_DATASET_LIST_NEXT ; 
 int ZFS_IOC_SNAPSHOT_LIST_NEXT ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * FUNC6 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static PyObject *
FUNC9(PyObject *self, PyObject *args)
{
	int ioc;
	uint64_t cookie;
	zfs_cmd_t zc = { 0 };
	int snaps;
	char *name;
	PyObject *nvl;
	PyObject *ret = NULL;

	if (!FUNC0(args, "siK", &name, &snaps, &cookie))
		return (NULL);

	(void) FUNC8(zc.zc_name, name, sizeof (zc.zc_name));
	zc.zc_cookie = cookie;

	if (snaps)
		ioc = ZFS_IOC_SNAPSHOT_LIST_NEXT;
	else
		ioc = ZFS_IOC_DATASET_LIST_NEXT;

	nvl = FUNC6(ioc, &zc);
	if (nvl) {
		FUNC5(&zc, nvl);
		ret = FUNC2("sKO", zc.zc_name, zc.zc_cookie, nvl);
		FUNC3(nvl);
	} else if (errno == ESRCH) {
		FUNC1(PyExc_StopIteration);
	} else {
		if (snaps)
			FUNC7(FUNC4("cannot get snapshots of %s"), name);
		else
			FUNC7(FUNC4("cannot get child datasets of %s"), name);
	}
	return (ret);
}