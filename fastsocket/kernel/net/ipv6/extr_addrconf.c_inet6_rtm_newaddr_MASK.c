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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct inet6_ifaddr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifaddrmsg {int ifa_flags; int /*<<< orphan*/  ifa_prefixlen; int /*<<< orphan*/  ifa_index; } ;
struct ifa_cacheinfo {int /*<<< orphan*/  ifa_prefered; int /*<<< orphan*/  ifa_valid; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENODEV ; 
 size_t IFA_ADDRESS ; 
 size_t IFA_CACHEINFO ; 
 int IFA_F_HOMEADDRESS ; 
 int IFA_F_NODAD ; 
 size_t IFA_LOCAL ; 
 int /*<<< orphan*/  IFA_MAX ; 
 int /*<<< orphan*/  INFINITY_LIFE_TIME ; 
 int NLM_F_EXCL ; 
 int NLM_F_REPLACE ; 
 struct net_device* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 struct in6_addr* FUNC1 (struct nlattr*,struct nlattr*) ; 
 int /*<<< orphan*/  ifa_ipv6_policy ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_ifaddr*) ; 
 int FUNC3 (struct net*,int /*<<< orphan*/ ,struct in6_addr*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inet6_ifaddr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet6_ifaddr* FUNC5 (struct net*,struct in6_addr*,struct net_device*,int) ; 
 struct ifa_cacheinfo* FUNC6 (struct nlattr*) ; 
 struct ifaddrmsg* FUNC7 (struct nlmsghdr*) ; 
 int FUNC8 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
	struct net *net = FUNC9(skb->sk);
	struct ifaddrmsg *ifm;
	struct nlattr *tb[IFA_MAX+1];
	struct in6_addr *pfx;
	struct inet6_ifaddr *ifa;
	struct net_device *dev;
	u32 valid_lft = INFINITY_LIFE_TIME, preferred_lft = INFINITY_LIFE_TIME;
	u8 ifa_flags;
	int err;

	err = FUNC8(nlh, sizeof(*ifm), tb, IFA_MAX, ifa_ipv6_policy);
	if (err < 0)
		return err;

	ifm = FUNC7(nlh);
	pfx = FUNC1(tb[IFA_ADDRESS], tb[IFA_LOCAL]);
	if (pfx == NULL)
		return -EINVAL;

	if (tb[IFA_CACHEINFO]) {
		struct ifa_cacheinfo *ci;

		ci = FUNC6(tb[IFA_CACHEINFO]);
		valid_lft = ci->ifa_valid;
		preferred_lft = ci->ifa_prefered;
	} else {
		preferred_lft = INFINITY_LIFE_TIME;
		valid_lft = INFINITY_LIFE_TIME;
	}

	dev =  FUNC0(net, ifm->ifa_index);
	if (dev == NULL)
		return -ENODEV;

	/* We ignore other flags so far. */
	ifa_flags = ifm->ifa_flags & (IFA_F_NODAD | IFA_F_HOMEADDRESS);

	ifa = FUNC5(net, pfx, dev, 1);
	if (ifa == NULL) {
		/*
		 * It would be best to check for !NLM_F_CREATE here but
		 * userspace alreay relies on not having to provide this.
		 */
		return FUNC3(net, ifm->ifa_index, pfx,
				      ifm->ifa_prefixlen, ifa_flags,
				      preferred_lft, valid_lft);
	}

	if (nlh->nlmsg_flags & NLM_F_EXCL ||
	    !(nlh->nlmsg_flags & NLM_F_REPLACE))
		err = -EEXIST;
	else
		err = FUNC4(ifa, ifa_flags, preferred_lft, valid_lft);

	FUNC2(ifa);

	return err;
}