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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct r8180_priv {int /*<<< orphan*/  tx_lock; TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct TYPE_4__ {TYPE_1__ stats; int /*<<< orphan*/  basic_rate; scalar_t__ bHwRadioOff; } ;

/* Variables and functions */
 int MANAGE_PRIORITY ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct sk_buff *skb,struct net_device *dev)
{
	struct r8180_priv *priv = (struct r8180_priv *)FUNC1(dev);
	unsigned long flags;
	int priority;

	priority = MANAGE_PRIORITY;

	FUNC4(&priv->tx_lock,flags);

	if (priv->ieee80211->bHwRadioOff) {
		FUNC5(&priv->tx_lock,flags);
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	FUNC3(dev, skb->data, skb->len, priority,
		0, 0,FUNC2(priv->ieee80211->basic_rate));

	priv->ieee80211->stats.tx_bytes+=skb->len;
	priv->ieee80211->stats.tx_packets++;
	FUNC5(&priv->tx_lock,flags);

	FUNC0(skb);
	return NETDEV_TX_OK;
}