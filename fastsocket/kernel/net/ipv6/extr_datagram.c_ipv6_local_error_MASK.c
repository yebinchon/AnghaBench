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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int ee_errno; scalar_t__ ee_data; int /*<<< orphan*/  ee_info; scalar_t__ ee_pad; scalar_t__ ee_code; scalar_t__ ee_type; int /*<<< orphan*/  ee_origin; } ;
struct sock_exterr_skb {int /*<<< orphan*/  port; int /*<<< orphan*/ * addr_offset; TYPE_1__ ee; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; } ;
struct ipv6_pinfo {int /*<<< orphan*/  recverr; } ;
struct flowi {int /*<<< orphan*/  fl_ip_dport; int /*<<< orphan*/  fl6_dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sock_exterr_skb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  SO_EE_ORIGIN_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ipv6_pinfo* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ipv6hdr* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sock*,struct sk_buff*) ; 

void FUNC13(struct sock *sk, int err, struct flowi *fl, u32 info)
{
	struct ipv6_pinfo *np = FUNC3(sk);
	struct sock_exterr_skb *serr;
	struct ipv6hdr *iph;
	struct sk_buff *skb;

	if (!np->recverr)
		return;

	skb = FUNC2(sizeof(struct ipv6hdr), GFP_ATOMIC);
	if (!skb)
		return;

	FUNC8(skb, sizeof(struct ipv6hdr));
	FUNC9(skb);
	iph = FUNC5(skb);
	FUNC4(&iph->daddr, &fl->fl6_dst);

	serr = FUNC0(skb);
	serr->ee.ee_errno = err;
	serr->ee.ee_origin = SO_EE_ORIGIN_LOCAL;
	serr->ee.ee_type = 0;
	serr->ee.ee_code = 0;
	serr->ee.ee_pad = 0;
	serr->ee.ee_info = info;
	serr->ee.ee_data = 0;
	serr->addr_offset = (u8 *)&iph->daddr - FUNC7(skb);
	serr->port = fl->fl_ip_dport;

	FUNC1(skb, FUNC11(skb) - skb->data);
	FUNC10(skb);

	if (FUNC12(sk, skb))
		FUNC6(skb);
}