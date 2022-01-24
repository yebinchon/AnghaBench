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
struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {scalar_t__ i_size; scalar_t__ i_nlink; TYPE_2__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
struct ext3_inode_info {scalar_t__ i_disksize; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {int /*<<< orphan*/  s_bdev; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int ENOSPC ; 
 struct ext3_inode_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int WRITE ; 
 int FUNC3 (int,struct kiocb*,struct inode*,int /*<<< orphan*/ ,struct iovec const*,scalar_t__,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ext3_get_block ; 
 int /*<<< orphan*/ * FUNC4 (struct inode*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,scalar_t__) ; 
 size_t FUNC11 (struct iovec const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,scalar_t__,size_t,int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,scalar_t__,size_t,int,int) ; 

__attribute__((used)) static ssize_t FUNC14(int rw, struct kiocb *iocb,
			const struct iovec *iov, loff_t offset,
			unsigned long nr_segs)
{
	struct file *file = iocb->ki_filp;
	struct inode *inode = file->f_mapping->host;
	struct ext3_inode_info *ei = FUNC0(inode);
	handle_t *handle;
	ssize_t ret;
	int orphan = 0;
	size_t count = FUNC11(iov, nr_segs);
	int retries = 0;

	FUNC12(inode, offset, FUNC11(iov, nr_segs), rw);

	if (rw == WRITE) {
		loff_t final_size = offset + count;

		if (final_size > inode->i_size) {
			/* Credits for sb + inode write */
			handle = FUNC4(inode, 2);
			if (FUNC1(handle)) {
				ret = FUNC2(handle);
				goto out;
			}
			ret = FUNC7(handle, inode);
			if (ret) {
				FUNC5(handle);
				goto out;
			}
			orphan = 1;
			ei->i_disksize = inode->i_size;
			FUNC5(handle);
		}
	}

retry:
	ret = FUNC3(rw, iocb, inode, inode->i_sb->s_bdev, iov,
				 offset, nr_segs,
				 ext3_get_block, NULL);
	if (ret == -ENOSPC && FUNC9(inode->i_sb, &retries))
		goto retry;

	if (orphan) {
		int err;

		/* Credits for sb + inode write */
		handle = FUNC4(inode, 2);
		if (FUNC1(handle)) {
			/* This is really bad luck. We've written the data
			 * but cannot extend i_size. Bail out and pretend
			 * the write failed... */
			ret = FUNC2(handle);
			goto out;
		}
		if (inode->i_nlink)
			FUNC8(handle, inode);
		if (ret > 0) {
			loff_t end = offset + ret;
			if (end > inode->i_size) {
				ei->i_disksize = end;
				FUNC10(inode, end);
				/*
				 * We're going to return a positive `ret'
				 * here due to non-zero-length I/O, so there's
				 * no way of reporting error returns from
				 * ext3_mark_inode_dirty() to userspace.  So
				 * ignore it.
				 */
				FUNC6(handle, inode);
			}
		}
		err = FUNC5(handle);
		if (ret == 0)
			ret = err;
	}
out:
	FUNC13(inode, offset,
				FUNC11(iov, nr_segs), rw, ret);
	return ret;
}