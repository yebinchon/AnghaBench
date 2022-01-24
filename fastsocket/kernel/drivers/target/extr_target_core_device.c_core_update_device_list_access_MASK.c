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
struct se_node_acl {int /*<<< orphan*/  device_list_lock; struct se_dev_entry** device_list; } ;
struct se_dev_entry {size_t lun_flags; } ;

/* Variables and functions */
 size_t TRANSPORT_LUNFLAGS_READ_ONLY ; 
 size_t TRANSPORT_LUNFLAGS_READ_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(
	u32 mapped_lun,
	u32 lun_access,
	struct se_node_acl *nacl)
{
	struct se_dev_entry *deve;

	FUNC0(&nacl->device_list_lock);
	deve = nacl->device_list[mapped_lun];
	if (lun_access & TRANSPORT_LUNFLAGS_READ_WRITE) {
		deve->lun_flags &= ~TRANSPORT_LUNFLAGS_READ_ONLY;
		deve->lun_flags |= TRANSPORT_LUNFLAGS_READ_WRITE;
	} else {
		deve->lun_flags &= ~TRANSPORT_LUNFLAGS_READ_WRITE;
		deve->lun_flags |= TRANSPORT_LUNFLAGS_READ_ONLY;
	}
	FUNC1(&nacl->device_list_lock);
}