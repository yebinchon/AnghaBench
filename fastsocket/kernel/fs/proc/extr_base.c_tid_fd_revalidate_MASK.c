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
struct files_struct {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct cred {scalar_t__ egid; scalar_t__ euid; } ;

/* Variables and functions */
 int S_ISGID ; 
 int S_ISUID ; 
 struct cred* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct files_struct*,int) ; 
 struct files_struct* FUNC3 (struct task_struct*) ; 
 struct task_struct* FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*,struct inode*) ; 
 scalar_t__ FUNC11 (struct task_struct*) ; 

__attribute__((used)) static int FUNC12(struct dentry *dentry, struct nameidata *nd)
{
	struct inode *inode = dentry->d_inode;
	struct task_struct *task = FUNC4(inode);
	int fd = FUNC5(inode);
	struct files_struct *files;
	const struct cred *cred;

	if (task) {
		files = FUNC3(task);
		if (files) {
			FUNC8();
			if (FUNC2(files, fd)) {
				FUNC9();
				FUNC6(files);
				if (FUNC11(task)) {
					FUNC8();
					cred = FUNC0(task);
					inode->i_uid = cred->euid;
					inode->i_gid = cred->egid;
					FUNC9();
				} else {
					inode->i_uid = 0;
					inode->i_gid = 0;
				}
				inode->i_mode &= ~(S_ISUID | S_ISGID);
				FUNC10(task, inode);
				FUNC7(task);
				return 1;
			}
			FUNC9();
			FUNC6(files);
		}
		FUNC7(task);
	}
	FUNC1(dentry);
	return 0;
}