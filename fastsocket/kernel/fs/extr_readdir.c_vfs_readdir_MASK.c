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
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_3__* f_op; TYPE_2__ f_path; } ;
typedef  int /*<<< orphan*/  filldir_t ;
struct TYPE_6__ {int (* readdir ) (struct file*,void*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  MAY_READ ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct file*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct file*,void*,int /*<<< orphan*/ ) ; 

int FUNC6(struct file *file, filldir_t filler, void *buf)
{
	struct inode *inode = file->f_path.dentry->d_inode;
	int res = -ENOTDIR;
	if (!file->f_op || !file->f_op->readdir)
		goto out;

	res = FUNC4(file, MAY_READ);
	if (res)
		goto out;

	res = FUNC2(&inode->i_mutex);
	if (res)
		goto out;

	res = -ENOENT;
	if (!FUNC0(inode)) {
		res = file->f_op->readdir(file, buf, filler);
		FUNC1(file);
	}
	FUNC3(&inode->i_mutex);
out:
	return res;
}