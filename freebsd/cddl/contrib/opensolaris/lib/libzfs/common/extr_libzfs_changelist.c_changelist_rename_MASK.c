#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_6__* cn_handle; } ;
typedef  TYPE_1__ prop_changenode_t ;
struct TYPE_9__ {int /*<<< orphan*/  cl_list; } ;
typedef  TYPE_2__ prop_changelist_t ;
typedef  int /*<<< orphan*/  newname ;
struct TYPE_10__ {char* zfs_name; } ;

/* Variables and functions */
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (char const*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC7(prop_changelist_t *clp, const char *src, const char *dst)
{
	prop_changenode_t *cn;
	char newname[ZFS_MAX_DATASET_NAME_LEN];

	for (cn = FUNC5(clp->cl_list); cn != NULL;
	    cn = FUNC6(clp->cl_list, cn)) {
		/*
		 * Do not rename a clone that's not in the source hierarchy.
		 */
		if (!FUNC0(cn->cn_handle->zfs_name, src))
			continue;

		/*
		 * Destroy the previous mountpoint if needed.
		 */
		FUNC1(cn->cn_handle);

		(void) FUNC3(newname, dst, sizeof (newname));
		(void) FUNC2(newname, cn->cn_handle->zfs_name + FUNC4(src));

		(void) FUNC3(cn->cn_handle->zfs_name, newname,
		    sizeof (cn->cn_handle->zfs_name));
	}
}