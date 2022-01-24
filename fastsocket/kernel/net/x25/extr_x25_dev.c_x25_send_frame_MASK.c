#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct x25_neigh {TYPE_1__* dev; } ;
struct sk_buff {TYPE_1__* dev; int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
#define  ARPHRD_ETHER 129 
#define  ARPHRD_X25 128 
 int /*<<< orphan*/  ETH_P_X25 ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 unsigned char* FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

void FUNC5(struct sk_buff *skb, struct x25_neigh *nb)
{
	unsigned char *dptr;

	FUNC4(skb);

	switch (nb->dev->type) {
		case ARPHRD_X25:
			dptr  = FUNC3(skb, 1);
			*dptr = 0x00;
			break;

#if defined(CONFIG_LLC) || defined(CONFIG_LLC_MODULE)
		case ARPHRD_ETHER:
			kfree_skb(skb);
			return;
#endif
		default:
			FUNC2(skb);
			return;
	}

	skb->protocol = FUNC1(ETH_P_X25);
	skb->dev      = nb->dev;

	FUNC0(skb);
}