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
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  xfrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPSKB_REROUTED ; 
 int /*<<< orphan*/  IPSKB_XFRM_TRANSFORMED ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb)
{
#ifdef CONFIG_NETFILTER
	if (!skb_dst(skb)->xfrm) {
		IPCB(skb)->flags |= IPSKB_REROUTED;
		return dst_output(skb);
	}

	IPCB(skb)->flags |= IPSKB_XFRM_TRANSFORMED;
#endif

	skb->protocol = FUNC2(ETH_P_IP);
	return FUNC4(skb);
}