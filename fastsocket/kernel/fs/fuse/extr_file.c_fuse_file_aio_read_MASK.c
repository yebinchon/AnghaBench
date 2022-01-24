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
struct kiocb {TYPE_2__* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_conn {scalar_t__ auto_inval_data; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_4__ {TYPE_1__* f_mapping; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int FUNC0 (struct inode*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct kiocb*,struct iovec const*,unsigned long,scalar_t__) ; 
 struct fuse_conn* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct iovec const*,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC5(struct kiocb *iocb, const struct iovec *iov,
				  unsigned long nr_segs, loff_t pos)
{
	struct inode *inode = iocb->ki_filp->f_mapping->host;
	struct fuse_conn *fc = FUNC2(inode);

	/*
	 * In auto invalidate mode, always update attributes on read.
	 * Otherwise, only update if we attempt to read past EOF (to ensure
	 * i_size is up to date).
	 */
	if (fc->auto_inval_data ||
	    (pos + FUNC4(iov, nr_segs) > FUNC3(inode))) {
		int err;
		err = FUNC0(inode, NULL, iocb->ki_filp, NULL);
		if (err)
			return err;
	}

	return FUNC1(iocb, iov, nr_segs, pos);
}