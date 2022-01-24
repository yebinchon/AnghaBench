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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct net_device {TYPE_1__* header_ops; } ;
struct TYPE_2__ {scalar_t__ (* rebuild ) (struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 

int FUNC6(struct sk_buff *skb)
{
	struct net_device *dev = skb->dev;

	FUNC0(skb, FUNC4(skb));

	if (FUNC1(skb, dev, FUNC3(skb->protocol), NULL, NULL,
			    skb->len) < 0 &&
	    dev->header_ops->rebuild(skb))
		return 0;

	return FUNC2(skb);
}