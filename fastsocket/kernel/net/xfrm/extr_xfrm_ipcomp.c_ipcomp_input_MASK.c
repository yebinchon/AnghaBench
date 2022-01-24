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
struct xfrm_state {int dummy; } ;
struct sk_buff {scalar_t__ network_header; scalar_t__ transport_header; scalar_t__ data; int /*<<< orphan*/  ip_summed; } ;
struct ip_comp_hdr {int nexthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int FUNC1 (struct xfrm_state*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 

int FUNC3(struct xfrm_state *x, struct sk_buff *skb)
{
	int nexthdr;
	int err = -ENOMEM;
	struct ip_comp_hdr *ipch;

	if (FUNC2(skb))
		goto out;

	skb->ip_summed = CHECKSUM_NONE;

	/* Remove ipcomp header and decompress original payload */
	ipch = (void *)skb->data;
	nexthdr = ipch->nexthdr;

	skb->transport_header = skb->network_header + sizeof(*ipch);
	FUNC0(skb, sizeof(*ipch));
	err = FUNC1(x, skb);
	if (err)
		goto out;

	err = nexthdr;

out:
	return err;
}