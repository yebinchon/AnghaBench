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
struct TYPE_6__ {scalar_t__ queue_index; } ;
typedef  TYPE_3__ cb_desc ;
struct TYPE_5__ {int (* rtl819x_tx ) (struct net_device*,struct sk_buff*) ;int /*<<< orphan*/  (* rtl819x_tx_cmd ) (struct net_device*,struct sk_buff*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  tx_headroom; } ;

/* Variables and functions */
 scalar_t__ MAX_DEV_ADDR_SIZE ; 
 scalar_t__ TXCMD_QUEUE ; 
 int /*<<< orphan*/  USB_HWDESC_HEADER_LEN ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,struct net_device**,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct sk_buff*) ; 
 int FUNC6 (struct net_device*,struct sk_buff*) ; 

int FUNC7(struct sk_buff *skb,struct net_device *dev)
{
	struct r8192_priv *priv = (struct r8192_priv *)FUNC0(dev);
	int ret;
	unsigned long flags;
        cb_desc *tcb_desc = (cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
        u8 queue_index = tcb_desc->queue_index;


	FUNC3(&priv->tx_lock,flags);

        FUNC1((unsigned char *)(skb->cb),&dev,sizeof(dev));
	if(queue_index == TXCMD_QUEUE) {
		FUNC2(skb, USB_HWDESC_HEADER_LEN);
		priv->ops->rtl819x_tx_cmd(dev, skb);
		ret = 1;
	        FUNC4(&priv->tx_lock,flags);
		return ret;
	} else {
		FUNC2(skb, priv->ieee80211->tx_headroom);
		ret = priv->ops->rtl819x_tx(dev, skb);
	}

	FUNC4(&priv->tx_lock,flags);

	return ret;
}