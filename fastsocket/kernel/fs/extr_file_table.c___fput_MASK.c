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
struct vfsmount {int dummy; } ;
struct inode {int /*<<< orphan*/ * i_cdev; int /*<<< orphan*/  i_mode; } ;
struct TYPE_5__ {struct vfsmount* mnt; struct dentry* dentry; } ;
struct TYPE_4__ {int /*<<< orphan*/  pid; } ;
struct file {int f_flags; int f_mode; TYPE_2__ f_path; TYPE_1__ f_owner; TYPE_3__* f_op; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* release ) (struct inode*,struct file*) ;int /*<<< orphan*/  (* fasync ) (int,struct file*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FASYNC ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct file*) ; 
 int /*<<< orphan*/  FUNC9 (struct file*) ; 
 int /*<<< orphan*/  FUNC10 (struct file*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct file*) ; 
 int /*<<< orphan*/  FUNC15 (int,struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,struct file*) ; 
 scalar_t__ FUNC17 (int) ; 

void FUNC18(struct file *file)
{
	struct dentry *dentry = file->f_path.dentry;
	struct vfsmount *mnt = file->f_path.mnt;
	struct inode *inode = dentry->d_inode;

	FUNC11();

	FUNC8(file);
	/*
	 * The function eventpoll_release() should be the first called
	 * in the file cleanup chain.
	 */
	FUNC4(file);
	FUNC10(file);

	if (FUNC17(file->f_flags & FASYNC)) {
		if (file->f_op && file->f_op->fasync)
			file->f_op->fasync(-1, file, 0);
	}
	if (file->f_op && file->f_op->release)
		file->f_op->release(inode, file);
	FUNC14(file);
	FUNC9(file);
	if (FUNC17(FUNC0(inode->i_mode) && inode->i_cdev != NULL))
		FUNC1(inode->i_cdev);
	FUNC7(file->f_op);
	FUNC13(file->f_owner.pid);
	FUNC6(file);
	if (file->f_mode & FMODE_WRITE)
		FUNC3(file);
	file->f_path.dentry = NULL;
	file->f_path.mnt = NULL;
	FUNC5(file);
	FUNC2(dentry);
	FUNC12(mnt);
}