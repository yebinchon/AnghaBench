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
struct sock_iocb {int /*<<< orphan*/  async_msg; } ;
struct kiocb {int /*<<< orphan*/  ki_filp; } ;
struct iovec {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ESPIPE ; 
 struct sock_iocb* FUNC0 (struct kiocb*,struct sock_iocb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct kiocb*,int /*<<< orphan*/ ,struct iovec const*,unsigned long) ; 

ssize_t FUNC2(struct kiocb *iocb, const struct iovec *iov,
			  unsigned long nr_segs, loff_t pos)
{
	struct sock_iocb siocb, *x;

	if (pos != 0)
		return -ESPIPE;

	x = FUNC0(iocb, &siocb);
	if (!x)
		return -ENOMEM;

	return FUNC1(&x->async_msg, iocb, iocb->ki_filp, iov, nr_segs);
}