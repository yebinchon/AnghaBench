#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  topo_walk_t ;
typedef  int /*<<< orphan*/  topo_hdl_t ;
struct TYPE_5__ {int /*<<< orphan*/ * libzfs_fru_hash; int /*<<< orphan*/ * libzfs_topo_hdl; } ;
typedef  TYPE_1__ libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FM_FMRI_SCHEME_HC ; 
 int /*<<< orphan*/  TOPO_VERSION ; 
 int /*<<< orphan*/  TOPO_WALK_CHILD ; 
 int /*<<< orphan*/  ZFS_FRU_HASH_SIZE ; 
 int /*<<< orphan*/ * _topo_dlhandle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  libzfs_fru_gather ; 

void
FUNC8(libzfs_handle_t *hdl)
{
	int err;
	char *uuid;
	topo_hdl_t *thp;
	topo_walk_t *twp;

	if (_topo_dlhandle == NULL)
		return;

	/*
	 * Clear the FRU hash and initialize our basic structures.
	 */
	FUNC7(hdl, B_FALSE);

	if ((hdl->libzfs_topo_hdl = FUNC1(TOPO_VERSION,
	    NULL, &err)) == NULL)
		return;

	thp = hdl->libzfs_topo_hdl;

	if ((uuid = FUNC2(thp, NULL, &err)) == NULL)
		return;

	FUNC0(thp, uuid);

	if (hdl->libzfs_fru_hash == NULL &&
	    (hdl->libzfs_fru_hash =
	    FUNC6(ZFS_FRU_HASH_SIZE, sizeof (void *))) == NULL)
		return;

	/*
	 * We now have a topo snapshot, so iterate over the hc topology looking
	 * for disks to add to the hash.
	 */
	twp = FUNC4(thp, FM_FMRI_SCHEME_HC,
	    libzfs_fru_gather, hdl, &err);
	if (twp != NULL) {
		(void) FUNC5(twp, TOPO_WALK_CHILD);
		FUNC3(twp);
	}
}