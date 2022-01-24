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
struct sock_iocb {struct kiocb* kiocb; } ;
struct kiocb {struct sock_iocb* private; int /*<<< orphan*/  ki_dtor; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct kiocb*) ; 
 struct sock_iocb* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sock_aio_dtor ; 

__attribute__((used)) static struct sock_iocb *FUNC2(struct kiocb *iocb,
					 struct sock_iocb *siocb)
{
	if (!FUNC0(iocb)) {
		siocb = FUNC1(sizeof(*siocb), GFP_KERNEL);
		if (!siocb)
			return NULL;
		iocb->ki_dtor = sock_aio_dtor;
	}

	siocb->kiocb = iocb;
	iocb->private = siocb;
	return siocb;
}