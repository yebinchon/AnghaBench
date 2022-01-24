#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  protocol; } ;
struct net_device {TYPE_1__* header_ops; } ;
struct neighbour {TYPE_3__* ops; int /*<<< orphan*/  lock; int /*<<< orphan*/  ha; struct net_device* dev; } ;
struct dst_entry {struct neighbour* neighbour; TYPE_2__* ops; int /*<<< orphan*/  hh; } ;
struct TYPE_6__ {int (* queue_xmit ) (struct sk_buff*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  protocol; } ;
struct TYPE_4__ {scalar_t__ cache; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,struct dst_entry*,struct neighbour*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct neighbour*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct neighbour*,struct dst_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct dst_entry* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct sk_buff *skb)
{
	struct dst_entry *dst = FUNC9(skb);
	struct neighbour *neigh;
	int rc = 0;

	if (!dst || !(neigh = dst->neighbour))
		goto discard;

	FUNC1(skb, FUNC10(skb));

	if (!FUNC4(neigh, skb)) {
		int err;
		struct net_device *dev = neigh->dev;
		if (dev->header_ops->cache && !dst->hh) {
			FUNC12(&neigh->lock);
			if (!dst->hh)
				FUNC5(neigh, dst, dst->ops->protocol);
			err = FUNC2(skb, dev, FUNC6(skb->protocol),
					      neigh->ha, NULL, skb->len);
			FUNC13(&neigh->lock);
		} else {
			FUNC7(&neigh->lock);
			err = FUNC2(skb, dev, FUNC6(skb->protocol),
					      neigh->ha, NULL, skb->len);
			FUNC8(&neigh->lock);
		}
		if (err >= 0)
			rc = neigh->ops->queue_xmit(skb);
		else
			goto out_kfree_skb;
	}
out:
	return rc;
discard:
	FUNC0("neigh_resolve_output: dst=%p neigh=%p\n",
		      dst, dst ? dst->neighbour : NULL);
out_kfree_skb:
	rc = -EINVAL;
	FUNC3(skb);
	goto out;
}