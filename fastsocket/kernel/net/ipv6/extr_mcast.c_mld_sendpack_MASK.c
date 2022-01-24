#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int tail; int network_header; int transport_header; TYPE_2__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  igmp_sk; } ;
struct net {TYPE_1__ ipv6; } ;
struct mld2_report {int /*<<< orphan*/  mld2r_cksum; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  payload_len; } ;
struct inet6_dev {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICMP6_MIB_OUTMSGS ; 
 int /*<<< orphan*/  ICMPV6_MLD2_REPORT ; 
 int /*<<< orphan*/  FUNC2 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IPPROTO_ICMPV6 ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUT ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTMCAST ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_LOCAL_OUT ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 struct net* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  dst_output ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct dst_entry* FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct flowi*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct inet6_dev* FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (struct inet6_dev*) ; 
 struct ipv6hdr* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,struct dst_entry*) ; 
 scalar_t__ FUNC18 (struct sk_buff*) ; 
 int FUNC19 (struct net*,struct dst_entry**,struct flowi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC20(struct sk_buff *skb)
{
	struct ipv6hdr *pip6 = FUNC14(skb);
	struct mld2_report *pmr =
			      (struct mld2_report *)FUNC18(skb);
	int payload_len, mldlen;
	struct inet6_dev *idev = FUNC12(skb->dev);
	struct net *net = FUNC8(skb->dev);
	int err;
	struct flowi fl;
	struct dst_entry *dst;

	FUNC3(net, idev, IPSTATS_MIB_OUT, skb->len);

	payload_len = (skb->tail - skb->network_header) - sizeof(*pip6);
	mldlen = skb->tail - skb->transport_header;
	pip6->payload_len = FUNC9(payload_len);

	pmr->mld2r_cksum = FUNC6(&pip6->saddr, &pip6->daddr, mldlen,
					   IPPROTO_ICMPV6,
					   FUNC7(FUNC18(skb),
							mldlen, 0));

	dst = FUNC10(skb->dev, NULL, &FUNC14(skb)->daddr);

	if (!dst) {
		err = -ENOMEM;
		goto err_out;
	}

	FUNC11(net->ipv6.igmp_sk, &fl, ICMPV6_MLD2_REPORT,
			 &FUNC14(skb)->saddr, &FUNC14(skb)->daddr,
			 skb->dev->ifindex);

	err = FUNC19(net, &dst, &fl, NULL, 0);
	FUNC17(skb, dst);
	if (err)
		goto err_out;

	payload_len = skb->len;

	err = FUNC5(PF_INET6, NF_INET_LOCAL_OUT, skb, NULL, skb->dev,
		      dst_output);
out:
	if (!err) {
		FUNC0(net, idev, ICMPV6_MLD2_REPORT);
		FUNC1(net, idev, ICMP6_MIB_OUTMSGS);
		FUNC4(net, idev, IPSTATS_MIB_OUTMCAST, payload_len);
	} else
		FUNC2(net, idev, IPSTATS_MIB_OUTDISCARDS);

	if (FUNC16(idev != NULL))
		FUNC13(idev);
	return;

err_out:
	FUNC15(skb);
	goto out;
}