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
struct TYPE_4__ {int zc_nvlist_dst_size; uintptr_t zc_nvlist_dst; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (void*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zfsdevfd ; 

__attribute__((used)) static PyObject *
FUNC6(int ioc, zfs_cmd_t *zc)
{
	int nvsz = 2048;
	void *nvbuf;
	PyObject *pynv = NULL;

again:
	nvbuf = FUNC2(nvsz);
	zc->zc_nvlist_dst_size = nvsz;
	zc->zc_nvlist_dst = (uintptr_t)nvbuf;

	if (FUNC1(zfsdevfd, ioc, zc) == 0) {
		nvlist_t *nvl;

		errno = FUNC5(nvbuf, zc->zc_nvlist_dst_size, &nvl, 0);
		if (errno == 0) {
			pynv = FUNC3(nvl);
			FUNC4(nvl);
		}
	} else if (errno == ENOMEM) {
		FUNC0(nvbuf);
		nvsz = zc->zc_nvlist_dst_size;
		goto again;
	}
	FUNC0(nvbuf);
	return (pynv);
}