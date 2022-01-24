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
struct kiocb {scalar_t__ ki_left; struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct TYPE_6__ {struct dentry* dentry; } ;
struct file {TYPE_3__ f_path; } ;
struct dentry {TYPE_2__* d_inode; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_4__ {unsigned long tv_sec; } ;
struct TYPE_5__ {unsigned long i_flags; TYPE_1__ i_atime; scalar_t__ i_size; } ;

/* Variables and functions */
 long FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,long,unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (struct kiocb*,struct iovec const*,unsigned long,scalar_t__) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct kiocb *iocb, const struct iovec *iov,
			unsigned long nr_segs, loff_t pos)
{
	struct file * file = iocb->ki_filp;
	struct dentry * dentry = file->f_path.dentry;
	ssize_t	status;

	FUNC2("file %s/%s, count=%lu@%lu\n", FUNC0(dentry),
		(unsigned long) iocb->ki_left, (unsigned long) pos);

	status = FUNC4(dentry);
	if (status) {
		FUNC1("%s/%s validation failed, error=%Zd\n",
			 FUNC0(dentry), status);
		goto out;
	}

	FUNC2("before read, size=%ld, flags=%x, atime=%ld\n",
		(long)dentry->d_inode->i_size,
		dentry->d_inode->i_flags, dentry->d_inode->i_atime.tv_sec);

	status = FUNC3(iocb, iov, nr_segs, pos);
out:
	return status;
}