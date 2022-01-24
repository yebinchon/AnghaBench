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
typedef  size_t u32 ;
typedef  scalar_t__ u16 ;
struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_port {scalar_t__ sep_rtpi; } ;
struct se_node_acl {int /*<<< orphan*/  device_list_lock; struct se_dev_entry** device_list; struct se_portal_group* se_tpg; } ;
struct se_lun {struct se_port* lun_sep; } ;
struct se_dev_entry {int lun_flags; int /*<<< orphan*/  pr_ref_count; struct se_lun* se_lun; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_fabric_name ) () ;} ;

/* Variables and functions */
 int TRANSPORT_LUNFLAGS_INITIATOR_ACCESS ; 
 size_t TRANSPORT_MAX_LUNS_PER_TPG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

struct se_dev_entry *FUNC7(
	struct se_node_acl *nacl,
	u16 rtpi)
{
	struct se_dev_entry *deve;
	struct se_lun *lun;
	struct se_port *port;
	struct se_portal_group *tpg = nacl->se_tpg;
	u32 i;

	FUNC3(&nacl->device_list_lock);
	for (i = 0; i < TRANSPORT_MAX_LUNS_PER_TPG; i++) {
		deve = nacl->device_list[i];

		if (!(deve->lun_flags & TRANSPORT_LUNFLAGS_INITIATOR_ACCESS))
			continue;

		lun = deve->se_lun;
		if (!lun) {
			FUNC1("%s device entries device pointer is"
				" NULL, but Initiator has access.\n",
				tpg->se_tpg_tfo->get_fabric_name());
			continue;
		}
		port = lun->lun_sep;
		if (!port) {
			FUNC1("%s device entries device pointer is"
				" NULL, but Initiator has access.\n",
				tpg->se_tpg_tfo->get_fabric_name());
			continue;
		}
		if (port->sep_rtpi != rtpi)
			continue;

		FUNC0(&deve->pr_ref_count);
		FUNC2();
		FUNC4(&nacl->device_list_lock);

		return deve;
	}
	FUNC4(&nacl->device_list_lock);

	return NULL;
}