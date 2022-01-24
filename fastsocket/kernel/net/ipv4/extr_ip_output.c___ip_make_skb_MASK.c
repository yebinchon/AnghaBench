#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {scalar_t__ sk_protocol; int /*<<< orphan*/  sk_mark; int /*<<< orphan*/  sk_priority; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; scalar_t__ len; int local_df; int /*<<< orphan*/  mark; int /*<<< orphan*/  priority; int /*<<< orphan*/ * sk; int /*<<< orphan*/ * destructor; scalar_t__ truesize; int /*<<< orphan*/  data_len; struct sk_buff* next; } ;
struct TYPE_3__ {int /*<<< orphan*/  dst; } ;
struct rtable {scalar_t__ rt_type; TYPE_1__ u; int /*<<< orphan*/  rt_dst; int /*<<< orphan*/  rt_src; } ;
struct net {int dummy; } ;
struct iphdr {int version; int ihl; scalar_t__ protocol; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  ttl; int /*<<< orphan*/  frag_off; int /*<<< orphan*/  tos; } ;
struct ip_options {int optlen; } ;
struct inet_sock {scalar_t__ pmtudisc; int /*<<< orphan*/  tos; int /*<<< orphan*/  mc_ttl; } ;
struct inet_cork {int flags; int /*<<< orphan*/ * dst; int /*<<< orphan*/  addr; struct ip_options* opt; } ;
struct icmphdr {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_4__ {struct sk_buff* frag_list; } ;

/* Variables and functions */
 int IPCORK_OPT ; 
 scalar_t__ IPPROTO_ICMP ; 
 int /*<<< orphan*/  IP_DF ; 
 scalar_t__ IP_PMTUDISC_DO ; 
 scalar_t__ RTN_MULTICAST ; 
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct inet_cork*) ; 
 scalar_t__ FUNC7 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct ip_options*,int /*<<< orphan*/ ,struct rtable*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iphdr*,int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct inet_sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 TYPE_2__* FUNC15 (struct sk_buff*) ; 
 scalar_t__ FUNC16 (struct sk_buff*) ; 
 struct net* FUNC17 (struct sock*) ; 

struct sk_buff *FUNC18(struct sock *sk,
			      struct sk_buff_head *queue,
			      struct inet_cork *cork)
{
	struct sk_buff *skb, *tmp_skb;
	struct sk_buff **tail_skb;
	struct inet_sock *inet = FUNC5(sk);
	struct net *net = FUNC17(sk);
	struct ip_options *opt = NULL;
	struct rtable *rt = (struct rtable *)cork->dst;
	struct iphdr *iph;
	__be16 df = 0;
	__u8 ttl;

	if ((skb = FUNC0(queue)) == NULL)
		goto out;
	tail_skb = &(FUNC15(skb)->frag_list);

	/* move skb->data to ip header from ext header */
	if (skb->data < FUNC12(skb))
		FUNC1(skb, FUNC14(skb));
	while ((tmp_skb = FUNC0(queue)) != NULL) {
		FUNC1(tmp_skb, FUNC13(skb));
		*tail_skb = tmp_skb;
		tail_skb = &(tmp_skb->next);
		skb->len += tmp_skb->len;
		skb->data_len += tmp_skb->len;
		skb->truesize += tmp_skb->truesize;
		tmp_skb->destructor = NULL;
		tmp_skb->sk = NULL;
	}

	/* Unless user demanded real pmtu discovery (IP_PMTUDISC_DO), we allow
	 * to fragment the frame generated here. No matter, what transforms
	 * how transforms change size of the packet, it will come out.
	 */
	if (inet->pmtudisc < IP_PMTUDISC_DO)
		skb->local_df = 1;

	/* DF bit is set when we want to see DF on outgoing frames.
	 * If local_df is set too, we still allow to fragment this frame
	 * locally. */
	if (inet->pmtudisc >= IP_PMTUDISC_DO ||
	    (skb->len <= FUNC2(&rt->u.dst) &&
	     FUNC7(sk, &rt->u.dst)))
		df = FUNC3(IP_DF);

	if (cork->flags & IPCORK_OPT)
		opt = cork->opt;

	if (rt->rt_type == RTN_MULTICAST)
		ttl = inet->mc_ttl;
	else
		ttl = FUNC10(inet, &rt->u.dst);

	iph = (struct iphdr *)skb->data;
	iph->version = 4;
	iph->ihl = 5;
	if (opt) {
		iph->ihl += opt->optlen>>2;
		FUNC8(skb, opt, cork->addr, rt, 0);
	}
	iph->tos = inet->tos;
	iph->frag_off = df;
	FUNC9(iph, &rt->u.dst, sk);
	iph->ttl = ttl;
	iph->protocol = sk->sk_protocol;
	iph->saddr = rt->rt_src;
	iph->daddr = rt->rt_dst;

	skb->priority = sk->sk_priority;
	skb->mark = sk->sk_mark;
	/*
	 * Steal rt from cork.dst to avoid a pair of atomic_inc/atomic_dec
	 * on dst refcount
	 */
	cork->dst = NULL;
	FUNC11(skb, &rt->u.dst);

	if (iph->protocol == IPPROTO_ICMP)
		FUNC4(net, ((struct icmphdr *)
			FUNC16(skb))->type);

	/* Netfilter gets whole the not fragmented skb. */
	FUNC6(cork);
out:
	return skb;
}