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
struct sock {int sk_userlocks; void* sk_rcvbuf; void* sk_sndbuf; } ;

/* Variables and functions */
 void* RDS_TCP_DEFAULT_BUFSIZE ; 
 int SOCK_RCVBUF_LOCK ; 
 int SOCK_SNDBUF_LOCK ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

void FUNC3(struct socket *sock)
{
	struct sock *sk = sock->sk;

	FUNC1(sock);

	/*
	 * We're trying to saturate gigabit with the default,
	 * see svc_sock_setbufsize().
	 */
	FUNC0(sk);
	sk->sk_sndbuf = RDS_TCP_DEFAULT_BUFSIZE;
	sk->sk_rcvbuf = RDS_TCP_DEFAULT_BUFSIZE;
	sk->sk_userlocks |= SOCK_SNDBUF_LOCK|SOCK_RCVBUF_LOCK;
	FUNC2(sk);
}