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
struct kiocb {size_t ki_left; size_t ki_nbytes; int /*<<< orphan*/  ki_pos; } ;
struct iovec {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  (* iov_fn_t ) (struct kiocb*,struct iovec const*,unsigned long,int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  EIOCBQUEUED ; 
 int /*<<< orphan*/  EIOCBRETRY ; 
 int /*<<< orphan*/  FUNC0 (struct kiocb*,struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC2 (struct kiocb*) ; 

ssize_t FUNC3(struct file *filp, const struct iovec *iov,
		unsigned long nr_segs, size_t len, loff_t *ppos, iov_fn_t fn)
{
	struct kiocb kiocb;
	ssize_t ret;

	FUNC0(&kiocb, filp);
	kiocb.ki_pos = *ppos;
	kiocb.ki_left = len;
	kiocb.ki_nbytes = len;

	for (;;) {
		ret = fn(&kiocb, iov, nr_segs, kiocb.ki_pos);
		if (ret != -EIOCBRETRY)
			break;
		FUNC1(&kiocb);
	}

	if (ret == -EIOCBQUEUED)
		ret = FUNC2(&kiocb);
	*ppos = kiocb.ki_pos;
	return ret;
}