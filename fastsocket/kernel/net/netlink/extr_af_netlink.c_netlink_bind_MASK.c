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
typedef  int /*<<< orphan*/  u32 ;
struct socket {struct sock* sk; } ;
struct sockaddr_nl {scalar_t__ nl_family; int nl_groups; scalar_t__ nl_pid; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct netlink_sock {scalar_t__ pid; int* groups; scalar_t__ subscriptions; } ;
struct net {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_NETLINK ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  NL_NONROOT_RECV ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sock*,struct net*,scalar_t__) ; 
 int FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,scalar_t__) ; 
 struct netlink_sock* FUNC9 (struct sock*) ; 
 struct net* FUNC10 (struct sock*) ; 

__attribute__((used)) static int FUNC11(struct socket *sock, struct sockaddr *addr,
			int addr_len)
{
	struct sock *sk = sock->sk;
	struct net *net = FUNC10(sk);
	struct netlink_sock *nlk = FUNC9(sk);
	struct sockaddr_nl *nladdr = (struct sockaddr_nl *)addr;
	int err;

	if (nladdr->nl_family != AF_NETLINK)
		return -EINVAL;

	/* Only superuser is allowed to listen multicasts */
	if (nladdr->nl_groups) {
		if (!FUNC2(sock, NL_NONROOT_RECV))
			return -EPERM;
		err = FUNC4(sk);
		if (err)
			return err;
	}

	if (nlk->pid) {
		if (nladdr->nl_pid != nlk->pid)
			return -EINVAL;
	} else {
		err = nladdr->nl_pid ?
			FUNC3(sk, net, nladdr->nl_pid) :
			FUNC1(sock);
		if (err)
			return err;
	}

	if (!nladdr->nl_groups && (nlk->groups == NULL || !(u32)nlk->groups[0]))
		return 0;

	FUNC5();
	FUNC8(sk, nlk->subscriptions +
					 FUNC0(nladdr->nl_groups) -
					 FUNC0(nlk->groups[0]));
	nlk->groups[0] = (nlk->groups[0] & ~0xffffffffUL) | nladdr->nl_groups;
	FUNC7(sk);
	FUNC6();

	return 0;
}