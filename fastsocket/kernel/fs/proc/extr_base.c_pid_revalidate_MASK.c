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
struct inode {int i_mode; scalar_t__ i_gid; scalar_t__ i_uid; } ;
struct dentry {struct inode* d_inode; } ;
struct cred {scalar_t__ egid; scalar_t__ euid; } ;

/* Variables and functions */
 int S_IFDIR ; 
 int S_IRUGO ; 
 int S_ISGID ; 
 int S_ISUID ; 
 int S_IXUGO ; 
 struct cred* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct task_struct* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,struct inode*) ; 
 scalar_t__ FUNC7 (struct task_struct*) ; 

int FUNC8(struct dentry *dentry, struct nameidata *nd)
{
	struct inode *inode = dentry->d_inode;
	struct task_struct *task = FUNC2(inode);
	const struct cred *cred;

	if (task) {
		if ((inode->i_mode == (S_IFDIR|S_IRUGO|S_IXUGO)) ||
		    FUNC7(task)) {
			FUNC4();
			cred = FUNC0(task);
			inode->i_uid = cred->euid;
			inode->i_gid = cred->egid;
			FUNC5();
		} else {
			inode->i_uid = 0;
			inode->i_gid = 0;
		}
		inode->i_mode &= ~(S_ISUID | S_ISGID);
		FUNC6(task, inode);
		FUNC3(task);
		return 1;
	}
	FUNC1(dentry);
	return 0;
}