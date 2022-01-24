#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp_hdr ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; TYPE_2__* dev; } ;
struct rt6_info {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {int mcast_hops; int hop_limit; int /*<<< orphan*/  tclass; scalar_t__ mcast_oif; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
struct icmpv6_msg {void* type; scalar_t__ offset; struct sk_buff* skb; } ;
struct icmp6hdr {void* icmp6_type; } ;
struct flowi {int /*<<< orphan*/  fl6_dst; scalar_t__ oif; void* fl_icmp_type; int /*<<< orphan*/  fl6_src; int /*<<< orphan*/  proto; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  fl ;
struct TYPE_5__ {scalar_t__ ifindex; } ;
struct TYPE_4__ {struct in6_addr saddr; struct in6_addr daddr; } ;

/* Variables and functions */
 void* ICMPV6_ECHO_REPLY ; 
 int /*<<< orphan*/  IPPROTO_ICMPV6 ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 struct net* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 struct icmp6hdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  icmpv6_getfrag ; 
 int FUNC3 (struct sock*,struct flowi*,struct icmp6hdr*,scalar_t__) ; 
 struct sock* FUNC4 (struct net*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 struct inet6_dev* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct inet6_dev*) ; 
 struct ipv6_pinfo* FUNC8 (struct sock*) ; 
 int FUNC9 (struct sock*,int /*<<< orphan*/ ,struct icmpv6_msg*,scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct flowi*,struct rt6_info*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct dst_entry*) ; 
 int FUNC11 (struct sock*,struct dst_entry**,struct flowi*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct icmp6hdr*,struct icmp6hdr*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,struct flowi*) ; 
 int FUNC21 (struct net*,struct dst_entry**,struct flowi*,struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC22(struct sk_buff *skb)
{
	struct net *net = FUNC0(skb->dev);
	struct sock *sk;
	struct inet6_dev *idev;
	struct ipv6_pinfo *np;
	struct in6_addr *saddr = NULL;
	struct icmp6hdr *icmph = FUNC2(skb);
	struct icmp6hdr tmp_hdr;
	struct flowi fl;
	struct icmpv6_msg msg;
	struct dst_entry *dst;
	int err = 0;
	int hlimit;

	saddr = &FUNC15(skb)->daddr;

	if (!FUNC16(skb))
		saddr = NULL;

	FUNC18(&tmp_hdr, icmph, sizeof(tmp_hdr));
	tmp_hdr.icmp6_type = ICMPV6_ECHO_REPLY;

	FUNC19(&fl, 0, sizeof(fl));
	fl.proto = IPPROTO_ICMPV6;
	FUNC13(&fl.fl6_dst, &FUNC15(skb)->saddr);
	if (saddr)
		FUNC13(&fl.fl6_src, saddr);
	fl.oif = skb->dev->ifindex;
	fl.fl_icmp_type = ICMPV6_ECHO_REPLY;
	FUNC20(skb, &fl);

	sk = FUNC4(net);
	if (sk == NULL)
		return;
	np = FUNC8(sk);

	if (!fl.oif && FUNC14(&fl.fl6_dst))
		fl.oif = np->mcast_oif;

	err = FUNC11(sk, &dst, &fl);
	if (err)
		goto out;
	if ((err = FUNC21(net, &dst, &fl, sk, 0)) < 0)
		goto out;

	if (FUNC14(&fl.fl6_dst))
		hlimit = np->mcast_hops;
	else
		hlimit = np->hop_limit;
	if (hlimit < 0)
		hlimit = FUNC10(dst);

	idev = FUNC6(skb->dev);

	msg.skb = skb;
	msg.offset = 0;
	msg.type = ICMPV6_ECHO_REPLY;

	err = FUNC9(sk, icmpv6_getfrag, &msg, skb->len + sizeof(struct icmp6hdr),
				sizeof(struct icmp6hdr), hlimit, np->tclass, NULL, &fl,
				(struct rt6_info*)dst, MSG_DONTWAIT);

	if (err) {
		FUNC12(sk);
		goto out_put;
	}
	err = FUNC3(sk, &fl, &tmp_hdr, skb->len + sizeof(struct icmp6hdr));

out_put:
	if (FUNC17(idev != NULL))
		FUNC7(idev);
	FUNC1(dst);
out:
	FUNC5(sk);
}