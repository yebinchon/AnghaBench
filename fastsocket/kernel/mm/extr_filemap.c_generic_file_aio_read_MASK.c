#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct kiocb {scalar_t__ ki_pos; struct file* ki_filp; } ;
struct iovec {size_t iov_len; scalar_t__ iov_base; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct address_space* f_mapping; } ;
struct address_space {TYPE_1__* a_ops; struct inode* host; } ;
typedef  size_t ssize_t ;
struct TYPE_6__ {scalar_t__ buf; } ;
struct TYPE_7__ {size_t error; scalar_t__ count; scalar_t__ written; TYPE_2__ arg; } ;
typedef  TYPE_3__ read_descriptor_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_5__ {size_t (* direct_IO ) (int /*<<< orphan*/ ,struct kiocb*,struct iovec const*,scalar_t__,unsigned long) ;} ;

/* Variables and functions */
 int O_DIRECT ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  VERIFY_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct file*,scalar_t__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  file_read_actor ; 
 size_t FUNC2 (struct address_space*,scalar_t__,scalar_t__) ; 
 size_t FUNC3 (struct iovec const*,unsigned long*,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct iovec const*,unsigned long) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,struct kiocb*,struct iovec const*,scalar_t__,unsigned long) ; 

ssize_t
FUNC7(struct kiocb *iocb, const struct iovec *iov,
		unsigned long nr_segs, loff_t pos)
{
	struct file *filp = iocb->ki_filp;
	ssize_t retval;
	unsigned long seg = 0;
	size_t count;
	loff_t *ppos = &iocb->ki_pos;

	count = 0;
	retval = FUNC3(iov, &nr_segs, &count, VERIFY_WRITE);
	if (retval)
		return retval;

	/* coalesce the iovecs and go direct-to-BIO for O_DIRECT */
	if (filp->f_flags & O_DIRECT) {
		loff_t size;
		struct address_space *mapping;
		struct inode *inode;

		mapping = filp->f_mapping;
		inode = mapping->host;
		if (!count)
			goto out; /* skip atime */
		size = FUNC4(inode);
		if (pos < size) {
			retval = FUNC2(mapping, pos,
					pos + FUNC5(iov, nr_segs) - 1);
			if (!retval) {
				retval = mapping->a_ops->direct_IO(READ, iocb,
							iov, pos, nr_segs);
			}
			if (retval > 0) {
				*ppos = pos + retval;
				count -= retval;
			}

			/*
			 * Btrfs can have a short DIO read if we encounter
			 * compressed extents, so if there was an error, or if
			 * we've already read everything we wanted to, or if
			 * there was a short read because we hit EOF, go ahead
			 * and return.  Otherwise fallthrough to buffered io for
			 * the rest of the read.
			 */
			if (retval < 0 || !count || *ppos >= size) {
				FUNC1(filp);
				goto out;
			}
		}
	}

	count = retval;
	for (seg = 0; seg < nr_segs; seg++) {
		read_descriptor_t desc;
		loff_t offset = 0;

		/*
		 * If we did a short DIO read we need to skip the section of the
		 * iov that we've already read data into.
		 */
		if (count) {
			if (count > iov[seg].iov_len) {
				count -= iov[seg].iov_len;
				continue;
			}
			offset = count;
			count = 0;
		}

		desc.written = 0;
		desc.arg.buf = iov[seg].iov_base + offset;
		desc.count = iov[seg].iov_len - offset;
		if (desc.count == 0)
			continue;
		desc.error = 0;
		FUNC0(filp, ppos, &desc, file_read_actor);
		retval += desc.written;
		if (desc.error) {
			retval = retval ?: desc.error;
			break;
		}
		if (desc.count > 0)
			break;
	}
out:
	return retval;
}