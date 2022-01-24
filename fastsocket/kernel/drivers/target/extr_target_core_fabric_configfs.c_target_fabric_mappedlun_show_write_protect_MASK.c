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
struct se_lun_acl {size_t mapped_lun; struct se_node_acl* se_lun_nacl; } ;
struct se_dev_entry {int lun_flags; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int TRANSPORT_LUNFLAGS_READ_ONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(
	struct se_lun_acl *lacl,
	char *page)
{
	struct se_node_acl *se_nacl = lacl->se_lun_nacl;
	struct se_dev_entry *deve;
	ssize_t len;

	FUNC0(&se_nacl->device_list_lock);
	deve = se_nacl->device_list[lacl->mapped_lun];
	len = FUNC2(page, "%d\n",
			(deve->lun_flags & TRANSPORT_LUNFLAGS_READ_ONLY) ?
			1 : 0);
	FUNC1(&se_nacl->device_list_lock);

	return len;
}