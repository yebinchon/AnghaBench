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
struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int /*<<< orphan*/  FUNC0 (int,struct kiocb*,struct iovec const*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,struct kiocb*,struct iovec const*,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(int rw, struct kiocb *iocb,
			      const struct iovec *iov, loff_t offset,
			      unsigned long nr_segs)
{
	struct file *file = iocb->ki_filp;
	struct inode *inode = file->f_mapping->host;

	if (FUNC2(inode, EXT4_INODE_EXTENTS))
		return FUNC0(rw, iocb, iov, offset, nr_segs);

	return FUNC1(rw, iocb, iov, offset, nr_segs);
}