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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct rt0_hdr {struct in6_addr* addr; } ;
struct request_sock {int dummy; } ;
struct ipv6_txoptions {int /*<<< orphan*/  tot_len; int /*<<< orphan*/ * srcrt; } ;
struct ipv6_pinfo {struct ipv6_txoptions* opt; } ;
struct in6_addr {int dummy; } ;
struct inet6_request_sock {struct in6_addr rmt_addr; struct in6_addr loc_addr; int /*<<< orphan*/  iif; } ;
struct flowi {struct in6_addr fl6_dst; int /*<<< orphan*/  fl_ip_sport; int /*<<< orphan*/  fl_ip_dport; int /*<<< orphan*/  oif; scalar_t__ fl6_flowlabel; struct in6_addr fl6_src; int /*<<< orphan*/  proto; } ;
struct dst_entry {int dummy; } ;
struct dccp_hdr {int /*<<< orphan*/  dccph_checksum; } ;
typedef  int /*<<< orphan*/  fl ;
struct TYPE_2__ {int /*<<< orphan*/  loc_port; int /*<<< orphan*/  rmt_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_DCCP ; 
 struct dccp_hdr* FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct sock*,struct dst_entry*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct in6_addr*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*) ; 
 struct inet6_request_sock* FUNC4 (struct request_sock*) ; 
 struct ipv6_pinfo* FUNC5 (struct sock*) ; 
 TYPE_1__* FUNC6 (struct request_sock*) ; 
 int FUNC7 (struct sock*,struct dst_entry**,struct flowi*) ; 
 int FUNC8 (struct sock*,struct sk_buff*,struct flowi*,struct ipv6_txoptions*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct in6_addr*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC10 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct request_sock*,struct flowi*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct ipv6_txoptions*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct dst_entry**,struct flowi*,struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct sock *sk, struct request_sock *req)
{
	struct inet6_request_sock *ireq6 = FUNC4(req);
	struct ipv6_pinfo *np = FUNC5(sk);
	struct sk_buff *skb;
	struct ipv6_txoptions *opt = NULL;
	struct in6_addr *final_p = NULL, final;
	struct flowi fl;
	int err = -1;
	struct dst_entry *dst;

	FUNC10(&fl, 0, sizeof(fl));
	fl.proto = IPPROTO_DCCP;
	FUNC9(&fl.fl6_dst, &ireq6->rmt_addr);
	FUNC9(&fl.fl6_src, &ireq6->loc_addr);
	fl.fl6_flowlabel = 0;
	fl.oif = ireq6->iif;
	fl.fl_ip_dport = FUNC6(req)->rmt_port;
	fl.fl_ip_sport = FUNC6(req)->loc_port;
	FUNC12(req, &fl);

	opt = np->opt;

	if (opt != NULL && opt->srcrt != NULL) {
		const struct rt0_hdr *rt0 = (struct rt0_hdr *)opt->srcrt;

		FUNC9(&final, &fl.fl6_dst);
		FUNC9(&fl.fl6_dst, rt0->addr);
		final_p = &final;
	}

	err = FUNC7(sk, &dst, &fl);
	if (err)
		goto done;

	if (final_p)
		FUNC9(&fl.fl6_dst, final_p);

	err = FUNC15(FUNC14(sk), &dst, &fl, sk, 0);
	if (err < 0)
		goto done;

	skb = FUNC1(sk, dst, req);
	if (skb != NULL) {
		struct dccp_hdr *dh = FUNC0(skb);

		dh->dccph_checksum = FUNC2(skb,
							 &ireq6->loc_addr,
							 &ireq6->rmt_addr);
		FUNC9(&fl.fl6_dst, &ireq6->rmt_addr);
		err = FUNC8(sk, skb, &fl, opt, 0);
		err = FUNC11(err);
	}

done:
	if (opt != NULL && opt != np->opt)
		FUNC13(sk, opt, opt->tot_len);
	FUNC3(dst);
	return err;
}