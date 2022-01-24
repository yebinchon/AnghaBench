#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xfrm_state {TYPE_1__* outer_mode; } ;
struct sk_buff {int local_df; int /*<<< orphan*/  protocol; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int (* output2 ) (struct xfrm_state*,struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IP6SKB_XFRM_TRANSFORMED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct xfrm_state*,struct sk_buff*) ; 
 int FUNC4 (struct xfrm_state*,struct sk_buff*) ; 

int FUNC5(struct xfrm_state *x, struct sk_buff *skb)
{
	int err;

	err = FUNC4(x, skb);
	if (err)
		return err;

	FUNC2(FUNC0(skb), 0, sizeof(*FUNC0(skb)));
#ifdef CONFIG_NETFILTER
	IP6CB(skb)->flags |= IP6SKB_XFRM_TRANSFORMED;
#endif

	skb->protocol = FUNC1(ETH_P_IPV6);
	skb->local_df = 1;

	return x->outer_mode->output2(x, skb);
}