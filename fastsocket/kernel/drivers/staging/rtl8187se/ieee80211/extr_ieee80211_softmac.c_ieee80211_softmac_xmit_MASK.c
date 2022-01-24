#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_txb {int nr_frags; TYPE_3__** fragments; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct TYPE_5__ {int frag; struct ieee80211_txb* txb; } ;
struct ieee80211_device {int /*<<< orphan*/  lock; TYPE_4__* dev; TYPE_2__ stats; int /*<<< orphan*/  rate; int /*<<< orphan*/  (* softmac_data_hard_start_xmit ) (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ;TYPE_1__ tx_pending; scalar_t__ queue_stop; } ;
struct TYPE_8__ {int /*<<< orphan*/  trans_start; } ;
struct TYPE_7__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_txb*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 

void FUNC5(struct ieee80211_txb *txb, struct ieee80211_device *ieee)
{


	unsigned long flags;
	int  i;

	FUNC2(&ieee->lock,flags);

	/* called with 2nd parm 0, no tx mgmt lock required */
	FUNC0(ieee,0);

	for(i = 0; i < txb->nr_frags; i++) {

		if (ieee->queue_stop){
			ieee->tx_pending.txb = txb;
			ieee->tx_pending.frag = i;
			goto exit;
		}else{
			ieee->softmac_data_hard_start_xmit(
				txb->fragments[i],
				ieee->dev,ieee->rate);
				//(i+1)<txb->nr_frags);
			ieee->stats.tx_packets++;
			ieee->stats.tx_bytes += txb->fragments[i]->len;
			ieee->dev->trans_start = jiffies;
		}
	}

	FUNC1(txb);

	exit:
	FUNC3(&ieee->lock,flags);

}