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
struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {struct ipv6_ac_socklist* ipv6_ac_list; } ;
struct ipv6_ac_socklist {int acl_ifindex; int /*<<< orphan*/  acl_addr; struct ipv6_ac_socklist* acl_next; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct net_device* FUNC0 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct ipv6_pinfo* FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipv6_sk_ac_lock ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct ipv6_ac_socklist*,int) ; 
 struct net* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct sock *sk, int ifindex, struct in6_addr *addr)
{
	struct ipv6_pinfo *np = FUNC2(sk);
	struct net_device *dev;
	struct ipv6_ac_socklist *pac, *prev_pac;
	struct net *net = FUNC6(sk);

	FUNC7(&ipv6_sk_ac_lock);
	prev_pac = NULL;
	for (pac = np->ipv6_ac_list; pac; pac = pac->acl_next) {
		if ((ifindex == 0 || pac->acl_ifindex == ifindex) &&
		     FUNC3(&pac->acl_addr, addr))
			break;
		prev_pac = pac;
	}
	if (!pac) {
		FUNC8(&ipv6_sk_ac_lock);
		return -ENOENT;
	}
	if (prev_pac)
		prev_pac->acl_next = pac->acl_next;
	else
		np->ipv6_ac_list = pac->acl_next;

	FUNC8(&ipv6_sk_ac_lock);

	dev = FUNC0(net, pac->acl_ifindex);
	if (dev) {
		FUNC4(dev, &pac->acl_addr);
		FUNC1(dev);
	}
	FUNC5(sk, pac, sizeof(*pac));
	return 0;
}