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
struct task_struct {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 struct task_struct* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

__attribute__((used)) static int FUNC3(struct dentry *dentry, struct nameidata *nd)
{
	struct inode *inode = dentry->d_inode;
	struct task_struct *task = FUNC1(inode);
	if (task) {
		FUNC2(task);
		return 1;
	}
	FUNC0(dentry);
	return 0;
}