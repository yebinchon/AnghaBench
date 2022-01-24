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
struct TYPE_3__ {size_t zc_nvlist_src_size; uintptr_t zc_nvlist_src; int zc_perm_action; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  NV_ENCODE_NATIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  PyDict_Type ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int /*<<< orphan*/  ZFS_IOC_SET_FSACL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* FUNC6 (size_t) ; 
 int FUNC7 (int /*<<< orphan*/ *,char**,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static PyObject *
FUNC11(PyObject *self, PyObject *args)
{
	int un;
	size_t nvsz;
	zfs_cmd_t zc = { 0 };
	char *name, *nvbuf;
	PyObject *dict, *file;
	nvlist_t *nvl;
	int err;

	if (!FUNC0(args, "siO!", &name, &un,
	    &PyDict_Type, &dict))
		return (NULL);

	nvl = FUNC3(dict);
	if (nvl == NULL)
		return (NULL);

	err = FUNC8(nvl, &nvsz, NV_ENCODE_NATIVE);
	FUNC2(err == 0);
	nvbuf = FUNC6(nvsz);
	err = FUNC7(nvl, &nvbuf, &nvsz, NV_ENCODE_NATIVE, 0);
	FUNC2(err == 0);

	(void) FUNC10(zc.zc_name, name, sizeof (zc.zc_name));
	zc.zc_nvlist_src_size = nvsz;
	zc.zc_nvlist_src = (uintptr_t)nvbuf;
	zc.zc_perm_action = un;

	err = FUNC5(ZFS_IOC_SET_FSACL, &zc);
	FUNC4(nvbuf);
	if (err) {
		FUNC9(FUNC1("cannot set permissions on %s"), name);
		return (NULL);
	}

	Py_RETURN_NONE;
}