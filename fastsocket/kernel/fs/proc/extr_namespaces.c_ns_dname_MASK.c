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
struct proc_ns_operations {int /*<<< orphan*/  name; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {struct proc_ns_operations* ns_ops; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 char* FUNC1 (struct dentry*,char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC2(struct dentry *dentry, char *buffer, int buflen)
{
	struct inode *inode = dentry->d_inode;
	const struct proc_ns_operations *ns_ops = FUNC0(inode)->ns_ops;

	return FUNC1(dentry, buffer, buflen, "%s:[%lu]",
		ns_ops->name, inode->i_ino);
}