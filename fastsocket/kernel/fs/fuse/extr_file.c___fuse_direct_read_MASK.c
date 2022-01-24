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
struct iovec {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_io_priv {struct file* file; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_io_priv*,struct iovec const*,unsigned long,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 

__attribute__((used)) static ssize_t FUNC3(struct fuse_io_priv *io,
				  const struct iovec *iov,
				  unsigned long nr_segs, loff_t *ppos,
				  size_t count)
{
	ssize_t res;
	struct file *file = io->file;
	struct inode *inode = file->f_path.dentry->d_inode;

	if (FUNC2(inode))
		return -EIO;

	res = FUNC0(io, iov, nr_segs, count, ppos, 0);

	FUNC1(inode);

	return res;
}