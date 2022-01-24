#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct kiocb {TYPE_4__* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_3__ d_name; TYPE_2__* d_parent; struct inode* d_inode; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_10__ {struct dentry* dentry; } ;
struct TYPE_9__ {int f_flags; int /*<<< orphan*/  f_mapping; TYPE_5__ f_path; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSIOS_NORMALREADBYTES ; 
 int O_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (struct kiocb*,struct iovec const*,unsigned long,scalar_t__) ; 
 size_t FUNC2 (struct iovec const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC4 (struct kiocb*,struct iovec const*,unsigned long,scalar_t__) ; 
 scalar_t__ FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC6(struct kiocb *iocb, const struct iovec *iov,
		unsigned long nr_segs, loff_t pos)
{
	struct dentry * dentry = iocb->ki_filp->f_path.dentry;
	struct inode * inode = dentry->d_inode;
	ssize_t result;
	size_t count = FUNC2(iov, nr_segs);

	if (iocb->ki_filp->f_flags & O_DIRECT)
		return FUNC4(iocb, iov, nr_segs, pos);

	FUNC0("NFS: read(%s/%s, %lu@%lu)\n",
		dentry->d_parent->d_name.name, dentry->d_name.name,
		(unsigned long) count, (unsigned long) pos);

	result = FUNC5(inode, iocb->ki_filp->f_mapping);
	FUNC3(inode, NFSIOS_NORMALREADBYTES, count);
	if (!result)
		result = FUNC1(iocb, iov, nr_segs, pos);
	return result;
}