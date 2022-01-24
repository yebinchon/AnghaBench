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
struct task_struct {int dummy; } ;
struct inode {unsigned int i_ino; } ;
struct files_struct {int dummy; } ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct file {unsigned int f_pos; TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  instantiate_t ;
typedef  int /*<<< orphan*/  (* filldir_t ) (void*,char*,int,int,unsigned int,int /*<<< orphan*/ ) ;
struct TYPE_4__ {unsigned int max_fds; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_DIR ; 
 int ENOENT ; 
 int PROC_NUMBUF ; 
 int /*<<< orphan*/  FUNC0 (struct files_struct*,unsigned int) ; 
 TYPE_2__* FUNC1 (struct files_struct*) ; 
 struct files_struct* FUNC2 (struct task_struct*) ; 
 struct task_struct* FUNC3 (struct inode*) ; 
 unsigned int FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,void*,int /*<<< orphan*/  (*) (void*,char*,int,int,unsigned int,int /*<<< orphan*/ ),char*,int,int /*<<< orphan*/ ,struct task_struct*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static int FUNC11(struct file * filp, void * dirent,
			      filldir_t filldir, instantiate_t instantiate)
{
	struct dentry *dentry = filp->f_path.dentry;
	struct inode *inode = dentry->d_inode;
	struct task_struct *p = FUNC3(inode);
	unsigned int fd, ino;
	int retval;
	struct files_struct * files;

	retval = -ENOENT;
	if (!p)
		goto out_no_task;
	retval = 0;

	fd = filp->f_pos;
	switch (fd) {
		case 0:
			if (filldir(dirent, ".", 1, 0, inode->i_ino, DT_DIR) < 0)
				goto out;
			filp->f_pos++;
		case 1:
			ino = FUNC4(dentry);
			if (filldir(dirent, "..", 2, 1, ino, DT_DIR) < 0)
				goto out;
			filp->f_pos++;
		default:
			files = FUNC2(p);
			if (!files)
				goto out;
			FUNC8();
			for (fd = filp->f_pos-2;
			     fd < FUNC1(files)->max_fds;
			     fd++, filp->f_pos++) {
				char name[PROC_NUMBUF];
				int len;

				if (!FUNC0(files, fd))
					continue;
				FUNC9();

				len = FUNC10(name, sizeof(name), "%d", fd);
				if (FUNC5(filp, dirent, filldir,
						    name, len, instantiate,
						    p, &fd) < 0) {
					FUNC8();
					break;
				}
				FUNC8();
			}
			FUNC9();
			FUNC6(files);
	}
out:
	FUNC7(p);
out_no_task:
	return retval;
}