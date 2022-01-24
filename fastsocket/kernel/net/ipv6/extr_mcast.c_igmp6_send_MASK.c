#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sock {int dummy; } ;
struct sk_buff {TYPE_3__* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {struct sock* igmp_sk; } ;
struct net {TYPE_1__ ipv6; } ;
struct mld_msg {int mld_type; int /*<<< orphan*/  mld_cksum; int /*<<< orphan*/  mld_mca; } ;
struct ipv6hdr {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
struct icmp6hdr {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  ra ;
struct TYPE_8__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_7__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct net*,struct inet6_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICMP6_MIB_OUTMSGS ; 
 int ICMPV6_MGM_REDUCTION ; 
 int /*<<< orphan*/  IFA_F_TENTATIVE ; 
 int /*<<< orphan*/  FUNC2 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ,int) ; 
 int IPPROTO_ICMPV6 ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUT ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTMCAST ; 
 int IPV6_TLV_PADN ; 
 int IPV6_TLV_ROUTERALERT ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  NEXTHDR_HOP ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_LOCAL_OUT ; 
 int /*<<< orphan*/  PF_INET6 ; 
 struct inet6_dev* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct in6_addr const*,struct in6_addr const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mld_msg*,int,int /*<<< orphan*/ ) ; 
 struct net* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  dst_output ; 
 struct dst_entry* FUNC11 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,struct flowi*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct inet6_dev* FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (struct inet6_dev*) ; 
 struct in6_addr in6addr_any ; 
 struct in6_addr in6addr_linklocal_allrouters ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,struct sk_buff*,struct net_device*,struct in6_addr const*,struct in6_addr const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 scalar_t__ FUNC17 (struct net_device*,struct in6_addr*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct mld_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*,struct dst_entry*) ; 
 scalar_t__ FUNC26 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC28 (struct sock*,scalar_t__,int,int*) ; 
 int FUNC29 (struct net*,struct dst_entry**,struct flowi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC30(struct in6_addr *addr, struct net_device *dev, int type)
{
	struct net *net = FUNC10(dev);
	struct sock *sk = net->ipv6.igmp_sk;
	struct inet6_dev *idev;
	struct sk_buff *skb;
	struct mld_msg *hdr;
	const struct in6_addr *snd_addr, *saddr;
	struct in6_addr addr_buf;
	int err, len, payload_len, full_len;
	u8 ra[8] = { IPPROTO_ICMPV6, 0,
		     IPV6_TLV_ROUTERALERT, 2, 0, 0,
		     IPV6_TLV_PADN, 0 };
	struct flowi fl;
	struct dst_entry *dst;

	if (type == ICMPV6_MGM_REDUCTION)
		snd_addr = &in6addr_linklocal_allrouters;
	else
		snd_addr = addr;

	len = sizeof(struct icmp6hdr) + sizeof(struct in6_addr);
	payload_len = len + sizeof(ra);
	full_len = sizeof(struct ipv6hdr) + payload_len;

	FUNC23();
	FUNC3(net, FUNC7(dev),
		      IPSTATS_MIB_OUT, full_len);
	FUNC24();

	skb = FUNC28(sk, FUNC4(dev) + full_len, 1, &err);

	if (skb == NULL) {
		FUNC23();
		FUNC2(net, FUNC7(dev),
			      IPSTATS_MIB_OUTDISCARDS);
		FUNC24();
		return;
	}

	FUNC27(skb, FUNC5(dev));

	if (FUNC17(dev, &addr_buf, IFA_F_TENTATIVE)) {
		/* <draft-ietf-magma-mld-source-05.txt>:
		 * use unspecified address as the source address
		 * when a valid link-local address is not available.
		 */
		saddr = &in6addr_any;
	} else
		saddr = &addr_buf;

	FUNC15(sk, skb, dev, saddr, snd_addr, NEXTHDR_HOP, payload_len);

	FUNC21(FUNC26(skb, sizeof(ra)), ra, sizeof(ra));

	hdr = (struct mld_msg *) FUNC26(skb, sizeof(struct mld_msg));
	FUNC22(hdr, 0, sizeof(struct mld_msg));
	hdr->mld_type = type;
	FUNC16(&hdr->mld_mca, addr);

	hdr->mld_cksum = FUNC8(saddr, snd_addr, len,
					 IPPROTO_ICMPV6,
					 FUNC9(hdr, len, 0));

	idev = FUNC13(skb->dev);

	dst = FUNC11(skb->dev, NULL, &FUNC18(skb)->daddr);
	if (!dst) {
		err = -ENOMEM;
		goto err_out;
	}

	FUNC12(sk, &fl, type,
			 &FUNC18(skb)->saddr, &FUNC18(skb)->daddr,
			 skb->dev->ifindex);

	err = FUNC29(net, &dst, &fl, NULL, 0);
	if (err)
		goto err_out;

	FUNC25(skb, dst);
	err = FUNC6(PF_INET6, NF_INET_LOCAL_OUT, skb, NULL, skb->dev,
		      dst_output);
out:
	if (!err) {
		FUNC0(net, idev, type);
		FUNC1(net, idev, ICMP6_MIB_OUTMSGS);
		FUNC3(net, idev, IPSTATS_MIB_OUTMCAST, full_len);
	} else
		FUNC2(net, idev, IPSTATS_MIB_OUTDISCARDS);

	if (FUNC20(idev != NULL))
		FUNC14(idev);
	return;

err_out:
	FUNC19(skb);
	goto out;
}