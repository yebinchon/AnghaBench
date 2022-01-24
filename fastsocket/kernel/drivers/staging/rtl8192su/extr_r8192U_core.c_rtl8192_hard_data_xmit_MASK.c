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
typedef  scalar_t__ u8 ;
struct sk_buff {scalar_t__ cb; } ;
struct r8192_priv {int /*<<< orphan*/  tx_lock; TYPE_2__* ops; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  dev ;
struct TYPE_6__ {scalar_t__ queue_index; int bTxEnableFwCalcDur; } ;
typedef  TYPE_3__ cb_desc ;
struct TYPE_5__ {int (* rtl819x_tx ) (struct net_device*,struct sk_buff*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  tx_headroom; } ;

/* Variables and functions */
 scalar_t__ MAX_DEV_ADDR_SIZE ; 
 scalar_t__ TXCMD_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,struct net_device**,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (struct net_device*,struct sk_buff*) ; 

void FUNC7(struct sk_buff *skb, struct net_device *dev, int rate)
{
	struct r8192_priv *priv = (struct r8192_priv *)FUNC1(dev);
	int ret;
	unsigned long flags;
	cb_desc *tcb_desc = (cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
	u8 queue_index = tcb_desc->queue_index;

	/* shall not be referred by command packet */
	FUNC0(queue_index != TXCMD_QUEUE);

	FUNC4(&priv->tx_lock,flags);

        FUNC2((unsigned char *)(skb->cb),&dev,sizeof(dev));
//	tcb_desc->RATRIndex = 7;
//	tcb_desc->bTxDisableRateFallBack = 1;
//	tcb_desc->bTxUseDriverAssingedRate = 1;
	tcb_desc->bTxEnableFwCalcDur = 1;
	FUNC3(skb, priv->ieee80211->tx_headroom);
	ret = priv->ops->rtl819x_tx(dev, skb);

	//priv->ieee80211->stats.tx_bytes+=(skb->len - priv->ieee80211->tx_headroom);
	//priv->ieee80211->stats.tx_packets++;

	FUNC5(&priv->tx_lock,flags);

//	return ret;
	return;
}