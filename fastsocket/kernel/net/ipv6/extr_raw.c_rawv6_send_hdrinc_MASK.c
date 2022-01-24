#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_mark; int /*<<< orphan*/  sk_priority; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  network_header; int /*<<< orphan*/  transport_header; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  mark; int /*<<< orphan*/  priority; } ;
struct TYPE_7__ {TYPE_3__* dev; } ;
struct TYPE_6__ {TYPE_2__ dst; } ;
struct rt6_info {int /*<<< orphan*/  rt6i_idev; TYPE_1__ u; } ;
struct ipv6hdr {int dummy; } ;
struct ipv6_pinfo {int /*<<< orphan*/  recverr; } ;
struct flowi {int dummy; } ;
struct TYPE_8__ {int mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int EFAULT ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUT ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 unsigned int MSG_DONTWAIT ; 
 unsigned int MSG_PROBE ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_LOCAL_OUT ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  dst_output ; 
 struct ipv6_pinfo* FUNC6 (struct sock*) ; 
 struct ipv6hdr* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int,struct flowi*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int FUNC10 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 struct sk_buff* FUNC16 (struct sock*,scalar_t__,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 

__attribute__((used)) static int FUNC18(struct sock *sk, void *from, int length,
			struct flowi *fl, struct rt6_info *rt,
			unsigned int flags)
{
	struct ipv6_pinfo *np = FUNC6(sk);
	struct ipv6hdr *iph;
	struct sk_buff *skb;
	int err;

	if (length > rt->u.dst.dev->mtu) {
		FUNC8(sk, EMSGSIZE, fl, rt->u.dst.dev->mtu);
		return -EMSGSIZE;
	}
	if (flags&MSG_PROBE)
		goto out;

	skb = FUNC16(sk,
				  length + FUNC2(rt->u.dst.dev) + 15,
				  flags & MSG_DONTWAIT, &err);
	if (skb == NULL)
		goto error;
	FUNC14(skb, FUNC3(rt->u.dst.dev));

	skb->priority = sk->sk_priority;
	skb->mark = sk->sk_mark;
	FUNC12(skb, FUNC5(&rt->u.dst));

	FUNC13(skb, length);
	FUNC15(skb);
	iph = FUNC7(skb);

	skb->ip_summed = CHECKSUM_NONE;

	skb->transport_header = skb->network_header;
	err = FUNC10((void *)iph, from, 0, length);
	if (err)
		goto error_fault;

	FUNC1(FUNC17(sk), rt->rt6i_idev, IPSTATS_MIB_OUT, skb->len);
	err = FUNC4(PF_INET6, NF_INET_LOCAL_OUT, skb, NULL, rt->u.dst.dev,
		      dst_output);
	if (err > 0)
		err = FUNC11(err);
	if (err)
		goto error;
out:
	return 0;

error_fault:
	err = -EFAULT;
	FUNC9(skb);
error:
	FUNC0(FUNC17(sk), rt->rt6i_idev, IPSTATS_MIB_OUTDISCARDS);
	if (err == -ENOBUFS && !np->recverr)
		err = 0;
	return err;
}