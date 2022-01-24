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
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;
struct msghdr {scalar_t__ msg_namelen; } ;
struct kiocb {int dummy; } ;

/* Variables and functions */
 int ENOTCONN ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int FUNC0 (struct sock*) ; 
 int FUNC1 (struct kiocb*,struct socket*,struct msghdr*,size_t) ; 

__attribute__((used)) static int FUNC2(struct kiocb *kiocb, struct socket *sock,
				  struct msghdr *msg, size_t len)
{
	int err;
	struct sock *sk = sock->sk;

	err = FUNC0(sk);
	if (err)
		return err;

	if (sk->sk_state != TCP_ESTABLISHED)
		return -ENOTCONN;

	if (msg->msg_namelen)
		msg->msg_namelen = 0;

	return FUNC1(kiocb, sock, msg, len);
}