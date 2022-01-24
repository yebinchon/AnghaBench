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
struct proc_dir_entry {int /*<<< orphan*/  pde_unload_lock; TYPE_1__* proc_fops; int /*<<< orphan*/  pde_users; } ;
struct pde_opener {int (* release ) (struct inode*,struct file*) ;int /*<<< orphan*/  lh; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* release ) (struct inode*,struct file*) ;} ;

/* Variables and functions */
 struct proc_dir_entry* FUNC0 (struct inode*) ; 
 struct pde_opener* FUNC1 (struct proc_dir_entry*,struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct pde_opener*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	struct proc_dir_entry *pde = FUNC0(inode);
	int rv = 0;
	int (*release)(struct inode *, struct file *);
	struct pde_opener *pdeo;

	FUNC5(&pde->pde_unload_lock);
	pdeo = FUNC1(pde, inode, file);
	if (!pde->proc_fops) {
		/*
		 * Can't simply exit, __fput() will think that everything is OK,
		 * and move on to freeing struct file. remove_proc_entry() will
		 * find slacker in opener's list and will try to do non-trivial
		 * things with struct file. Therefore, remove opener from list.
		 *
		 * But if opener is removed from list, who will ->release it?
		 */
		if (pdeo) {
			FUNC3(&pdeo->lh);
			FUNC6(&pde->pde_unload_lock);
			rv = pdeo->release(inode, file);
			FUNC2(pdeo);
		} else
			FUNC6(&pde->pde_unload_lock);
		return rv;
	}
	pde->pde_users++;
	release = pde->proc_fops->release;
	if (pdeo) {
		FUNC3(&pdeo->lh);
		FUNC2(pdeo);
	}
	FUNC6(&pde->pde_unload_lock);

	if (release)
		rv = release(inode, file);

	FUNC4(pde);
	return rv;
}