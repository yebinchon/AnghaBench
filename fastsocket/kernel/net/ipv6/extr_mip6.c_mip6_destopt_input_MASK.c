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
struct xfrm_state {int /*<<< orphan*/  lock; scalar_t__ coaddr; } ;
struct sk_buff {scalar_t__ data; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; } ;
struct ipv6_destopt_hdr {int nexthdr; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 struct ipv6hdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct xfrm_state *x, struct sk_buff *skb)
{
	struct ipv6hdr *iph = FUNC2(skb);
	struct ipv6_destopt_hdr *destopt = (struct ipv6_destopt_hdr *)skb->data;
	int err = destopt->nexthdr;

	FUNC3(&x->lock);
	if (!FUNC1(&iph->saddr, (struct in6_addr *)x->coaddr) &&
	    !FUNC0((struct in6_addr *)x->coaddr))
		err = -ENOENT;
	FUNC4(&x->lock);

	return err;
}