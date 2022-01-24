#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u32 ;
struct se_portal_group {int dummy; } ;
struct se_port {int /*<<< orphan*/  sep_alua_lock; int /*<<< orphan*/  sep_alua_list; } ;
struct se_node_acl {int /*<<< orphan*/  device_list_lock; struct se_dev_entry** device_list; } ;
struct se_lun_acl {int dummy; } ;
struct se_lun {struct se_port* lun_sep; } ;
struct se_dev_entry {int lun_flags; size_t mapped_lun; int /*<<< orphan*/  alua_port_list; int /*<<< orphan*/  attach_count; int /*<<< orphan*/  creation_time; struct se_lun_acl* se_lun_acl; struct se_lun* se_lun; } ;

/* Variables and functions */
 int EINVAL ; 
 int TRANSPORT_LUNFLAGS_INITIATOR_ACCESS ; 
 int TRANSPORT_LUNFLAGS_READ_ONLY ; 
 size_t TRANSPORT_LUNFLAGS_READ_WRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(
	struct se_lun *lun,
	struct se_lun_acl *lun_acl,
	u32 mapped_lun,
	u32 lun_access,
	struct se_node_acl *nacl,
	struct se_portal_group *tpg)
{
	struct se_port *port = lun->lun_sep;
	struct se_dev_entry *deve;

	FUNC4(&nacl->device_list_lock);

	deve = nacl->device_list[mapped_lun];

	/*
	 * Check if the call is handling demo mode -> explict LUN ACL
	 * transition.  This transition must be for the same struct se_lun
	 * + mapped_lun that was setup in demo mode..
	 */
	if (deve->lun_flags & TRANSPORT_LUNFLAGS_INITIATOR_ACCESS) {
		if (deve->se_lun_acl != NULL) {
			FUNC2("struct se_dev_entry->se_lun_acl"
			       " already set for demo mode -> explict"
			       " LUN ACL transition\n");
			FUNC6(&nacl->device_list_lock);
			return -EINVAL;
		}
		if (deve->se_lun != lun) {
			FUNC2("struct se_dev_entry->se_lun does"
			       " match passed struct se_lun for demo mode"
			       " -> explict LUN ACL transition\n");
			FUNC6(&nacl->device_list_lock);
			return -EINVAL;
		}
		deve->se_lun_acl = lun_acl;

		if (lun_access & TRANSPORT_LUNFLAGS_READ_WRITE) {
			deve->lun_flags &= ~TRANSPORT_LUNFLAGS_READ_ONLY;
			deve->lun_flags |= TRANSPORT_LUNFLAGS_READ_WRITE;
		} else {
			deve->lun_flags &= ~TRANSPORT_LUNFLAGS_READ_WRITE;
			deve->lun_flags |= TRANSPORT_LUNFLAGS_READ_ONLY;
		}

		FUNC6(&nacl->device_list_lock);
		return 0;
	}

	deve->se_lun = lun;
	deve->se_lun_acl = lun_acl;
	deve->mapped_lun = mapped_lun;
	deve->lun_flags |= TRANSPORT_LUNFLAGS_INITIATOR_ACCESS;

	if (lun_access & TRANSPORT_LUNFLAGS_READ_WRITE) {
		deve->lun_flags &= ~TRANSPORT_LUNFLAGS_READ_ONLY;
		deve->lun_flags |= TRANSPORT_LUNFLAGS_READ_WRITE;
	} else {
		deve->lun_flags &= ~TRANSPORT_LUNFLAGS_READ_WRITE;
		deve->lun_flags |= TRANSPORT_LUNFLAGS_READ_ONLY;
	}

	deve->creation_time = FUNC0();
	deve->attach_count++;
	FUNC6(&nacl->device_list_lock);

	FUNC3(&port->sep_alua_lock);
	FUNC1(&deve->alua_port_list, &port->sep_alua_list);
	FUNC5(&port->sep_alua_lock);

	return 0;
}