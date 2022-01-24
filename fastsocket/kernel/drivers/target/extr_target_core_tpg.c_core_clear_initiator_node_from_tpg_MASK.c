#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {int /*<<< orphan*/  device_list_lock; struct se_dev_entry** device_list; } ;
struct se_lun {int dummy; } ;
struct se_dev_entry {int lun_flags; int /*<<< orphan*/  mapped_lun; struct se_lun* se_lun; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_fabric_name ) () ;} ;

/* Variables and functions */
 int TRANSPORT_LUNFLAGS_INITIATOR_ACCESS ; 
 int /*<<< orphan*/  TRANSPORT_LUNFLAGS_NO_ACCESS ; 
 int TRANSPORT_MAX_LUNS_PER_TPG ; 
 int /*<<< orphan*/  FUNC0 (struct se_lun*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct se_node_acl*,struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(
	struct se_node_acl *nacl,
	struct se_portal_group *tpg)
{
	int i;
	struct se_dev_entry *deve;
	struct se_lun *lun;

	FUNC2(&nacl->device_list_lock);
	for (i = 0; i < TRANSPORT_MAX_LUNS_PER_TPG; i++) {
		deve = nacl->device_list[i];

		if (!(deve->lun_flags & TRANSPORT_LUNFLAGS_INITIATOR_ACCESS))
			continue;

		if (!deve->se_lun) {
			FUNC1("%s device entries device pointer is"
				" NULL, but Initiator has access.\n",
				tpg->se_tpg_tfo->get_fabric_name());
			continue;
		}

		lun = deve->se_lun;
		FUNC3(&nacl->device_list_lock);
		FUNC0(lun, NULL, deve->mapped_lun,
			TRANSPORT_LUNFLAGS_NO_ACCESS, nacl, tpg);

		FUNC2(&nacl->device_list_lock);
	}
	FUNC3(&nacl->device_list_lock);
}