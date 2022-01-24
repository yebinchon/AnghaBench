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
struct inode {int dummy; } ;
struct fuse_conn {scalar_t__ no_lock; } ;
struct file_lock {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int F_CANCELLK ; 
 int F_GETLK ; 
 int FUNC0 (struct file*,struct file_lock*) ; 
 int FUNC1 (struct file*,struct file_lock*,int /*<<< orphan*/ ) ; 
 struct fuse_conn* FUNC2 (struct inode*) ; 
 int FUNC3 (struct file*,struct file_lock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,struct file_lock*) ; 

__attribute__((used)) static int FUNC5(struct file *file, int cmd, struct file_lock *fl)
{
	struct inode *inode = file->f_path.dentry->d_inode;
	struct fuse_conn *fc = FUNC2(inode);
	int err;

	if (cmd == F_CANCELLK) {
		err = 0;
	} else if (cmd == F_GETLK) {
		if (fc->no_lock) {
			FUNC4(file, fl);
			err = 0;
		} else
			err = FUNC0(file, fl);
	} else {
		if (fc->no_lock)
			err = FUNC3(file, fl, NULL);
		else
			err = FUNC1(file, fl, 0);
	}
	return err;
}