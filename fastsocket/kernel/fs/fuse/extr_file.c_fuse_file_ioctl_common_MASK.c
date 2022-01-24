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
struct inode {int dummy; } ;
struct fuse_conn {int dummy; } ;
struct file {TYPE_1__* f_dentry; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 long EACCES ; 
 long EIO ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_conn*) ; 
 long FUNC1 (struct file*,unsigned int,unsigned long,unsigned int) ; 
 struct fuse_conn* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 

__attribute__((used)) static long FUNC4(struct file *file, unsigned int cmd,
				   unsigned long arg, unsigned int flags)
{
	struct inode *inode = file->f_dentry->d_inode;
	struct fuse_conn *fc = FUNC2(inode);

	if (!FUNC0(fc))
		return -EACCES;

	if (FUNC3(inode))
		return -EIO;

	return FUNC1(file, cmd, arg, flags);
}