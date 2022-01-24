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
struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct file {TYPE_2__* f_mapping; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_6__ {scalar_t__ mmu_private; } ;
struct TYPE_5__ {struct inode* host; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int WRITE ; 
 int /*<<< orphan*/  FUNC1 (int,struct kiocb*,struct inode*,int /*<<< orphan*/ ,struct iovec const*,scalar_t__,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fat_get_block ; 
 scalar_t__ FUNC2 (struct iovec const*,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC3(int rw, struct kiocb *iocb,
			     const struct iovec *iov,
			     loff_t offset, unsigned long nr_segs)
{
	struct file *file = iocb->ki_filp;
	struct inode *inode = file->f_mapping->host;

	if (rw == WRITE) {
		/*
		 * FIXME: blockdev_direct_IO() doesn't use ->write_begin(),
		 * so we need to update the ->mmu_private to block boundary.
		 *
		 * But we must fill the remaining area or hole by nul for
		 * updating ->mmu_private.
		 *
		 * Return 0, and fallback to normal buffered write.
		 */
		loff_t size = offset + FUNC2(iov, nr_segs);
		if (FUNC0(inode)->mmu_private < size)
			return 0;
	}

	/*
	 * FAT need to use the DIO_LOCKING for avoiding the race
	 * condition of fat_get_block() and ->truncate().
	 */
	return FUNC1(rw, iocb, inode, inode->i_sb->s_bdev, iov,
				  offset, nr_segs, fat_get_block, NULL);
}