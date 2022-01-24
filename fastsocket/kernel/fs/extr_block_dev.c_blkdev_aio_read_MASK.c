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
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct kiocb*,struct iovec const*,unsigned long,scalar_t__) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 unsigned long FUNC2 (struct iovec*,unsigned long,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC3(struct kiocb *iocb, const struct iovec *iov,
			 unsigned long nr_segs, loff_t pos)
{
	struct file *file = iocb->ki_filp;
	struct inode *bd_inode = file->f_mapping->host;
	loff_t size = FUNC1(bd_inode);

	if (pos >= size)
		return 0;

	size -= pos;
	if (size < INT_MAX)
		nr_segs = FUNC2((struct iovec *)iov, nr_segs, size);
	return FUNC0(iocb, iov, nr_segs, pos);
}