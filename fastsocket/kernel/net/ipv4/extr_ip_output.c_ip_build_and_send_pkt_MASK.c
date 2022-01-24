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
struct sock {int /*<<< orphan*/  sk_mark; int /*<<< orphan*/  sk_priority; int /*<<< orphan*/  sk_protocol; } ;
struct sk_buff {int /*<<< orphan*/  mark; int /*<<< orphan*/  priority; } ;
struct TYPE_2__ {int /*<<< orphan*/  dst; } ;
struct rtable {TYPE_1__ u; int /*<<< orphan*/  rt_src; int /*<<< orphan*/  rt_dst; } ;
struct iphdr {int version; int ihl; int /*<<< orphan*/  protocol; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  ttl; scalar_t__ frag_off; int /*<<< orphan*/  tos; } ;
struct ip_options {int optlen; } ;
struct inet_sock {int /*<<< orphan*/  tos; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  IP_DF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*,int /*<<< orphan*/ *) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct ip_options*,int /*<<< orphan*/ ,struct rtable*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iphdr*,int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct inet_sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct rtable* FUNC10 (struct sk_buff*) ; 

int FUNC11(struct sk_buff *skb, struct sock *sk,
			  __be32 saddr, __be32 daddr, struct ip_options *opt)
{
	struct inet_sock *inet = FUNC1(sk);
	struct rtable *rt = FUNC10(skb);
	struct iphdr *iph;

	/* Build the IP header. */
	FUNC8(skb, sizeof(struct iphdr) + (opt ? opt->optlen : 0));
	FUNC9(skb);
	iph = FUNC3(skb);
	iph->version  = 4;
	iph->ihl      = 5;
	iph->tos      = inet->tos;
	if (FUNC2(sk, &rt->u.dst))
		iph->frag_off = FUNC0(IP_DF);
	else
		iph->frag_off = 0;
	iph->ttl      = FUNC7(inet, &rt->u.dst);
	iph->daddr    = rt->rt_dst;
	iph->saddr    = rt->rt_src;
	iph->protocol = sk->sk_protocol;
	FUNC6(iph, &rt->u.dst, sk);

	if (opt && opt->optlen) {
		iph->ihl += opt->optlen>>2;
		FUNC5(skb, opt, daddr, rt, 0);
	}

	skb->priority = sk->sk_priority;
	skb->mark = sk->sk_mark;

	/* Send it out. */
	return FUNC4(skb);
}