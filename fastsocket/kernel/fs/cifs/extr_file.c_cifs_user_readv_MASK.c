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
struct kiocb {int /*<<< orphan*/  ki_pos; int /*<<< orphan*/  ki_filp; } ;
struct iovec {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct iovec const*,unsigned long,int /*<<< orphan*/ *) ; 

ssize_t FUNC1(struct kiocb *iocb, const struct iovec *iov,
			       unsigned long nr_segs, loff_t pos)
{
	ssize_t read;

	read = FUNC0(iocb->ki_filp, iov, nr_segs, &pos);
	if (read > 0)
		iocb->ki_pos = pos;

	return read;
}