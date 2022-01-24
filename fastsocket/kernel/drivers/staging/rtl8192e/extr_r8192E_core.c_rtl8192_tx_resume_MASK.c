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
struct sk_buff {scalar_t__ len; } ;
struct r8192_priv {struct ieee80211_device* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct ieee80211_device {scalar_t__ (* check_nic_enough_desc ) (struct net_device*,int) ;TYPE_1__ stats; int /*<<< orphan*/  (* softmac_data_hard_start_xmit ) (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * skb_waitQ; } ;

/* Variables and functions */
 int BK_QUEUE ; 
 int MGNT_QUEUE ; 
 int TXCMD_QUEUE ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct r8192_priv *priv = (struct r8192_priv *)FUNC0(dev);
	struct ieee80211_device *ieee = priv->ieee80211;
	struct sk_buff *skb;
	int queue_index;

	for(queue_index = BK_QUEUE; queue_index < TXCMD_QUEUE;queue_index++) {
		while((!FUNC2(&ieee->skb_waitQ[queue_index]))&&
				(priv->ieee80211->check_nic_enough_desc(dev,queue_index) > 0)) {
			/* 1. dequeue the packet from the wait queue */
			skb = FUNC1(&ieee->skb_waitQ[queue_index]);
			/* 2. tx the packet directly */
			ieee->softmac_data_hard_start_xmit(skb,dev,0/* rate useless now*/);
			#if 0
			if(queue_index!=MGNT_QUEUE) {
				ieee->stats.tx_packets++;
				ieee->stats.tx_bytes += skb->len;
			}
			#endif
		}
	}
}