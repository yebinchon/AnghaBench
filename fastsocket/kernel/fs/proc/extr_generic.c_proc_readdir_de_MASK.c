#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct proc_dir_entry {char* name; int namelen; unsigned int low_ino; int mode; struct proc_dir_entry* next; struct proc_dir_entry* subdir; } ;
struct inode {unsigned int i_ino; } ;
struct TYPE_3__ {TYPE_2__* dentry; } ;
struct file {int f_pos; TYPE_1__ f_path; } ;
typedef  int /*<<< orphan*/  (* filldir_t ) (void*,char*,int,int,unsigned int,int) ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 int DT_DIR ; 
 int /*<<< orphan*/  FUNC0 (struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc_dir_entry*) ; 
 unsigned int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  proc_subdir_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct proc_dir_entry *de, struct file *filp, void *dirent,
		filldir_t filldir)
{
	unsigned int ino;
	int i;
	struct inode *inode = filp->f_path.dentry->d_inode;
	int ret = 0;

	ino = inode->i_ino;
	i = filp->f_pos;
	switch (i) {
		case 0:
			if (filldir(dirent, ".", 1, i, ino, DT_DIR) < 0)
				goto out;
			i++;
			filp->f_pos++;
			/* fall through */
		case 1:
			if (filldir(dirent, "..", 2, i,
				    FUNC2(filp->f_path.dentry),
				    DT_DIR) < 0)
				goto out;
			i++;
			filp->f_pos++;
			/* fall through */
		default:
			FUNC3(&proc_subdir_lock);
			de = de->subdir;
			i -= 2;
			for (;;) {
				if (!de) {
					ret = 1;
					FUNC4(&proc_subdir_lock);
					goto out;
				}
				if (!i)
					break;
				de = de->next;
				i--;
			}

			do {
				struct proc_dir_entry *next;

				/* filldir passes info to user space */
				FUNC0(de);
				FUNC4(&proc_subdir_lock);
				if (filldir(dirent, de->name, de->namelen, filp->f_pos,
					    de->low_ino, de->mode >> 12) < 0) {
					FUNC1(de);
					goto out;
				}
				FUNC3(&proc_subdir_lock);
				filp->f_pos++;
				next = de->next;
				FUNC1(de);
				de = next;
			} while (de);
			FUNC4(&proc_subdir_lock);
	}
	ret = 1;
out:
	return ret;	
}