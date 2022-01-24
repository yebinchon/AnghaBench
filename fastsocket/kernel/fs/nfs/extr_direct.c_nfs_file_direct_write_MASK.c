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
struct kiocb {scalar_t__ ki_pos; struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_10__ {TYPE_4__* dentry; } ;
struct file {TYPE_5__ f_path; struct address_space* f_mapping; } ;
struct address_space {struct inode* host; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FILE ; 
 int /*<<< orphan*/  NFSIOS_DIRECTWRITTENBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,long long) ; 
 int FUNC1 (struct file*,scalar_t__*,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__) ; 
 size_t FUNC4 (struct iovec const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC6 (struct kiocb*,struct iovec const*,unsigned long,scalar_t__,size_t) ; 
 int FUNC7 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

ssize_t FUNC10(struct kiocb *iocb, const struct iovec *iov,
				unsigned long nr_segs, loff_t pos)
{
	ssize_t retval = -EINVAL;
	struct file *file = iocb->ki_filp;
	struct address_space *mapping = file->f_mapping;
	size_t count;

	count = FUNC4(iov, nr_segs);
	FUNC5(mapping->host, NFSIOS_DIRECTWRITTENBYTES, count);

	FUNC0(FILE, "NFS: direct write(%s/%s, %zd@%Ld)\n",
		file->f_path.dentry->d_parent->d_name.name,
		file->f_path.dentry->d_name.name,
		count, (long long) pos);

	retval = FUNC1(file, &pos, &count, 0);
	if (retval)
		goto out;

	retval = -EINVAL;
	if ((ssize_t) count < 0)
		goto out;
	retval = 0;
	if (!count)
		goto out;

	retval = FUNC7(mapping);
	if (retval)
		goto out;

	retval = FUNC6(iocb, iov, nr_segs, pos, count);
	if (retval > 0) {
		struct inode *inode = mapping->host;

		iocb->ki_pos = pos + retval;
		FUNC8(&inode->i_lock);
		if (FUNC2(inode) < iocb->ki_pos)
			FUNC3(inode, iocb->ki_pos);
		FUNC9(&inode->i_lock);
	}
out:
	return retval;
}