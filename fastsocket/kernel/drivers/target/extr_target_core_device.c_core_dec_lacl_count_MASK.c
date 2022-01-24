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
struct se_node_acl {int /*<<< orphan*/  device_list_lock; struct se_dev_entry** device_list; } ;
struct se_dev_entry {int /*<<< orphan*/  deve_cmds; } ;
struct se_cmd {size_t orig_fe_lun; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC2(struct se_node_acl *se_nacl, struct se_cmd *se_cmd)
{
	struct se_dev_entry *deve;
	unsigned long flags;

	FUNC0(&se_nacl->device_list_lock, flags);
	deve = se_nacl->device_list[se_cmd->orig_fe_lun];
	deve->deve_cmds--;
	FUNC1(&se_nacl->device_list_lock, flags);
}