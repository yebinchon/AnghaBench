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
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 

__attribute__((used)) static __be16 FUNC1(struct sk_buff *skb,
					     struct net_device *dev)
{
	struct net_device *tmp_dev = skb->dev;
	__be16 ret;

	ret = FUNC0(skb, dev);
	skb->dev = tmp_dev;
	return ret;
}