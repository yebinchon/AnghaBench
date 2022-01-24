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
struct vfsmount {int dummy; } ;
struct kstat {int mode; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {int mode; } ;
struct TYPE_2__ {struct ctl_table* sysctl_entry; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ctl_table_header*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int FUNC2 (struct ctl_table_header*) ; 
 int S_IFMT ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct kstat*) ; 
 struct ctl_table_header* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_table_header*) ; 

__attribute__((used)) static int FUNC6(struct vfsmount *mnt, struct dentry *dentry, struct kstat *stat)
{
	struct inode *inode = dentry->d_inode;
	struct ctl_table_header *head = FUNC4(inode);
	struct ctl_table *table = FUNC1(inode)->sysctl_entry;

	if (FUNC0(head))
		return FUNC2(head);

	FUNC3(inode, stat);
	if (table)
		stat->mode = (stat->mode & S_IFMT) | table->mode;

	FUNC5(head);
	return 0;
}