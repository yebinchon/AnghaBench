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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ifinfomsg {scalar_t__ ifi_index; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 size_t IFLA_IFNAME ; 
 int /*<<< orphan*/  IFLA_MAX ; 
 int IFNAMSIZ ; 
 struct net_device* FUNC0 (struct net*,scalar_t__) ; 
 struct net_device* FUNC1 (struct net*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,struct ifinfomsg*,struct nlattr**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifla_policy ; 
 int /*<<< orphan*/  FUNC4 (char*,struct nlattr*,int) ; 
 struct ifinfomsg* FUNC5 (struct nlmsghdr*) ; 
 int FUNC6 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct net_device*,struct nlattr**) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
	struct net *net = FUNC7(skb->sk);
	struct ifinfomsg *ifm;
	struct net_device *dev;
	int err;
	struct nlattr *tb[IFLA_MAX+1];
	char ifname[IFNAMSIZ];

	err = FUNC6(nlh, sizeof(*ifm), tb, IFLA_MAX, ifla_policy);
	if (err < 0)
		goto errout;

	if (tb[IFLA_IFNAME])
		FUNC4(ifname, tb[IFLA_IFNAME], IFNAMSIZ);
	else
		ifname[0] = '\0';

	err = -EINVAL;
	ifm = FUNC5(nlh);
	if (ifm->ifi_index > 0)
		dev = FUNC0(net, ifm->ifi_index);
	else if (tb[IFLA_IFNAME])
		dev = FUNC1(net, ifname);
	else
		goto errout;

	if (dev == NULL) {
		err = -ENODEV;
		goto errout;
	}

	if ((err = FUNC8(dev, tb)) < 0)
		goto errout_dev;

	err = FUNC3(dev, ifm, tb, ifname, 0);
errout_dev:
	FUNC2(dev);
errout:
	return err;
}