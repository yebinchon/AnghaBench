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
struct dlm_user_proc {int /*<<< orphan*/  flags; int /*<<< orphan*/  lockspace; } ;
struct dlm_ls {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_PROC_FLAGS_CLOSING ; 
 int ENOENT ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ls*,struct dlm_user_proc*) ; 
 struct dlm_ls* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_user_proc*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	struct dlm_user_proc *proc = file->private_data;
	struct dlm_ls *ls;
	sigset_t tmpsig, allsigs;

	ls = FUNC1(proc->lockspace);
	if (!ls)
		return -ENOENT;

	FUNC6(&allsigs);
	FUNC7(SIG_BLOCK, &allsigs, &tmpsig);

	FUNC5(DLM_PROC_FLAGS_CLOSING, &proc->flags);

	FUNC0(ls, proc);

	/* at this point no more lkb's should exist for this lockspace,
	   so there's no chance of dlm_user_add_ast() being called and
	   looking for lkb->ua->proc */

	FUNC3(proc);
	file->private_data = NULL;

	FUNC2(ls);
	FUNC2(ls);  /* for the find in device_open() */

	/* FIXME: AUTOFREE: if this ls is no longer used do
	   device_remove_lockspace() */

	FUNC7(SIG_SETMASK, &tmpsig, NULL);
	FUNC4();

	return 0;
}