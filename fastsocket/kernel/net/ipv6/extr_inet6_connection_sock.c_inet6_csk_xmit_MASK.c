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
struct sock {int sk_err_soft; scalar_t__ sk_route_caps; int /*<<< orphan*/  sk_bound_dev_if; int /*<<< orphan*/  sk_protocol; } ;
struct sk_buff {struct sock* sk; } ;
struct rt0_hdr {struct in6_addr* addr; } ;
struct in6_addr {int dummy; } ;
struct ipv6_pinfo {TYPE_1__* opt; struct in6_addr daddr; int /*<<< orphan*/  dst_cookie; int /*<<< orphan*/  flow_label; struct in6_addr saddr; } ;
struct inet_sock {int /*<<< orphan*/  dport; int /*<<< orphan*/  sport; } ;
struct flowi {struct in6_addr fl6_dst; int /*<<< orphan*/  fl_ip_dport; int /*<<< orphan*/  fl_ip_sport; int /*<<< orphan*/  oif; int /*<<< orphan*/  fl6_flowlabel; struct in6_addr fl6_src; int /*<<< orphan*/  proto; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  fl ;
struct TYPE_2__ {scalar_t__ srcrt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct dst_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*) ; 
 struct ipv6_pinfo* FUNC4 (struct sock*) ; 
 struct inet_sock* FUNC5 (struct sock*) ; 
 int FUNC6 (struct sock*,struct dst_entry**,struct flowi*) ; 
 int FUNC7 (struct sock*,struct sk_buff*,struct flowi*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct in6_addr*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,struct flowi*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct dst_entry**,struct flowi*,struct sock*,int /*<<< orphan*/ ) ; 

int FUNC15(struct sk_buff *skb, int ipfragok)
{
	struct sock *sk = skb->sk;
	struct inet_sock *inet = FUNC5(sk);
	struct ipv6_pinfo *np = FUNC4(sk);
	struct flowi fl;
	struct dst_entry *dst;
	struct in6_addr *final_p = NULL, final;

	FUNC10(&fl, 0, sizeof(fl));
	fl.proto = sk->sk_protocol;
	FUNC8(&fl.fl6_dst, &np->daddr);
	FUNC8(&fl.fl6_src, &np->saddr);
	fl.fl6_flowlabel = np->flow_label;
	FUNC0(sk, fl.fl6_flowlabel);
	fl.oif = sk->sk_bound_dev_if;
	fl.fl_ip_sport = inet->sport;
	fl.fl_ip_dport = inet->dport;
	FUNC11(sk, &fl);

	if (np->opt && np->opt->srcrt) {
		struct rt0_hdr *rt0 = (struct rt0_hdr *)np->opt->srcrt;
		FUNC8(&final, &fl.fl6_dst);
		FUNC8(&fl.fl6_dst, rt0->addr);
		final_p = &final;
	}

	dst = FUNC1(sk, np->dst_cookie);

	if (dst == NULL) {
		int err = FUNC6(sk, &dst, &fl);

		if (err) {
			sk->sk_err_soft = -err;
			FUNC9(skb);
			return err;
		}

		if (final_p)
			FUNC8(&fl.fl6_dst, final_p);

		if ((err = FUNC14(FUNC13(sk), &dst, &fl, sk, 0)) < 0) {
			sk->sk_route_caps = 0;
			FUNC9(skb);
			return err;
		}

		FUNC2(sk, dst, NULL, NULL);
	}

	FUNC12(skb, FUNC3(dst));

	/* Restore final destination back after routing done */
	FUNC8(&fl.fl6_dst, &np->daddr);

	return FUNC7(sk, skb, &fl, np->opt, 0);
}