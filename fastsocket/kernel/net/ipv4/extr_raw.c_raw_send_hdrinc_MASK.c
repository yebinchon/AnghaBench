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
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_mark; int /*<<< orphan*/  sk_priority; } ;
struct sk_buff {int /*<<< orphan*/  network_header; int /*<<< orphan*/  transport_header; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  mark; int /*<<< orphan*/  priority; } ;
struct TYPE_8__ {TYPE_4__* dev; } ;
struct TYPE_7__ {TYPE_2__ dst; } ;
struct rtable {TYPE_1__ u; scalar_t__ rt_src; int /*<<< orphan*/  rt_dst; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; scalar_t__ protocol; scalar_t__ check; int /*<<< orphan*/  id; int /*<<< orphan*/  tot_len; scalar_t__ saddr; } ;
struct inet_sock {int /*<<< orphan*/  recverr; int /*<<< orphan*/  dport; } ;
struct icmphdr {int /*<<< orphan*/  type; } ;
struct TYPE_9__ {size_t mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int EFAULT ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 scalar_t__ IPPROTO_ICMP ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 unsigned int MSG_DONTWAIT ; 
 unsigned int MSG_PROBE ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_LOCAL_OUT ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  dst_output ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC7 (struct sock*) ; 
 scalar_t__ FUNC8 (unsigned char*,int) ; 
 struct iphdr* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct iphdr*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (void*,void*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 scalar_t__ FUNC19 (struct sk_buff*) ; 
 struct sk_buff* FUNC20 (struct sock*,scalar_t__,unsigned int,int*) ; 
 struct net* FUNC21 (struct sock*) ; 

__attribute__((used)) static int FUNC22(struct sock *sk, void *from, size_t length,
			struct rtable *rt,
			unsigned int flags)
{
	struct inet_sock *inet = FUNC7(sk);
	struct net *net = FUNC21(sk);
	struct iphdr *iph;
	struct sk_buff *skb;
	unsigned int iphlen;
	int err;

	if (length > rt->u.dst.dev->mtu) {
		FUNC10(sk, EMSGSIZE, rt->rt_dst, inet->dport,
			       rt->u.dst.dev->mtu);
		return -EMSGSIZE;
	}
	if (flags&MSG_PROBE)
		goto out;

	skb = FUNC20(sk,
				  length + FUNC1(rt->u.dst.dev) + 15,
				  flags & MSG_DONTWAIT, &err);
	if (skb == NULL)
		goto error;
	FUNC17(skb, FUNC2(rt->u.dst.dev));

	skb->priority = sk->sk_priority;
	skb->mark = sk->sk_mark;
	FUNC15(skb, FUNC4(&rt->u.dst));

	FUNC18(skb);
	iph = FUNC9(skb);
	FUNC16(skb, length);

	skb->ip_summed = CHECKSUM_NONE;

	skb->transport_header = skb->network_header;
	err = -EFAULT;
	if (FUNC13((void *)iph, from, 0, length))
		goto error_free;

	iphlen = iph->ihl * 4;

	/*
	 * We don't want to modify the ip header, but we do need to
	 * be sure that it won't cause problems later along the network
	 * stack.  Specifically we want to make sure that iph->ihl is a
	 * sane value.  If ihl points beyond the length of the buffer passed
	 * in, reject the frame as invalid
	 */
	err = -EINVAL;
	if (iphlen > length)
		goto error_free;

	if (iphlen >= sizeof(*iph)) {
		if (!iph->saddr)
			iph->saddr = rt->rt_src;
		iph->check   = 0;
		iph->tot_len = FUNC5(length);
		if (!iph->id)
			FUNC11(iph, &rt->u.dst, NULL);

		iph->check = FUNC8((unsigned char *)iph, iph->ihl);
	}
	if (iph->protocol == IPPROTO_ICMP)
		FUNC6(net, ((struct icmphdr *)
			FUNC19(skb))->type);

	err = FUNC3(PF_INET, NF_INET_LOCAL_OUT, skb, NULL, rt->u.dst.dev,
		      dst_output);
	if (err > 0)
		err = FUNC14(err);
	if (err)
		goto error;
out:
	return 0;

error_free:
	FUNC12(skb);
error:
	FUNC0(net, IPSTATS_MIB_OUTDISCARDS);
	if (err == -ENOBUFS && !inet->recverr)
		err = 0;
	return err;
}