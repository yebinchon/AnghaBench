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
struct tcphdr {int /*<<< orphan*/  check; } ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  csum; int /*<<< orphan*/  len; } ;
struct rt0_hdr {struct in6_addr* addr; } ;
struct request_sock {int dummy; } ;
struct ipv6_txoptions {int /*<<< orphan*/  tot_len; scalar_t__ srcrt; } ;
struct ipv6_pinfo {struct ipv6_txoptions* opt; } ;
struct in6_addr {int dummy; } ;
struct inet6_request_sock {struct in6_addr rmt_addr; struct in6_addr loc_addr; int /*<<< orphan*/  iif; } ;
struct flowi {struct in6_addr fl6_dst; int /*<<< orphan*/  fl_ip_sport; int /*<<< orphan*/  fl_ip_dport; int /*<<< orphan*/  oif; scalar_t__ fl6_flowlabel; struct in6_addr fl6_src; int /*<<< orphan*/  proto; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  fl ;
struct TYPE_2__ {int /*<<< orphan*/  loc_port; int /*<<< orphan*/  rmt_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC0 (struct tcphdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 struct inet6_request_sock* FUNC2 (struct request_sock*) ; 
 struct ipv6_pinfo* FUNC3 (struct sock*) ; 
 TYPE_1__* FUNC4 (struct request_sock*) ; 
 int FUNC5 (struct sock*,struct dst_entry**,struct flowi*) ; 
 int FUNC6 (struct sock*,struct sk_buff*,struct flowi*,struct ipv6_txoptions*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct in6_addr*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC8 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct request_sock*,struct flowi*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,struct ipv6_txoptions*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 struct tcphdr* FUNC13 (struct sk_buff*) ; 
 struct sk_buff* FUNC14 (struct sock*,struct dst_entry*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct in6_addr*,struct in6_addr*,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct dst_entry**,struct flowi*,struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct sock *sk, struct request_sock *req)
{
	struct inet6_request_sock *treq = FUNC2(req);
	struct ipv6_pinfo *np = FUNC3(sk);
	struct sk_buff * skb;
	struct ipv6_txoptions *opt = NULL;
	struct in6_addr * final_p = NULL, final;
	struct flowi fl;
	struct dst_entry *dst;
	int err = -1;

	FUNC8(&fl, 0, sizeof(fl));
	fl.proto = IPPROTO_TCP;
	FUNC7(&fl.fl6_dst, &treq->rmt_addr);
	FUNC7(&fl.fl6_src, &treq->loc_addr);
	fl.fl6_flowlabel = 0;
	fl.oif = treq->iif;
	fl.fl_ip_dport = FUNC4(req)->rmt_port;
	fl.fl_ip_sport = FUNC4(req)->loc_port;
	FUNC10(req, &fl);

	opt = np->opt;
	if (opt && opt->srcrt) {
		struct rt0_hdr *rt0 = (struct rt0_hdr *) opt->srcrt;
		FUNC7(&final, &fl.fl6_dst);
		FUNC7(&fl.fl6_dst, rt0->addr);
		final_p = &final;
	}

	err = FUNC5(sk, &dst, &fl);
	if (err)
		goto done;
	if (final_p)
		FUNC7(&fl.fl6_dst, final_p);
	if ((err = FUNC16(FUNC12(sk), &dst, &fl, sk, 0)) < 0)
		goto done;

	skb = FUNC14(sk, dst, req);
	if (skb) {
		struct tcphdr *th = FUNC13(skb);

		th->check = FUNC15(skb->len,
					 &treq->loc_addr, &treq->rmt_addr,
					 FUNC0(th, skb->len, skb->csum));

		FUNC7(&fl.fl6_dst, &treq->rmt_addr);
		err = FUNC6(sk, skb, &fl, opt, 0);
		err = FUNC9(err);
	}

done:
	if (opt && opt != np->opt)
		FUNC11(sk, opt, opt->tot_len);
	FUNC1(dst);
	return err;
}