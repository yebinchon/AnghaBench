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
struct socket {int /*<<< orphan*/ * ops; } ;
struct sock {int sk_protocol; int /*<<< orphan*/  sk_destruct; } ;
struct mutex {int dummy; } ;
struct netlink_sock {int /*<<< orphan*/  wait; struct mutex* cb_mutex; struct mutex cb_def_mutex; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PF_NETLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mutex*) ; 
 int /*<<< orphan*/  netlink_ops ; 
 int /*<<< orphan*/  netlink_proto ; 
 int /*<<< orphan*/  netlink_sock_destruct ; 
 struct netlink_sock* FUNC2 (struct sock*) ; 
 struct sock* FUNC3 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,struct sock*) ; 

__attribute__((used)) static int FUNC5(struct net *net, struct socket *sock,
			    struct mutex *cb_mutex, int protocol)
{
	struct sock *sk;
	struct netlink_sock *nlk;

	sock->ops = &netlink_ops;

	sk = FUNC3(net, PF_NETLINK, GFP_KERNEL, &netlink_proto);
	if (!sk)
		return -ENOMEM;

	FUNC4(sock, sk);

	nlk = FUNC2(sk);
	if (cb_mutex)
		nlk->cb_mutex = cb_mutex;
	else {
		nlk->cb_mutex = &nlk->cb_def_mutex;
		FUNC1(nlk->cb_mutex);
	}
	FUNC0(&nlk->wait);

	sk->sk_destruct = netlink_sock_destruct;
	sk->sk_protocol = protocol;
	return 0;
}