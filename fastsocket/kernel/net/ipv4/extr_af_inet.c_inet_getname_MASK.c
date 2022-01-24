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
struct socket {struct sock* sk; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_zero; TYPE_1__ sin_addr; scalar_t__ sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; } ;
struct inet_sock {scalar_t__ sport; scalar_t__ saddr; scalar_t__ rcv_saddr; scalar_t__ daddr; scalar_t__ dport; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int ENOTCONN ; 
 int TCPF_CLOSE ; 
 int TCPF_SYN_SENT ; 
 struct inet_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct socket *sock, struct sockaddr *uaddr,
			int *uaddr_len, int peer)
{
	struct sock *sk		= sock->sk;
	struct inet_sock *inet	= FUNC0(sk);
	struct sockaddr_in *sin	= (struct sockaddr_in *)uaddr;

	sin->sin_family = AF_INET;
	if (peer) {
		if (!inet->dport ||
		    (((1 << sk->sk_state) & (TCPF_CLOSE | TCPF_SYN_SENT)) &&
		     peer == 1))
			return -ENOTCONN;
		sin->sin_port = inet->dport;
		sin->sin_addr.s_addr = inet->daddr;
	} else {
		__be32 addr = inet->rcv_saddr;
		if (!addr)
			addr = inet->saddr;
		sin->sin_port = inet->sport;
		sin->sin_addr.s_addr = addr;
	}
	FUNC1(sin->sin_zero, 0, sizeof(sin->sin_zero));
	*uaddr_len = sizeof(*sin);
	return 0;
}