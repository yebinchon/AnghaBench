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
typedef  int /*<<< orphan*/  zfs_share_type_t ;
typedef  int /*<<< orphan*/  zfs_share_proto_t ;
struct TYPE_4__ {int /*<<< orphan*/  zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  SHARED_NOT_SHARED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char**) ; 

zfs_share_type_t
FUNC3(zfs_handle_t *zhp, char **where, zfs_share_proto_t proto)
{
	char *mountpoint;
	zfs_share_type_t rc;

	if (!FUNC2(zhp, &mountpoint))
		return (SHARED_NOT_SHARED);

	if ((rc = FUNC1(zhp->zfs_hdl, mountpoint, proto))
	    != SHARED_NOT_SHARED) {
		if (where != NULL)
			*where = mountpoint;
		else
			FUNC0(mountpoint);
		return (rc);
	} else {
		FUNC0(mountpoint);
		return (SHARED_NOT_SHARED);
	}
}