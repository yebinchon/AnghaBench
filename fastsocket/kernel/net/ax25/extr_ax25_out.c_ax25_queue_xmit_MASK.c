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
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 unsigned char* FUNC3 (struct sk_buff*,int) ; 

void FUNC4(struct sk_buff *skb, struct net_device *dev)
{
	unsigned char *ptr;

	skb->protocol = FUNC1(skb, FUNC0(dev));

	ptr  = FUNC3(skb, 1);
	*ptr = 0x00;			/* KISS */

	FUNC2(skb);
}