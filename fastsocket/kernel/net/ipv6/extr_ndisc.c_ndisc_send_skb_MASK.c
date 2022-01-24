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
typedef  int /*<<< orphan*/  u8 ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct TYPE_2__ {struct sock* ndisc_sk; } ;
struct net {TYPE_1__ ipv6; } ;
struct neighbour {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
struct icmp6hdr {int /*<<< orphan*/  icmp6_type; } ;
struct flowi {int dummy; } ;
struct dst_entry {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICMP6_MIB_OUTMSGS ; 
 int /*<<< orphan*/  FUNC2 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUT ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_LOCAL_OUT ; 
 int /*<<< orphan*/  PF_INET6 ; 
 struct net* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  dst_output ; 
 struct dst_entry* FUNC5 (struct net_device*,struct neighbour*,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct flowi*,int /*<<< orphan*/ ,struct in6_addr const*,struct in6_addr const*,int /*<<< orphan*/ ) ; 
 struct inet6_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct dst_entry*) ; 
 int FUNC12 (struct net*,struct dst_entry**,struct flowi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC13(struct sk_buff *skb,
		    struct net_device *dev,
		    struct neighbour *neigh,
		    const struct in6_addr *daddr,
		    const struct in6_addr *saddr,
		    struct icmp6hdr *icmp6h)
{
	struct flowi fl;
	struct dst_entry *dst;
	struct net *net = FUNC4(dev);
	struct sock *sk = net->ipv6.ndisc_sk;
	struct inet6_dev *idev;
	int err;
	u8 type;

	type = icmp6h->icmp6_type;

	FUNC6(sk, &fl, type, saddr, daddr, dev->ifindex);

	dst = FUNC5(dev, neigh, daddr);
	if (!dst) {
		FUNC9(skb);
		return;
	}

	err = FUNC12(net, &dst, &fl, NULL, 0);
	if (err < 0) {
		FUNC9(skb);
		return;
	}

	FUNC11(skb, dst);

	idev = FUNC7(dst->dev);
	FUNC2(net, idev, IPSTATS_MIB_OUT, skb->len);

	err = FUNC3(PF_INET6, NF_INET_LOCAL_OUT, skb, NULL, dst->dev,
		      dst_output);
	if (!err) {
		FUNC0(net, idev, type);
		FUNC1(net, idev, ICMP6_MIB_OUTMSGS);
	}

	if (FUNC10(idev != NULL))
		FUNC8(idev);
}