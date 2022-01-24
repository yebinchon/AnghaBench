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
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dst; } ;
struct rt6_info {TYPE_1__ u; struct net_device* rt6i_dev; } ;
struct net_device {int ifindex; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {struct ipv6_mc_socklist* ipv6_mc_list; } ;
struct ipv6_mc_socklist {int ifindex; struct ipv6_mc_socklist* next; int /*<<< orphan*/ * sflist; int /*<<< orphan*/  sflock; int /*<<< orphan*/  sfmode; int /*<<< orphan*/  addr; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MCAST_EXCLUDE ; 
 struct net_device* FUNC0 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ipv6_pinfo* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC7 (struct in6_addr const*) ; 
 int FUNC8 (struct net_device*,struct in6_addr const*) ; 
 int /*<<< orphan*/  ipv6_sk_mc_lock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct rt6_info* FUNC11 (struct net*,struct in6_addr const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct ipv6_mc_socklist*,int) ; 
 struct ipv6_mc_socklist* FUNC14 (struct sock*,int,int /*<<< orphan*/ ) ; 
 struct net* FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int FUNC18(struct sock *sk, int ifindex, const struct in6_addr *addr)
{
	struct net_device *dev = NULL;
	struct ipv6_mc_socklist *mc_lst;
	struct ipv6_pinfo *np = FUNC4(sk);
	struct net *net = FUNC15(sk);
	int err;

	if (!FUNC7(addr))
		return -EINVAL;

	FUNC9(&ipv6_sk_mc_lock);
	for (mc_lst=np->ipv6_mc_list; mc_lst; mc_lst=mc_lst->next) {
		if ((ifindex == 0 || mc_lst->ifindex == ifindex) &&
		    FUNC6(&mc_lst->addr, addr)) {
			FUNC10(&ipv6_sk_mc_lock);
			return -EADDRINUSE;
		}
	}
	FUNC10(&ipv6_sk_mc_lock);

	mc_lst = FUNC14(sk, sizeof(struct ipv6_mc_socklist), GFP_KERNEL);

	if (mc_lst == NULL)
		return -ENOMEM;

	mc_lst->next = NULL;
	FUNC5(&mc_lst->addr, addr);

	if (ifindex == 0) {
		struct rt6_info *rt;
		rt = FUNC11(net, addr, NULL, 0, 0);
		if (rt) {
			dev = rt->rt6i_dev;
			FUNC1(dev);
			FUNC3(&rt->u.dst);
		}
	} else
		dev = FUNC0(net, ifindex);

	if (dev == NULL) {
		FUNC13(sk, mc_lst, sizeof(*mc_lst));
		return -ENODEV;
	}

	mc_lst->ifindex = dev->ifindex;
	mc_lst->sfmode = MCAST_EXCLUDE;
	FUNC12(&mc_lst->sflock);
	mc_lst->sflist = NULL;

	/*
	 *	now add/increase the group membership on the device
	 */

	err = FUNC8(dev, addr);

	if (err) {
		FUNC13(sk, mc_lst, sizeof(*mc_lst));
		FUNC2(dev);
		return err;
	}

	FUNC16(&ipv6_sk_mc_lock);
	mc_lst->next = np->ipv6_mc_list;
	np->ipv6_mc_list = mc_lst;
	FUNC17(&ipv6_sk_mc_lock);

	FUNC2(dev);

	return 0;
}