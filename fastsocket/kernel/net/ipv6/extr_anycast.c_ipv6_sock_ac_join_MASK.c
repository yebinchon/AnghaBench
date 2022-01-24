#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  dst; } ;
struct rt6_info {TYPE_3__ u; struct net_device* rt6i_dev; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct TYPE_6__ {TYPE_1__* devconf_all; } ;
struct net {TYPE_2__ ipv6; } ;
struct ipv6_pinfo {struct ipv6_ac_socklist* ipv6_ac_list; } ;
struct ipv6_ac_socklist {struct ipv6_ac_socklist* acl_next; int /*<<< orphan*/  acl_ifindex; int /*<<< orphan*/  acl_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  forwarding; } ;
struct inet6_dev {TYPE_4__ cnf; } ;
struct in6_addr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  forwarding; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IFF_LOOPBACK ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (struct net*,int,int) ; 
 struct net_device* FUNC2 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct inet6_dev* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct inet6_dev*) ; 
 struct ipv6_pinfo* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 scalar_t__ FUNC10 (struct in6_addr*) ; 
 scalar_t__ FUNC11 (struct net*,struct in6_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct in6_addr*,struct net_device*) ; 
 int FUNC13 (struct net_device*,struct in6_addr*) ; 
 int /*<<< orphan*/  ipv6_sk_ac_lock ; 
 struct rt6_info* FUNC14 (struct net*,struct in6_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,struct ipv6_ac_socklist*,int) ; 
 struct ipv6_ac_socklist* FUNC16 (struct sock*,int,int /*<<< orphan*/ ) ; 
 struct net* FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

int FUNC20(struct sock *sk, int ifindex, struct in6_addr *addr)
{
	struct ipv6_pinfo *np = FUNC8(sk);
	struct net_device *dev = NULL;
	struct inet6_dev *idev;
	struct ipv6_ac_socklist *pac;
	struct net *net = FUNC17(sk);
	int	ishost = !net->ipv6.devconf_all->forwarding;
	int	err = 0;

	if (!FUNC0(CAP_NET_ADMIN))
		return -EPERM;
	if (FUNC10(addr))
		return -EINVAL;
	if (FUNC11(net, addr, NULL, 0))
		return -EINVAL;

	pac = FUNC16(sk, sizeof(struct ipv6_ac_socklist), GFP_KERNEL);
	if (pac == NULL)
		return -ENOMEM;
	pac->acl_next = NULL;
	FUNC9(&pac->acl_addr, addr);

	if (ifindex == 0) {
		struct rt6_info *rt;

		rt = FUNC14(net, addr, NULL, 0, 0);
		if (rt) {
			dev = rt->rt6i_dev;
			FUNC3(dev);
			FUNC5(&rt->u.dst);
		} else if (ishost) {
			err = -EADDRNOTAVAIL;
			goto out_free_pac;
		} else {
			/* router, no matching interface: just pick one */

			dev = FUNC1(net, IFF_UP, IFF_UP|IFF_LOOPBACK);
		}
	} else
		dev = FUNC2(net, ifindex);

	if (dev == NULL) {
		err = -ENODEV;
		goto out_free_pac;
	}

	idev = FUNC6(dev);
	if (!idev) {
		if (ifindex)
			err = -ENODEV;
		else
			err = -EADDRNOTAVAIL;
		goto out_dev_put;
	}
	/* reset ishost, now that we have a specific device */
	ishost = !idev->cnf.forwarding;
	FUNC7(idev);

	pac->acl_ifindex = dev->ifindex;

	/* XXX
	 * For hosts, allow link-local or matching prefix anycasts.
	 * This obviates the need for propagating anycast routes while
	 * still allowing some non-router anycast participation.
	 */
	if (!FUNC12(addr, dev)) {
		if (ishost)
			err = -EADDRNOTAVAIL;
		if (err)
			goto out_dev_put;
	}

	err = FUNC13(dev, addr);
	if (err)
		goto out_dev_put;

	FUNC18(&ipv6_sk_ac_lock);
	pac->acl_next = np->ipv6_ac_list;
	np->ipv6_ac_list = pac;
	FUNC19(&ipv6_sk_ac_lock);

	FUNC4(dev);

	return 0;

out_dev_put:
	FUNC4(dev);
out_free_pac:
	FUNC15(sk, pac, sizeof(*pac));
	return err;
}