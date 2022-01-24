#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {struct sock* v6_ctl_sk; } ;
struct net {TYPE_1__ dccp; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct flowi {int /*<<< orphan*/  fl_ip_sport; int /*<<< orphan*/  fl_ip_dport; int /*<<< orphan*/  oif; int /*<<< orphan*/  proto; int /*<<< orphan*/  fl6_src; int /*<<< orphan*/  fl6_dst; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  fl ;
struct TYPE_6__ {scalar_t__ dccph_type; int /*<<< orphan*/  dccph_sport; int /*<<< orphan*/  dccph_dport; int /*<<< orphan*/  dccph_checksum; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCCP_MIB_OUTRSTS ; 
 int /*<<< orphan*/  DCCP_MIB_OUTSEGS ; 
 scalar_t__ DCCP_PKT_RESET ; 
 int /*<<< orphan*/  IPPROTO_DCCP ; 
 struct sk_buff* FUNC1 (struct sock*,struct sk_buff*) ; 
 TYPE_3__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct dst_entry**,struct flowi*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_buff*,struct flowi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ipv6hdr* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,struct flowi*) ; 
 TYPE_2__* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,struct dst_entry*) ; 
 scalar_t__ FUNC16 (struct net*,struct dst_entry**,struct flowi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct sock *sk, struct sk_buff *rxskb)
{
	struct ipv6hdr *rxip6h;
	struct sk_buff *skb;
	struct flowi fl;
	struct net *net = FUNC4(FUNC14(rxskb)->dev);
	struct sock *ctl_sk = net->dccp.v6_ctl_sk;
	struct dst_entry *dst;

	if (FUNC2(rxskb)->dccph_type == DCCP_PKT_RESET)
		return;

	if (!FUNC10(rxskb))
		return;

	skb = FUNC1(ctl_sk, rxskb);
	if (skb == NULL)
		return;

	rxip6h = FUNC9(rxskb);
	FUNC2(skb)->dccph_checksum = FUNC3(skb, &rxip6h->saddr,
							    &rxip6h->daddr);

	FUNC12(&fl, 0, sizeof(fl));
	FUNC8(&fl.fl6_dst, &rxip6h->saddr);
	FUNC8(&fl.fl6_src, &rxip6h->daddr);

	fl.proto = IPPROTO_DCCP;
	fl.oif = FUNC5(rxskb);
	fl.fl_ip_dport = FUNC2(skb)->dccph_dport;
	fl.fl_ip_sport = FUNC2(skb)->dccph_sport;
	FUNC13(rxskb, &fl);

	/* sk = NULL, but it is safe for now. RST socket required. */
	if (!FUNC6(ctl_sk, &dst, &fl)) {
		if (FUNC16(net, &dst, &fl, NULL, 0) >= 0) {
			FUNC15(skb, dst);
			FUNC7(ctl_sk, skb, &fl, NULL, 0);
			FUNC0(DCCP_MIB_OUTSEGS);
			FUNC0(DCCP_MIB_OUTRSTS);
			return;
		}
	}

	FUNC11(skb);
}