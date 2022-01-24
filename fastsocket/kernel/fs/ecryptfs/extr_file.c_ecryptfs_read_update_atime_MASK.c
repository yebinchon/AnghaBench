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
struct vfsmount {int dummy; } ;
struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EIOCBQUEUED ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct vfsmount* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kiocb*,struct iovec const*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vfsmount*,struct dentry*) ; 
 int FUNC4 (struct kiocb*) ; 

__attribute__((used)) static ssize_t FUNC5(struct kiocb *iocb,
				const struct iovec *iov,
				unsigned long nr_segs, loff_t pos)
{
	int rc;
	struct dentry *lower_dentry;
	struct vfsmount *lower_vfsmount;
	struct file *file = iocb->ki_filp;

	rc = FUNC2(iocb, iov, nr_segs, pos);
	/*
	 * Even though this is a async interface, we need to wait
	 * for IO to finish to update atime
	 */
	if (-EIOCBQUEUED == rc)
		rc = FUNC4(iocb);
	if (rc >= 0) {
		lower_dentry = FUNC0(file->f_path.dentry);
		lower_vfsmount = FUNC1(file->f_path.dentry);
		FUNC3(lower_vfsmount, lower_dentry);
	}
	return rc;
}