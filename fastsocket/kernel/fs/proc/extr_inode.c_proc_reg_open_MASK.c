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
struct proc_dir_entry {int /*<<< orphan*/  pde_unload_lock; int /*<<< orphan*/  pde_openers; TYPE_1__* proc_fops; int /*<<< orphan*/  pde_users; } ;
struct pde_opener {int (* release ) (struct inode*,struct file*) ;int /*<<< orphan*/  lh; struct file* file; struct inode* inode; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* open ) (struct inode*,struct file*) ;int (* release ) (struct inode*,struct file*) ;} ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct proc_dir_entry* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct pde_opener*) ; 
 struct pde_opener* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct proc_dir_entry *pde = FUNC0(inode);
	int rv = 0;
	int (*open)(struct inode *, struct file *);
	int (*release)(struct inode *, struct file *);
	struct pde_opener *pdeo;

	/*
	 * What for, you ask? Well, we can have open, rmmod, remove_proc_entry
	 * sequence. ->release won't be called because ->proc_fops will be
	 * cleared. Depending on complexity of ->release, consequences vary.
	 *
	 * We can't wait for mercy when close will be done for real, it's
	 * deadlockable: rmmod foo </proc/foo . So, we're going to do ->release
	 * by hand in remove_proc_entry(). For this, save opener's credentials
	 * for later.
	 */
	pdeo = FUNC3(sizeof(struct pde_opener), GFP_KERNEL);
	if (!pdeo)
		return -ENOMEM;

	FUNC5(&pde->pde_unload_lock);
	if (!pde->proc_fops) {
		FUNC6(&pde->pde_unload_lock);
		FUNC2(pdeo);
		return -ENOENT;
	}
	pde->pde_users++;
	open = pde->proc_fops->open;
	release = pde->proc_fops->release;
	FUNC6(&pde->pde_unload_lock);

	if (open)
		rv = open(inode, file);

	FUNC5(&pde->pde_unload_lock);
	if (rv == 0 && release) {
		/* To know what to release. */
		pdeo->inode = inode;
		pdeo->file = file;
		/* Strictly for "too late" ->release in proc_reg_release(). */
		pdeo->release = release;
		FUNC4(&pdeo->lh, &pde->pde_openers);
	} else
		FUNC2(pdeo);
	FUNC1(pde);
	FUNC6(&pde->pde_unload_lock);
	return rv;
}