#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {struct sock* v4_ctl_sk; } ;
struct net {TYPE_1__ dccp; } ;
struct iphdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct dst_entry {int dummy; } ;
struct TYPE_8__ {scalar_t__ dccph_type; int /*<<< orphan*/  dccph_checksum; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {scalar_t__ rt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCCP_MIB_OUTRSTS ; 
 int /*<<< orphan*/  DCCP_MIB_OUTSEGS ; 
 scalar_t__ DCCP_PKT_RESET ; 
 scalar_t__ RTN_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct sk_buff* FUNC3 (struct sock*,struct sk_buff*) ; 
 TYPE_4__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC6 (struct net*,struct sock*,struct sk_buff*) ; 
 struct net* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct dst_entry*) ; 
 int FUNC10 (struct sk_buff*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct iphdr* FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int) ; 
 TYPE_3__* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC15 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC16(struct sock *sk, struct sk_buff *rxskb)
{
	int err;
	const struct iphdr *rxiph;
	struct sk_buff *skb;
	struct dst_entry *dst;
	struct net *net = FUNC7(FUNC13(rxskb)->dev);
	struct sock *ctl_sk = net->dccp.v4_ctl_sk;

	/* Never send a reset in response to a reset. */
	if (FUNC4(rxskb)->dccph_type == DCCP_PKT_RESET)
		return;

	if (FUNC15(rxskb)->rt_type != RTN_LOCAL)
		return;

	dst = FUNC6(net, ctl_sk, rxskb);
	if (dst == NULL)
		return;

	skb = FUNC3(ctl_sk, rxskb);
	if (skb == NULL)
		goto out;

	rxiph = FUNC11(rxskb);
	FUNC4(skb)->dccph_checksum = FUNC5(skb, rxiph->saddr,
								 rxiph->daddr);
	FUNC14(skb, FUNC8(dst));

	FUNC1(ctl_sk);
	err = FUNC10(skb, ctl_sk,
				    rxiph->daddr, rxiph->saddr, NULL);
	FUNC2(ctl_sk);

	if (FUNC12(err) == 0) {
		FUNC0(DCCP_MIB_OUTSEGS);
		FUNC0(DCCP_MIB_OUTRSTS);
	}
out:
	 FUNC9(dst);
}