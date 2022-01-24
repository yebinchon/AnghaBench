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
struct socket {int dummy; } ;
struct sock_iocb {int dummy; } ;
struct msghdr {int dummy; } ;
struct kiocb {struct sock_iocb* private; } ;

/* Variables and functions */
 int EIOCBQUEUED ; 
 int FUNC0 (struct kiocb*,struct socket*,struct msghdr*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct kiocb*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct kiocb*) ; 

int FUNC3(struct socket *sock, struct msghdr *msg, size_t size)
{
	struct kiocb iocb;
	struct sock_iocb siocb;
	int ret;

	FUNC1(&iocb, NULL);
	iocb.private = &siocb;
	ret = FUNC0(&iocb, sock, msg, size);
	if (-EIOCBQUEUED == ret)
		ret = FUNC2(&iocb);
	return ret;
}