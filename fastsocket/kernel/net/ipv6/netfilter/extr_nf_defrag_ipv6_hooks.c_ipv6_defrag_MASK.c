#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {scalar_t__ nfct; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned int NF_ACCEPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,struct sk_buff*,struct net_device*,struct net_device*,int (*) (struct sk_buff*),scalar_t__) ; 
 scalar_t__ NF_IP6_PRI_CONNTRACK_DEFRAG ; 
 unsigned int NF_STOLEN ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC4(unsigned int hooknum,
				struct sk_buff *skb,
				const struct net_device *in,
				const struct net_device *out,
				int (*okfn)(struct sk_buff *))
{
	struct sk_buff *reasm;

	/* Previously seen (loopback)?	*/
	if (skb->nfct)
		return NF_ACCEPT;

	reasm = FUNC3(skb, FUNC1(hooknum, skb));
	/* queued */
	if (reasm == NULL)
		return NF_STOLEN;

	/* error occured or not fragmented */
	if (reasm == skb)
		return NF_ACCEPT;

	FUNC2(reasm);

	FUNC0(PF_INET6, hooknum, reasm,
		       (struct net_device *) in, (struct net_device *) out,
		       okfn, NF_IP6_PRI_CONNTRACK_DEFRAG + 1);

	return NF_STOLEN;
}