#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_mark; int /*<<< orphan*/  sk_priority; int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {scalar_t__ data; int local_df; scalar_t__ len; int /*<<< orphan*/  mark; int /*<<< orphan*/  priority; int /*<<< orphan*/ * sk; int /*<<< orphan*/ * destructor; scalar_t__ truesize; int /*<<< orphan*/  data_len; struct sk_buff* next; } ;
struct TYPE_8__ {int /*<<< orphan*/  dst; } ;
struct rt6_info {int /*<<< orphan*/  rt6i_idev; TYPE_3__ u; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ipv6hdr {unsigned char nexthdr; struct in6_addr daddr; struct in6_addr saddr; int /*<<< orphan*/  hop_limit; } ;
struct ipv6_txoptions {scalar_t__ opt_nflen; scalar_t__ opt_flen; } ;
struct TYPE_7__ {int /*<<< orphan*/  hop_limit; scalar_t__ tclass; struct ipv6_txoptions* opt; } ;
struct ipv6_pinfo {scalar_t__ pmtudisc; TYPE_2__ cork; } ;
struct flowi {unsigned char proto; int fl6_flowlabel; struct in6_addr fl6_src; struct in6_addr fl6_dst; } ;
struct TYPE_6__ {struct flowi fl; scalar_t__ dst; } ;
struct inet_sock {TYPE_1__ cork; } ;
struct inet6_dev {int dummy; } ;
typedef  int __be32 ;
struct TYPE_10__ {int /*<<< orphan*/  icmp6_type; } ;
struct TYPE_9__ {struct sk_buff* frag_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICMP6_MIB_OUTMSGS ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned char IPPROTO_ICMPV6 ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUT ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 scalar_t__ IPV6_PMTUDISC_DO ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int) ; 
 TYPE_5__* FUNC8 (struct sk_buff*) ; 
 struct ipv6_pinfo* FUNC9 (struct sock*) ; 
 struct inet_sock* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct inet_sock*,struct ipv6_pinfo*) ; 
 struct inet6_dev* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct in6_addr*,struct in6_addr*) ; 
 struct ipv6hdr* FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,struct ipv6_txoptions*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,struct ipv6_txoptions*,unsigned char*,struct in6_addr**) ; 
 int FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*) ; 
 TYPE_4__* FUNC26 (struct sk_buff*) ; 
 struct net* FUNC27 (struct sock*) ; 

int FUNC28(struct sock *sk)
{
	struct sk_buff *skb, *tmp_skb;
	struct sk_buff **tail_skb;
	struct in6_addr final_dst_buf, *final_dst = &final_dst_buf;
	struct inet_sock *inet = FUNC10(sk);
	struct ipv6_pinfo *np = FUNC9(sk);
	struct net *net = FUNC27(sk);
	struct ipv6hdr *hdr;
	struct ipv6_txoptions *opt = np->cork.opt;
	struct rt6_info *rt = (struct rt6_info *)inet->cork.dst;
	struct flowi *fl = &inet->cork.fl;
	unsigned char proto = fl->proto;
	int err = 0;

	if ((skb = FUNC4(&sk->sk_write_queue)) == NULL)
		goto out;
	tail_skb = &(FUNC26(skb)->frag_list);

	/* move skb->data to ip header from ext header */
	if (skb->data < FUNC21(skb))
		FUNC5(skb, FUNC23(skb));
	while ((tmp_skb = FUNC4(&sk->sk_write_queue)) != NULL) {
		FUNC5(tmp_skb, FUNC22(skb));
		*tail_skb = tmp_skb;
		tail_skb = &(tmp_skb->next);
		skb->len += tmp_skb->len;
		skb->data_len += tmp_skb->len;
		skb->truesize += tmp_skb->truesize;
		tmp_skb->destructor = NULL;
		tmp_skb->sk = NULL;
	}

	/* Allow local fragmentation. */
	if (np->pmtudisc < IPV6_PMTUDISC_DO)
		skb->local_df = 1;

	FUNC14(final_dst, &fl->fl6_dst);
	FUNC5(skb, FUNC22(skb));
	if (opt && opt->opt_flen)
		FUNC16(skb, opt, &proto);
	if (opt && opt->opt_nflen)
		FUNC17(skb, opt, &proto, &final_dst);

	FUNC24(skb, sizeof(struct ipv6hdr));
	FUNC25(skb);
	hdr = FUNC15(skb);

	*(__be32*)hdr = fl->fl6_flowlabel |
		     FUNC7(0x60000000 | ((int)np->cork.tclass << 20));

	hdr->hop_limit = np->cork.hop_limit;
	hdr->nexthdr = proto;
	FUNC14(&hdr->saddr, &fl->fl6_src);
	FUNC14(&hdr->daddr, final_dst);

	skb->priority = sk->sk_priority;
	skb->mark = sk->sk_mark;

	FUNC20(skb, FUNC6(&rt->u.dst));
	FUNC3(net, rt->rt6i_idev, IPSTATS_MIB_OUT, skb->len);
	if (proto == IPPROTO_ICMPV6) {
		struct inet6_dev *idev = FUNC12(FUNC19(skb));

		FUNC0(net, idev, FUNC8(skb)->icmp6_type);
		FUNC1(net, idev, ICMP6_MIB_OUTMSGS);
	}

	err = FUNC13(skb);
	if (err) {
		if (err > 0)
			err = FUNC18(err);
		if (err)
			goto error;
	}

out:
	FUNC11(inet, np);
	return err;
error:
	FUNC2(net, rt->rt6i_idev, IPSTATS_MIB_OUTDISCARDS);
	goto out;
}