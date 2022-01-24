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
struct rt0_hdr {struct in6_addr* addr; } ;
struct in6_addr {int dummy; } ;
struct ipv6_pinfo {TYPE_1__* opt; int /*<<< orphan*/  flow_label; struct in6_addr saddr; struct in6_addr daddr; int /*<<< orphan*/  dst_cookie; } ;
struct inet_sock {int /*<<< orphan*/  sport; int /*<<< orphan*/  dport; } ;
struct flowi {struct in6_addr fl6_dst; int /*<<< orphan*/  fl_ip_sport; int /*<<< orphan*/  fl_ip_dport; int /*<<< orphan*/  oif; int /*<<< orphan*/  fl6_flowlabel; struct in6_addr fl6_src; int /*<<< orphan*/  proto; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  fl ;
struct TYPE_2__ {scalar_t__ srcrt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,struct dst_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dst_entry* FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 struct ipv6_pinfo* FUNC2 (struct sock*) ; 
 struct inet_sock* FUNC3 (struct sock*) ; 
 int FUNC4 (struct sock*,struct dst_entry**,struct flowi*) ; 
 int /*<<< orphan*/  FUNC5 (struct in6_addr*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC6 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct flowi*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct dst_entry**,struct flowi*,struct sock*,int /*<<< orphan*/ ) ; 

int FUNC10(struct sock *sk)
{
	int err;
	struct dst_entry *dst;
	struct ipv6_pinfo *np = FUNC2(sk);

	dst = FUNC1(sk, np->dst_cookie);

	if (dst == NULL) {
		struct inet_sock *inet = FUNC3(sk);
		struct in6_addr *final_p = NULL, final;
		struct flowi fl;

		FUNC6(&fl, 0, sizeof(fl));
		fl.proto = sk->sk_protocol;
		FUNC5(&fl.fl6_dst, &np->daddr);
		FUNC5(&fl.fl6_src, &np->saddr);
		fl.fl6_flowlabel = np->flow_label;
		fl.oif = sk->sk_bound_dev_if;
		fl.fl_ip_dport = inet->dport;
		fl.fl_ip_sport = inet->sport;
		FUNC7(sk, &fl);

		if (np->opt && np->opt->srcrt) {
			struct rt0_hdr *rt0 = (struct rt0_hdr *) np->opt->srcrt;
			FUNC5(&final, &fl.fl6_dst);
			FUNC5(&fl.fl6_dst, rt0->addr);
			final_p = &final;
		}

		err = FUNC4(sk, &dst, &fl);
		if (err) {
			sk->sk_route_caps = 0;
			return err;
		}
		if (final_p)
			FUNC5(&fl.fl6_dst, final_p);

		if ((err = FUNC9(FUNC8(sk), &dst, &fl, sk, 0)) < 0) {
			sk->sk_err_soft = -err;
			return err;
		}

		FUNC0(sk, dst, NULL, NULL);
	}

	return 0;
}