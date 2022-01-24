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
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {int f_flags; int f_mode; TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int ATTR_CTIME ; 
 int ATTR_MTIME ; 
 int EBADF ; 
 int EINVAL ; 
 int EPERM ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  MAX_NON_LFS ; 
 int O_LARGEFILE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dentry*,int /*<<< orphan*/ ,int,struct file*) ; 
 struct file* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 int FUNC5 (struct inode*,struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static long FUNC9(unsigned int fd, loff_t length, int small)
{
	struct inode * inode;
	struct dentry *dentry;
	struct file * file;
	int error;

	error = -EINVAL;
	if (length < 0)
		goto out;
	error = -EBADF;
	file = FUNC3(fd);
	if (!file)
		goto out;

	/* explicitly opened as large or we are on 64-bit box */
	if (file->f_flags & O_LARGEFILE)
		small = 0;

	dentry = file->f_path.dentry;
	inode = dentry->d_inode;
	error = -EINVAL;
	if (!FUNC1(inode->i_mode) || !(file->f_mode & FMODE_WRITE))
		goto out_putf;

	error = -EINVAL;
	/* Cannot ftruncate over 2^31 bytes without large file support */
	if (small && length > MAX_NON_LFS)
		goto out_putf;

	error = -EPERM;
	if (FUNC0(inode))
		goto out_putf;

	FUNC7(inode->i_sb);
	error = FUNC5(inode, file, length);
	if (!error)
		error = FUNC8(&file->f_path, length,
					       ATTR_MTIME|ATTR_CTIME);
	if (!error)
		error = FUNC2(dentry, length, ATTR_MTIME|ATTR_CTIME, file);
	FUNC6(inode->i_sb);
out_putf:
	FUNC4(file);
out:
	return error;
}