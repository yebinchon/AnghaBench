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
struct proc_dir_entry {int /*<<< orphan*/  pde_unload_lock; TYPE_3__* proc_fops; int /*<<< orphan*/  pde_users; } ;
struct poll_table_struct {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_6__ {unsigned int (* poll ) (struct file*,struct poll_table_struct*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 unsigned int DEFAULT_POLLMASK ; 
 struct proc_dir_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC4(struct file *file, struct poll_table_struct *pts)
{
	struct proc_dir_entry *pde = FUNC0(file->f_path.dentry->d_inode);
	unsigned int rv = DEFAULT_POLLMASK;
	unsigned int (*poll)(struct file *, struct poll_table_struct *);

	FUNC2(&pde->pde_unload_lock);
	if (!pde->proc_fops) {
		FUNC3(&pde->pde_unload_lock);
		return rv;
	}
	pde->pde_users++;
	poll = pde->proc_fops->poll;
	FUNC3(&pde->pde_unload_lock);

	if (poll)
		rv = poll(file, pts);

	FUNC1(pde);
	return rv;
}