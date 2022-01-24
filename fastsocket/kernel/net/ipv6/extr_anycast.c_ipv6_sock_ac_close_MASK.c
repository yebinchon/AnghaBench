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

/* Variables and functions */
 struct net_device* FUNC0 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct ipv6_pinfo* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipv6_sk_ac_lock ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct ipv6_ac_socklist*,int) ; 
 struct net* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct sock *sk)
{
	struct ipv6_pinfo *np = FUNC2(sk);
	struct net_device *dev = NULL;
	struct ipv6_ac_socklist *pac;
	struct net *net = FUNC5(sk);
	int	prev_index;

	FUNC6(&ipv6_sk_ac_lock);
	pac = np->ipv6_ac_list;
	np->ipv6_ac_list = NULL;
	FUNC7(&ipv6_sk_ac_lock);

	prev_index = 0;
	while (pac) {
		struct ipv6_ac_socklist *next = pac->acl_next;

		if (pac->acl_ifindex != prev_index) {
			if (dev)
				FUNC1(dev);
			dev = FUNC0(net, pac->acl_ifindex);
			prev_index = pac->acl_ifindex;
		}
		if (dev)
			FUNC3(dev, &pac->acl_addr);
		FUNC4(sk, pac, sizeof(*pac));
		pac = next;
	}
	if (dev)
		FUNC1(dev);
}