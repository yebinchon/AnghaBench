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
struct kiocb {int dummy; } ;
struct iovec {int dummy; } ;
struct inode {int dummy; } ;
struct block_device {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  get_block_t ;
typedef  int /*<<< orphan*/  dio_submit_t ;
typedef  int /*<<< orphan*/  dio_iodone_t ;

/* Variables and functions */
 int DIO_LOCKING ; 
 int WRITE ; 
 scalar_t__ FUNC0 (int,struct kiocb*,struct inode*,struct block_device*,struct iovec const*,scalar_t__,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct iovec const*,unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__) ; 

__attribute__((used)) static inline ssize_t
FUNC5(int rw, struct kiocb *iocb, struct inode *inode,
	struct block_device *bdev, const struct iovec *iov, loff_t offset,
	unsigned long nr_segs, get_block_t get_block, dio_iodone_t end_io,
	dio_submit_t submit_io,	int flags)
{
	ssize_t retval;

	retval = FUNC0(rw, iocb, inode, bdev, iov,
			offset, nr_segs, get_block, end_io, submit_io, flags);
	/*
	 * In case of error extending write may have instantiated a few
	 * blocks outside i_size. Trim these off again for DIO_LOCKING.
	 * NOTE: DIO_NO_LOCK/DIO_OWN_LOCK callers have to handle this in
	 * their own manner. This is a further example of where the old
	 * truncate sequence is inadequate.
	 *
	 * NOTE: filesystems with their own locking have to handle this
	 * on their own.
	 */
	if (flags & DIO_LOCKING) {
		if (FUNC3((rw & WRITE) && retval < 0)) {
			loff_t isize = FUNC1(inode);
			loff_t end = offset + FUNC2(iov, nr_segs);

			if (end > isize)
				FUNC4(inode, isize);
		}
	}

	return retval;
}