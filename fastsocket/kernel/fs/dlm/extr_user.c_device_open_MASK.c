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
struct inode {int dummy; } ;
struct file {struct dlm_user_proc* private_data; } ;
struct dlm_user_proc {int /*<<< orphan*/  wait; int /*<<< orphan*/  locks_spin; int /*<<< orphan*/  asts_spin; int /*<<< orphan*/  unlocking; int /*<<< orphan*/  locks; int /*<<< orphan*/  asts; int /*<<< orphan*/  lockspace; } ;
struct dlm_ls {int /*<<< orphan*/  ls_local_handle; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct dlm_ls* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct dlm_user_proc* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct dlm_user_proc *proc;
	struct dlm_ls *ls;

	ls = FUNC1(FUNC3(inode));
	if (!ls)
		return -ENOENT;

	proc = FUNC5(sizeof(struct dlm_user_proc), GFP_NOFS);
	if (!proc) {
		FUNC2(ls);
		return -ENOMEM;
	}

	proc->lockspace = ls->ls_local_handle;
	FUNC0(&proc->asts);
	FUNC0(&proc->locks);
	FUNC0(&proc->unlocking);
	FUNC6(&proc->asts_spin);
	FUNC6(&proc->locks_spin);
	FUNC4(&proc->wait);
	file->private_data = proc;

	return 0;
}