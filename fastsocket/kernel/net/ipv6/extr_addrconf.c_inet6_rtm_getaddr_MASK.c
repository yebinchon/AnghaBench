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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct inet6_ifaddr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifaddrmsg {scalar_t__ ifa_index; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IFA_ADDRESS ; 
 size_t IFA_LOCAL ; 
 int /*<<< orphan*/  IFA_MAX ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  RTM_NEWADDR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct net_device* FUNC2 (struct net*,scalar_t__) ; 
 struct in6_addr* FUNC3 (struct nlattr*,struct nlattr*) ; 
 int /*<<< orphan*/  ifa_ipv6_policy ; 
 int /*<<< orphan*/  FUNC4 (struct inet6_ifaddr*) ; 
 int FUNC5 (struct sk_buff*,struct inet6_ifaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct inet6_ifaddr* FUNC7 (struct net*,struct in6_addr*,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct ifaddrmsg* FUNC9 (struct nlmsghdr*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *in_skb, struct nlmsghdr* nlh,
			     void *arg)
{
	struct net *net = FUNC13(in_skb->sk);
	struct ifaddrmsg *ifm;
	struct nlattr *tb[IFA_MAX+1];
	struct in6_addr *addr = NULL;
	struct net_device *dev = NULL;
	struct inet6_ifaddr *ifa;
	struct sk_buff *skb;
	int err;

	err = FUNC11(nlh, sizeof(*ifm), tb, IFA_MAX, ifa_ipv6_policy);
	if (err < 0)
		goto errout;

	addr = FUNC3(tb[IFA_ADDRESS], tb[IFA_LOCAL]);
	if (addr == NULL) {
		err = -EINVAL;
		goto errout;
	}

	ifm = FUNC9(nlh);
	if (ifm->ifa_index)
		dev = FUNC2(net, ifm->ifa_index);

	if ((ifa = FUNC7(net, addr, dev, 1)) == NULL) {
		err = -EADDRNOTAVAIL;
		goto errout;
	}

	if ((skb = FUNC10(FUNC6(), GFP_KERNEL)) == NULL) {
		err = -ENOBUFS;
		goto errout_ifa;
	}

	err = FUNC5(skb, ifa, FUNC0(in_skb).pid,
				nlh->nlmsg_seq, RTM_NEWADDR, 0);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in inet6_ifaddr_msgsize() */
		FUNC1(err == -EMSGSIZE);
		FUNC8(skb);
		goto errout_ifa;
	}
	err = FUNC12(skb, net, FUNC0(in_skb).pid);
errout_ifa:
	FUNC4(ifa);
errout:
	return err;
}