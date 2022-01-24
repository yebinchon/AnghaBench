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
struct sock {int /*<<< orphan*/  sk_data_ready; } ;
struct netlink_sock {void (* netlink_rcv ) (struct sk_buff*) ;int /*<<< orphan*/  flags; } ;
struct net {int dummy; } ;
struct mutex {int dummy; } ;
struct module {int dummy; } ;
struct listeners_rcu_head {int dummy; } ;
struct TYPE_2__ {int registered; unsigned int groups; unsigned long* listeners; struct module* module; struct mutex* cb_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_LINKS ; 
 int /*<<< orphan*/  NETLINK_KERNEL_SOCKET ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  PF_NETLINK ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct socket*,struct mutex*,int) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*) ; 
 unsigned long* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netlink_data_ready ; 
 scalar_t__ FUNC5 (struct sock*,struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_1__* nl_table ; 
 struct netlink_sock* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct net*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct socket**) ; 
 int /*<<< orphan*/  FUNC12 (struct socket*) ; 

struct sock *
FUNC13(struct net *net, int unit, unsigned int groups,
		      void (*input)(struct sk_buff *skb),
		      struct mutex *cb_mutex, struct module *module)
{
	struct socket *sock;
	struct sock *sk;
	struct netlink_sock *nlk;
	unsigned long *listeners = NULL;

	FUNC0(!nl_table);

	if (unit < 0 || unit >= MAX_LINKS)
		return NULL;

	if (FUNC11(PF_NETLINK, SOCK_DGRAM, unit, &sock))
		return NULL;

	/*
	 * We have to just have a reference on the net from sk, but don't
	 * get_net it. Besides, we cannot get and then put the net here.
	 * So we create one inside init_net and the move it to net.
	 */

	if (FUNC2(&init_net, sock, cb_mutex, unit) < 0)
		goto out_sock_release_nosk;

	sk = sock->sk;
	FUNC10(sk, net);

	if (groups < 32)
		groups = 32;

	listeners = FUNC4(FUNC1(groups) + sizeof(struct listeners_rcu_head),
			    GFP_KERNEL);
	if (!listeners)
		goto out_sock_release;

	sk->sk_data_ready = netlink_data_ready;
	if (input)
		FUNC9(sk)->netlink_rcv = input;

	if (FUNC5(sk, net, 0))
		goto out_sock_release;

	nlk = FUNC9(sk);
	nlk->flags |= NETLINK_KERNEL_SOCKET;

	FUNC7();
	if (!nl_table[unit].registered) {
		nl_table[unit].groups = groups;
		nl_table[unit].listeners = listeners;
		nl_table[unit].cb_mutex = cb_mutex;
		nl_table[unit].module = module;
		nl_table[unit].registered = 1;
	} else {
		FUNC3(listeners);
		nl_table[unit].registered++;
	}
	FUNC8();
	return sk;

out_sock_release:
	FUNC3(listeners);
	FUNC6(sk);
	return NULL;

out_sock_release_nosk:
	FUNC12(sock);
	return NULL;
}