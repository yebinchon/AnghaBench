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
struct ipv6_pinfo {struct ipv6_mc_socklist* ipv6_mc_list; } ;
struct ipv6_mc_socklist {int /*<<< orphan*/  addr; int /*<<< orphan*/  ifindex; struct ipv6_mc_socklist* next; } ;
struct inet6_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inet6_dev*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct inet6_dev* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct inet6_dev*) ; 
 struct ipv6_pinfo* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct ipv6_mc_socklist*,struct inet6_dev*) ; 
 int /*<<< orphan*/  ipv6_sk_mc_lock ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct ipv6_mc_socklist*,int) ; 
 struct net* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct sock *sk)
{
	struct ipv6_pinfo *np = FUNC5(sk);
	struct ipv6_mc_socklist *mc_lst;
	struct net *net = FUNC8(sk);

	FUNC9(&ipv6_sk_mc_lock);
	while ((mc_lst = np->ipv6_mc_list) != NULL) {
		struct net_device *dev;

		np->ipv6_mc_list = mc_lst->next;
		FUNC10(&ipv6_sk_mc_lock);

		dev = FUNC1(net, mc_lst->ifindex);
		if (dev) {
			struct inet6_dev *idev = FUNC3(dev);

			(void) FUNC6(sk, mc_lst, idev);
			if (idev) {
				FUNC0(idev, &mc_lst->addr);
				FUNC4(idev);
			}
			FUNC2(dev);
		} else
			(void) FUNC6(sk, mc_lst, NULL);

		FUNC7(sk, mc_lst, sizeof(*mc_lst));

		FUNC9(&ipv6_sk_mc_lock);
	}
	FUNC10(&ipv6_sk_mc_lock);
}