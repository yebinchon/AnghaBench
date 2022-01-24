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
struct socket {int dummy; } ;
struct sock {int sk_protocol; int /*<<< orphan*/  sk_timer; int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_sndtimeo; int /*<<< orphan*/  sk_destruct; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  accept_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  L2CAP_CONN_TIMEOUT ; 
 int /*<<< orphan*/  PF_BLUETOOTH ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  l2cap_proto ; 
 int /*<<< orphan*/  l2cap_sk_list ; 
 int /*<<< orphan*/  l2cap_sock_destruct ; 
 int /*<<< orphan*/  l2cap_sock_timeout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 struct sock* FUNC5 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sock *FUNC8(struct net *net, struct socket *sock, int proto, gfp_t prio)
{
	struct sock *sk;

	sk = FUNC5(net, PF_BLUETOOTH, prio, &l2cap_proto);
	if (!sk)
		return NULL;

	FUNC6(sock, sk);
	FUNC0(&FUNC1(sk)->accept_q);

	sk->sk_destruct = l2cap_sock_destruct;
	sk->sk_sndtimeo = FUNC3(L2CAP_CONN_TIMEOUT);

	FUNC7(sk, SOCK_ZAPPED);

	sk->sk_protocol = proto;
	sk->sk_state = BT_OPEN;

	FUNC4(&sk->sk_timer, l2cap_sock_timeout, (unsigned long) sk);

	FUNC2(&l2cap_sk_list, sk);
	return sk;
}