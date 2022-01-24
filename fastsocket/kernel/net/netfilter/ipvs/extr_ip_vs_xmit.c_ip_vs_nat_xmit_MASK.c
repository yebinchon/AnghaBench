#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int local_df; } ;
struct TYPE_9__ {TYPE_1__* dev; } ;
struct TYPE_7__ {TYPE_4__ dst; } ;
struct rtable {TYPE_2__ u; } ;
struct iphdr {int ihl; int frag_off; int /*<<< orphan*/  daddr; int /*<<< orphan*/  tos; } ;
struct ip_vs_protocol {int /*<<< orphan*/  (* dnat_handler ) (struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_conn*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  ip; } ;
struct ip_vs_conn {int flags; TYPE_3__ daddr; } ;
typedef  int /*<<< orphan*/  _pt ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_6__ {int /*<<< orphan*/  hard_header_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_FRAG_NEEDED ; 
 int /*<<< orphan*/  IP_DF ; 
 int IP_VS_CONN_F_NO_CPORT ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct ip_vs_protocol*,struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ip_vs_protocol*,struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,struct rtable*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int NF_STOLEN ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct rtable* FUNC7 (struct sk_buff*,struct ip_vs_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC15 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC16 (struct ip_vs_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC22 (struct sk_buff*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_conn*) ; 
 scalar_t__ FUNC26 (int) ; 

int
FUNC27(struct sk_buff *skb, struct ip_vs_conn *cp,
	       struct ip_vs_protocol *pp)
{
	struct rtable *rt;		/* Route to the other host */
	int mtu;
	struct iphdr *iph = FUNC13(skb);

	FUNC0(10);

	/* check if it is a connection of no-client-port */
	if (FUNC26(cp->flags & IP_VS_CONN_F_NO_CPORT)) {
		__be16 _pt, *p;
		p = FUNC22(skb, iph->ihl*4, sizeof(_pt), &_pt);
		if (p == NULL)
			goto tx_error;
		FUNC16(cp, *p);
		FUNC1(10, "filled cport=%d\n", FUNC18(*p));
	}

	if (!(rt = FUNC7(skb, cp, FUNC6(iph->tos))))
		goto tx_error_icmp;

	/* MTU checking */
	mtu = FUNC9(&rt->u.dst);
	if ((skb->len > mtu) && (iph->frag_off & FUNC11(IP_DF)) &&
	    !FUNC23(skb)) {
		FUNC14(rt);
		FUNC12(skb, ICMP_DEST_UNREACH,ICMP_FRAG_NEEDED, FUNC10(mtu));
		FUNC3(0, pp, skb, 0, "ip_vs_nat_xmit(): frag needed for");
		goto tx_error;
	}

	/* copy-on-write the packet before mangling it */
	if (!FUNC24(skb, sizeof(struct iphdr)))
		goto tx_error_put;

	if (FUNC19(skb, rt->u.dst.dev->hard_header_len))
		goto tx_error_put;

	/* drop old route */
	FUNC20(skb);
	FUNC21(skb, &rt->u.dst);

	/* mangle the packet */
	if (pp->dnat_handler && !pp->dnat_handler(skb, pp, cp))
		goto tx_error;
	FUNC13(skb)->daddr = cp->daddr.ip;
	FUNC15(FUNC13(skb));

	FUNC2(10, pp, skb, 0, "After DNAT");

	/* FIXME: when application helper enlarges the packet and the length
	   is larger than the MTU of outgoing device, there will be still
	   MTU problem. */

	/* Another hack: avoid icmp_send in ip_fragment */
	skb->local_df = 1;

	FUNC4(PF_INET, skb, rt);

	FUNC5(10);
	return NF_STOLEN;

  tx_error_icmp:
	FUNC8(skb);
  tx_error:
	FUNC5(10);
	FUNC17(skb);
	return NF_STOLEN;
  tx_error_put:
	FUNC14(rt);
	goto tx_error;
}