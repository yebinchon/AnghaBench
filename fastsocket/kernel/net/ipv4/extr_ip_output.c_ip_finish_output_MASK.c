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
struct sk_buff {scalar_t__ len; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/ * xfrm; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPSKB_REROUTED ; 
 int FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*,int (*) (struct sk_buff*)) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb)
{
#if defined(CONFIG_NETFILTER) && defined(CONFIG_XFRM)
	/* Policy lookup after SNAT yielded a new policy */
	if (skb_dst(skb)->xfrm != NULL) {
		IPCB(skb)->flags |= IPSKB_REROUTED;
		return dst_output(skb);
	}
#endif
	if (skb->len > FUNC4(skb) && !FUNC6(skb))
		return FUNC3(skb, ip_finish_output2);
	else
		return FUNC2(skb);
}