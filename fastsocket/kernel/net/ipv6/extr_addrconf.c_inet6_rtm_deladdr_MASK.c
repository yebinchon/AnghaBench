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
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifaddrmsg {int /*<<< orphan*/  ifa_prefixlen; int /*<<< orphan*/  ifa_index; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t IFA_ADDRESS ; 
 size_t IFA_LOCAL ; 
 int /*<<< orphan*/  IFA_MAX ; 
 struct in6_addr* FUNC0 (struct nlattr*,struct nlattr*) ; 
 int /*<<< orphan*/  ifa_ipv6_policy ; 
 int FUNC1 (struct net*,int /*<<< orphan*/ ,struct in6_addr*,int /*<<< orphan*/ ) ; 
 struct ifaddrmsg* FUNC2 (struct nlmsghdr*) ; 
 int FUNC3 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
	struct net *net = FUNC4(skb->sk);
	struct ifaddrmsg *ifm;
	struct nlattr *tb[IFA_MAX+1];
	struct in6_addr *pfx;
	int err;

	err = FUNC3(nlh, sizeof(*ifm), tb, IFA_MAX, ifa_ipv6_policy);
	if (err < 0)
		return err;

	ifm = FUNC2(nlh);
	pfx = FUNC0(tb[IFA_ADDRESS], tb[IFA_LOCAL]);
	if (pfx == NULL)
		return -EINVAL;

	return FUNC1(net, ifm->ifa_index, pfx, ifm->ifa_prefixlen);
}