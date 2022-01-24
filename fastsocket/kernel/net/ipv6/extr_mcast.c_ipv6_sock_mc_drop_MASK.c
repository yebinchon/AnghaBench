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
struct ipv6_mc_socklist {int ifindex; int /*<<< orphan*/  addr; struct ipv6_mc_socklist* next; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (struct inet6_dev*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct inet6_dev* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct inet6_dev*) ; 
 struct ipv6_pinfo* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct ipv6_mc_socklist*,struct inet6_dev*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 int /*<<< orphan*/  ipv6_sk_mc_lock ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct ipv6_mc_socklist*,int) ; 
 struct net* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct sock *sk, int ifindex, const struct in6_addr *addr)
{
	struct ipv6_pinfo *np = FUNC5(sk);
	struct ipv6_mc_socklist *mc_lst, **lnk;
	struct net *net = FUNC9(sk);

	FUNC10(&ipv6_sk_mc_lock);
	for (lnk = &np->ipv6_mc_list; (mc_lst = *lnk) !=NULL ; lnk = &mc_lst->next) {
		if ((ifindex == 0 || mc_lst->ifindex == ifindex) &&
		    FUNC7(&mc_lst->addr, addr)) {
			struct net_device *dev;

			*lnk = mc_lst->next;
			FUNC11(&ipv6_sk_mc_lock);

			dev = FUNC1(net, mc_lst->ifindex);
			if (dev != NULL) {
				struct inet6_dev *idev = FUNC3(dev);

				(void) FUNC6(sk, mc_lst, idev);
				if (idev) {
					FUNC0(idev, &mc_lst->addr);
					FUNC4(idev);
				}
				FUNC2(dev);
			} else
				(void) FUNC6(sk, mc_lst, NULL);
			FUNC8(sk, mc_lst, sizeof(*mc_lst));
			return 0;
		}
	}
	FUNC11(&ipv6_sk_mc_lock);

	return -EADDRNOTAVAIL;
}