#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  s6_addr; } ;
struct inet6_dev {int /*<<< orphan*/  lock; TYPE_2__ token; int /*<<< orphan*/  cnf; TYPE_1__* nd_parms; int /*<<< orphan*/  tstamp; int /*<<< orphan*/  if_flags; } ;
struct in6_addr {int dummy; } ;
struct ifla_cacheinfo {int /*<<< orphan*/  retrans_time; int /*<<< orphan*/  reachable_time; scalar_t__ tstamp; int /*<<< orphan*/  max_reasm_len; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  ci ;
typedef  scalar_t__ __u32 ;
struct TYPE_3__ {int /*<<< orphan*/  retrans_time; int /*<<< orphan*/  reachable_time; } ;

/* Variables and functions */
 int DEVCONF_MAX ; 
 int EMSGSIZE ; 
 int HZ ; 
 int ICMP6_MIB_MAX ; 
 int /*<<< orphan*/  IFLA_INET6_CACHEINFO ; 
 int /*<<< orphan*/  IFLA_INET6_CONF ; 
 int /*<<< orphan*/  IFLA_INET6_FLAGS ; 
 int /*<<< orphan*/  IFLA_INET6_ICMP6STATS ; 
 int /*<<< orphan*/  IFLA_INET6_STATS ; 
 int /*<<< orphan*/  IFLA_INET6_TOKEN ; 
 int /*<<< orphan*/  INITIAL_JIFFIES ; 
 int IPSTATS_MIB_MAX ; 
 int /*<<< orphan*/  IPV6_MAXPLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct ifla_cacheinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 struct nlattr* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct inet6_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct inet6_dev *idev)
{
	struct nlattr *nla;
	struct ifla_cacheinfo ci;

	FUNC1(skb, IFLA_INET6_FLAGS, idev->if_flags);

	ci.max_reasm_len = IPV6_MAXPLEN;
	ci.tstamp = (__u32)(FUNC2(idev->tstamp, INITIAL_JIFFIES) / HZ * 100
		    + FUNC2(idev->tstamp, INITIAL_JIFFIES) % HZ * 100 / HZ);
	ci.reachable_time = idev->nd_parms->reachable_time;
	ci.retrans_time = idev->nd_parms->retrans_time;
	FUNC0(skb, IFLA_INET6_CACHEINFO, sizeof(ci), &ci);

	nla = FUNC7(skb, IFLA_INET6_CONF, DEVCONF_MAX * sizeof(s32));
	if (nla == NULL)
		goto nla_put_failure;
	FUNC3(&idev->cnf, FUNC5(nla), FUNC6(nla));

	/* XXX - MC not implemented */

	nla = FUNC7(skb, IFLA_INET6_STATS, IPSTATS_MIB_MAX * sizeof(u64));
	if (nla == NULL)
		goto nla_put_failure;
	FUNC10(FUNC5(nla), idev, IFLA_INET6_STATS, FUNC6(nla));

	nla = FUNC7(skb, IFLA_INET6_ICMP6STATS, ICMP6_MIB_MAX * sizeof(u64));
	if (nla == NULL)
		goto nla_put_failure;
	FUNC10(FUNC5(nla), idev, IFLA_INET6_ICMP6STATS, FUNC6(nla));

	nla = FUNC7(skb, IFLA_INET6_TOKEN, sizeof(struct in6_addr));
	if (nla == NULL)
		goto nla_put_failure;
	FUNC8(&idev->lock);
	FUNC4(FUNC5(nla), idev->token.s6_addr, FUNC6(nla));
	FUNC9(&idev->lock);

	return 0;

nla_put_failure:
	return -EMSGSIZE;
}