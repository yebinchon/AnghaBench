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
struct TYPE_3__ {int /*<<< orphan*/ * libzfs_sharehdl; } ;
typedef  TYPE_1__ libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(libzfs_handle_t *zhandle)
{
	if (zhandle != NULL && zhandle->libzfs_sharehdl != NULL) {
#ifdef illumos
		if (_sa_fini != NULL)
			_sa_fini(zhandle->libzfs_sharehdl);
#endif
		zhandle->libzfs_sharehdl = NULL;
	}
}