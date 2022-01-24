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
struct file_lock {scalar_t__ fl_owner; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
typedef  scalar_t__ fl_owner_t ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int FUNC0 (struct file*,struct file_lock*) ; 
 int FUNC1 (struct file*,struct file_lock*,int) ; 
 struct fuse_conn* FUNC2 (struct inode*) ; 

__attribute__((used)) static int FUNC3(struct file *file, int cmd, struct file_lock *fl)
{
	struct inode *inode = file->f_path.dentry->d_inode;
	struct fuse_conn *fc = FUNC2(inode);
	int err;

	if (fc->no_lock) {
		err = FUNC0(file, fl);
	} else {
		/* emulate flock with POSIX locks */
		fl->fl_owner = (fl_owner_t) file;
		err = FUNC1(file, fl, 1);
	}

	return err;
}