#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* libzfs_fru_hash; int /*<<< orphan*/ * libzfs_topo_hdl; TYPE_2__* libzfs_fru_list; } ;
typedef  TYPE_1__ libzfs_handle_t ;
struct TYPE_7__ {struct TYPE_7__* zf_fru; struct TYPE_7__* zf_device; struct TYPE_7__* zf_next; } ;
typedef  TYPE_2__ libzfs_fru_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int ZFS_FRU_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void
FUNC4(libzfs_handle_t *hdl, boolean_t final)
{
	libzfs_fru_t *frup;

	while ((frup = hdl->libzfs_fru_list) != NULL) {
		hdl->libzfs_fru_list = frup->zf_next;
		FUNC3(frup->zf_device);
		FUNC3(frup->zf_fru);
		FUNC3(frup);
	}

	hdl->libzfs_fru_list = NULL;

	if (hdl->libzfs_topo_hdl != NULL) {
		FUNC1(hdl->libzfs_topo_hdl);
		FUNC0(hdl->libzfs_topo_hdl);
		hdl->libzfs_topo_hdl = NULL;
	}

	if (final) {
		FUNC3(hdl->libzfs_fru_hash);
	} else if (hdl->libzfs_fru_hash != NULL) {
		FUNC2(hdl->libzfs_fru_hash,
		    ZFS_FRU_HASH_SIZE * sizeof (void *));
	}
}