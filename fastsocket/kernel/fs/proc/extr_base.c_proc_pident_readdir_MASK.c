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
struct task_struct {int dummy; } ;
struct pid_entry {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {int f_pos; TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  ino_t ;
typedef  int /*<<< orphan*/  (* filldir_t ) (void*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  DT_DIR ; 
 int ENOENT ; 
 struct task_struct* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,void*,int /*<<< orphan*/  (*) (void*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ),struct task_struct*,struct pid_entry const*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static int FUNC4(struct file *filp,
		void *dirent, filldir_t filldir,
		const struct pid_entry *ents, unsigned int nents)
{
	int i;
	struct dentry *dentry = filp->f_path.dentry;
	struct inode *inode = dentry->d_inode;
	struct task_struct *task = FUNC0(inode);
	const struct pid_entry *p, *last;
	ino_t ino;
	int ret;

	ret = -ENOENT;
	if (!task)
		goto out_no_task;

	ret = 0;
	i = filp->f_pos;
	switch (i) {
	case 0:
		ino = inode->i_ino;
		if (filldir(dirent, ".", 1, i, ino, DT_DIR) < 0)
			goto out;
		i++;
		filp->f_pos++;
		/* fall through */
	case 1:
		ino = FUNC1(dentry);
		if (filldir(dirent, "..", 2, i, ino, DT_DIR) < 0)
			goto out;
		i++;
		filp->f_pos++;
		/* fall through */
	default:
		i -= 2;
		if (i >= nents) {
			ret = 1;
			goto out;
		}
		p = ents + i;
		last = &ents[nents - 1];
		while (p <= last) {
			if (FUNC2(filp, dirent, filldir, task, p) < 0)
				goto out;
			filp->f_pos++;
			p++;
		}
	}

	ret = 1;
out:
	FUNC3(task);
out_no_task:
	return ret;
}