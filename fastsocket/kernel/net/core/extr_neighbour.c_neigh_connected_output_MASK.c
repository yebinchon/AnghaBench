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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  protocol; } ;
struct net_device {int dummy; } ;
struct neighbour {TYPE_1__* ops; int /*<<< orphan*/  lock; int /*<<< orphan*/  ha; struct net_device* dev; } ;
struct dst_entry {struct neighbour* neighbour; } ;
struct TYPE_2__ {int (* queue_xmit ) (struct sk_buff*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct dst_entry* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*) ; 

int FUNC9(struct sk_buff *skb)
{
	int err;
	struct dst_entry *dst = FUNC6(skb);
	struct neighbour *neigh = dst->neighbour;
	struct net_device *dev = neigh->dev;

	FUNC0(skb, FUNC7(skb));

	FUNC4(&neigh->lock);
	err = FUNC1(skb, dev, FUNC3(skb->protocol),
			      neigh->ha, NULL, skb->len);
	FUNC5(&neigh->lock);
	if (err >= 0)
		err = neigh->ops->queue_xmit(skb);
	else {
		err = -EINVAL;
		FUNC2(skb);
	}
	return err;
}