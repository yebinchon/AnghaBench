#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct proc_dir_entry {int /*<<< orphan*/  pde_unload_lock; TYPE_1__* proc_fops; int /*<<< orphan*/  pde_users; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_5__ {int /*<<< orphan*/  d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* llseek ) (struct file*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct proc_dir_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static loff_t FUNC5(struct file *file, loff_t offset, int whence)
{
	struct proc_dir_entry *pde = FUNC0(file->f_path.dentry->d_inode);
	loff_t rv = -EINVAL;
	loff_t (*llseek)(struct file *, loff_t, int);

	FUNC3(&pde->pde_unload_lock);
	/*
	 * remove_proc_entry() is going to delete PDE (as part of module
	 * cleanup sequence). No new callers into module allowed.
	 */
	if (!pde->proc_fops) {
		FUNC4(&pde->pde_unload_lock);
		return rv;
	}
	/*
	 * Bump refcount so that remove_proc_entry will wail for ->llseek to
	 * complete.
	 */
	pde->pde_users++;
	/*
	 * Save function pointer under lock, to protect against ->proc_fops
	 * NULL'ifying right after ->pde_unload_lock is dropped.
	 */
	llseek = pde->proc_fops->llseek;
	FUNC4(&pde->pde_unload_lock);

	if (!llseek)
		llseek = default_llseek;
	rv = llseek(file, offset, whence);

	FUNC2(pde);
	return rv;
}