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
struct kiocb {size_t ki_cur_seg; size_t ki_nr_segs; scalar_t__ ki_left; struct iovec* ki_iovec; } ;
struct iovec {scalar_t__ iov_len; int /*<<< orphan*/  iov_base; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct kiocb *iocb, ssize_t ret)
{
	struct iovec *iov = &iocb->ki_iovec[iocb->ki_cur_seg];

	FUNC0(ret <= 0);

	while (iocb->ki_cur_seg < iocb->ki_nr_segs && ret > 0) {
		ssize_t this = FUNC1((ssize_t)iov->iov_len, ret);
		iov->iov_base += this;
		iov->iov_len -= this;
		iocb->ki_left -= this;
		ret -= this;
		if (iov->iov_len == 0) {
			iocb->ki_cur_seg++;
			iov++;
		}
	}

	/* the caller should not have done more io than what fit in
	 * the remaining iovecs */
	FUNC0(ret > 0 && iocb->ki_left == 0);
}