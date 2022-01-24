#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct inode {int dummy; } ;
struct fuse_conn {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct fuse_conn*,int /*<<< orphan*/ ,struct file*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct file*) ; 
 int FUNC2 (struct inode*,struct file*) ; 
 struct fuse_conn* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

int FUNC5(struct inode *inode, struct file *file, bool isdir)
{
	struct fuse_conn *fc = FUNC3(inode);
	int err;

	err = FUNC2(inode, file);
	if (err)
		return err;

	err = FUNC0(fc, FUNC4(inode), file, isdir);
	if (err)
		return err;

	FUNC1(inode, file);

	return 0;
}