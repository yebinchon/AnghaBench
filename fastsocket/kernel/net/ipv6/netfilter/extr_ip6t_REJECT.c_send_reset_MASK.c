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
typedef  scalar_t__ u_int8_t ;
typedef  scalar_t__ u8 ;
struct tcphdr {int rst; int doff; int ack; scalar_t__ check; scalar_t__ urg_ptr; scalar_t__ window; scalar_t__ seq; scalar_t__ fin; scalar_t__ syn; scalar_t__ ack_seq; int /*<<< orphan*/  source; int /*<<< orphan*/  dest; } ;
struct sk_buff {int data; int len; } ;
struct net {int dummy; } ;
struct ipv6hdr {scalar_t__ nexthdr; int version; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  hop_limit; } ;
struct flowi {int /*<<< orphan*/  fl_ip_dport; int /*<<< orphan*/  fl_ip_sport; int /*<<< orphan*/  fl6_dst; int /*<<< orphan*/  fl6_src; scalar_t__ proto; } ;
struct dst_entry {scalar_t__ header_len; scalar_t__ trailer_len; TYPE_1__* dev; scalar_t__ error; } ;
typedef  int /*<<< orphan*/  fl ;
struct TYPE_2__ {int hard_header_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IPPROTO_TCP ; 
 int IPV6_ADDR_UNICAST ; 
 int /*<<< orphan*/  RTAX_HOPLIMIT ; 
 struct sk_buff* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tcphdr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_entry*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct dst_entry* FUNC8 (struct net*,int /*<<< orphan*/ *,struct flowi*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 struct ipv6hdr* FUNC11 (struct sk_buff*) ; 
 int FUNC12 (struct sk_buff*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,struct sk_buff*) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,struct flowi*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (struct sk_buff*,int,struct tcphdr*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,struct dst_entry*) ; 
 scalar_t__ FUNC23 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*) ; 
 scalar_t__ FUNC26 (struct net*,struct dst_entry**,struct flowi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC27(struct net *net, struct sk_buff *oldskb)
{
	struct sk_buff *nskb;
	struct tcphdr otcph, *tcph;
	unsigned int otcplen, hh_len;
	int tcphoff, needs_ack;
	const struct ipv6hdr *oip6h = FUNC11(oldskb);
	struct ipv6hdr *ip6h;
	struct dst_entry *dst = NULL;
	u8 proto;
	struct flowi fl;

	if ((!(FUNC10(&oip6h->saddr) & IPV6_ADDR_UNICAST)) ||
	    (!(FUNC10(&oip6h->daddr) & IPV6_ADDR_UNICAST))) {
		FUNC17("ip6t_REJECT: addr is not unicast.\n");
		return;
	}

	proto = oip6h->nexthdr;
	tcphoff = FUNC12(oldskb, ((u8*)(oip6h+1) - oldskb->data), &proto);

	if ((tcphoff < 0) || (tcphoff > oldskb->len)) {
		FUNC17("ip6t_REJECT: Can't get TCP header.\n");
		return;
	}

	otcplen = oldskb->len - tcphoff;

	/* IP header checks: fragment, too short. */
	if (proto != IPPROTO_TCP || otcplen < sizeof(struct tcphdr)) {
		FUNC17("ip6t_REJECT: proto(%d) != IPPROTO_TCP, "
			 "or too short. otcplen = %d\n",
			 proto, otcplen);
		return;
	}

	if (FUNC21(oldskb, tcphoff, &otcph, sizeof(struct tcphdr)))
		FUNC0();

	/* No RST for RST. */
	if (otcph.rst) {
		FUNC17("ip6t_REJECT: RST is set\n");
		return;
	}

	/* Check checksum. */
	if (FUNC2(&oip6h->saddr, &oip6h->daddr, otcplen, IPPROTO_TCP,
			    FUNC20(oldskb, tcphoff, otcplen, 0))) {
		FUNC17("ip6t_REJECT: TCP checksum is invalid\n");
		return;
	}

	FUNC13(&fl, 0, sizeof(fl));
	fl.proto = IPPROTO_TCP;
	FUNC9(&fl.fl6_src, &oip6h->daddr);
	FUNC9(&fl.fl6_dst, &oip6h->saddr);
	fl.fl_ip_sport = otcph.dest;
	fl.fl_ip_dport = otcph.source;
	FUNC19(oldskb, &fl);
	dst = FUNC8(net, NULL, &fl);
	if (dst == NULL)
		return;
	if (dst->error || FUNC26(net, &dst, &fl, NULL, 0))
		return;

	hh_len = (dst->dev->hard_header_len + 15)&~15;
	nskb = FUNC1(hh_len + 15 + dst->header_len + sizeof(struct ipv6hdr)
			 + sizeof(struct tcphdr) + dst->trailer_len,
			 GFP_ATOMIC);

	if (!nskb) {
		if (FUNC14())
			FUNC18("ip6t_REJECT: Can't alloc skb\n");
		FUNC5(dst);
		return;
	}

	FUNC22(nskb, dst);

	FUNC24(nskb, hh_len + dst->header_len);

	FUNC23(nskb, sizeof(struct ipv6hdr));
	FUNC25(nskb);
	ip6h = FUNC11(nskb);
	ip6h->version = 6;
	ip6h->hop_limit = FUNC4(dst, RTAX_HOPLIMIT);
	ip6h->nexthdr = IPPROTO_TCP;
	FUNC9(&ip6h->saddr, &oip6h->daddr);
	FUNC9(&ip6h->daddr, &oip6h->saddr);

	tcph = (struct tcphdr *)FUNC23(nskb, sizeof(struct tcphdr));
	/* Truncate to length (no data) */
	tcph->doff = sizeof(struct tcphdr)/4;
	tcph->source = otcph.dest;
	tcph->dest = otcph.source;

	if (otcph.ack) {
		needs_ack = 0;
		tcph->seq = otcph.ack_seq;
		tcph->ack_seq = 0;
	} else {
		needs_ack = 1;
		tcph->ack_seq = FUNC6(FUNC16(otcph.seq) + otcph.syn + otcph.fin
				      + otcplen - (otcph.doff<<2));
		tcph->seq = 0;
	}

	/* Reset flags */
	((u_int8_t *)tcph)[13] = 0;
	tcph->rst = 1;
	tcph->ack = needs_ack;
	tcph->window = 0;
	tcph->urg_ptr = 0;
	tcph->check = 0;

	/* Adjust TCP checksum */
	tcph->check = FUNC2(&FUNC11(nskb)->saddr,
				      &FUNC11(nskb)->daddr,
				      sizeof(struct tcphdr), IPPROTO_TCP,
				      FUNC3(tcph,
						   sizeof(struct tcphdr), 0));

	FUNC15(nskb, oldskb);

	FUNC7(nskb);
}