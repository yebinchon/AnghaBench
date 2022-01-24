#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_txb {unsigned int queue_index; int nr_frags; TYPE_3__** fragments; } ;
struct TYPE_5__ {int /*<<< orphan*/  multicast; } ;
struct ieee80211_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  rate; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* softmac_data_hard_start_xmit ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * skb_waitQ; scalar_t__ queue_stop; int /*<<< orphan*/  (* check_nic_enough_desc ) (int /*<<< orphan*/ ,unsigned int) ;TYPE_1__ stats; } ;
struct TYPE_6__ {scalar_t__ bMulticast; } ;
typedef  TYPE_2__ cb_desc ;
struct TYPE_7__ {scalar_t__ cb; } ;

/* Variables and functions */
 scalar_t__ MAX_DEV_ADDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_txb*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct ieee80211_txb *txb, struct ieee80211_device *ieee)
{

	unsigned int queue_index = txb->queue_index;
	unsigned long flags;
	int  i;
	cb_desc *tcb_desc = NULL;

	FUNC4(&ieee->lock,flags);

	/* called with 2nd parm 0, no tx mgmt lock required */
	FUNC0(ieee,0);

	/* update the tx status */
//	ieee->stats.tx_bytes += txb->payload_size;
//	ieee->stats.tx_packets++;
	tcb_desc = (cb_desc *)(txb->fragments[0]->cb + MAX_DEV_ADDR_SIZE);
	if(tcb_desc->bMulticast) {
		ieee->stats.multicast++;
	}
#if 1
	/* if xmit available, just xmit it immediately, else just insert it to the wait queue */
	for(i = 0; i < txb->nr_frags; i++) {
		if ((FUNC2(&ieee->skb_waitQ[queue_index]) != 0) ||
		(!ieee->check_nic_enough_desc(ieee->dev,queue_index))||\
		     (ieee->queue_stop)) {
			/* insert the skb packet to the wait queue */
			/* as for the completion function, it does not need
			 * to check it any more.
			 * */
			//printk("error:no descriptor left@queue_index %d, %d, %d\n", queue_index, skb_queue_len(&ieee->skb_waitQ[queue_index]), ieee->check_nic_enough_desc(ieee->dev,queue_index));
			//ieee80211_stop_queue(ieee);
			FUNC3(&ieee->skb_waitQ[queue_index], txb->fragments[i]);
		}else{
			ieee->softmac_data_hard_start_xmit(
					txb->fragments[i],
					ieee->dev,ieee->rate);
			//ieee->stats.tx_packets++;
			//ieee->stats.tx_bytes += txb->fragments[i]->len;
			//ieee->dev->trans_start = jiffies;
		}
	}
#endif
	FUNC1(txb);

//exit:
	FUNC5(&ieee->lock,flags);

}