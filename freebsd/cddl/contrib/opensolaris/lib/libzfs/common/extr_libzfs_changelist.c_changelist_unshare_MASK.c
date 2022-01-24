#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_share_proto_t ;
struct TYPE_7__ {int /*<<< orphan*/  cn_handle; } ;
typedef  TYPE_1__ prop_changenode_t ;
struct TYPE_8__ {scalar_t__ cl_prop; int /*<<< orphan*/  cl_list; } ;
typedef  TYPE_2__ prop_changelist_t ;

/* Variables and functions */
 scalar_t__ ZFS_PROP_SHARENFS ; 
 scalar_t__ ZFS_PROP_SHARESMB ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(prop_changelist_t *clp, zfs_share_proto_t *proto)
{
	prop_changenode_t *cn;
	int ret = 0;

	if (clp->cl_prop != ZFS_PROP_SHARENFS &&
	    clp->cl_prop != ZFS_PROP_SHARESMB)
		return (0);

	for (cn = FUNC0(clp->cl_list); cn != NULL;
	    cn = FUNC1(clp->cl_list, cn)) {
		if (FUNC2(cn->cn_handle, NULL, proto) != 0)
			ret = -1;
	}

	return (ret);
}