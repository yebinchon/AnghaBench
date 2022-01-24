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
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr_3addr {int /*<<< orphan*/  seq_ctl; } ;
struct TYPE_4__ {int /*<<< orphan*/  swtxawake; } ;
struct TYPE_3__ {scalar_t__ txb; } ;
struct ieee80211_device {int softmac_features; int* seq_ctrl; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; TYPE_2__ softmac_stats; scalar_t__ queue_stop; TYPE_1__ tx_pending; int /*<<< orphan*/  basic_rate; int /*<<< orphan*/  (* softmac_data_hard_start_xmit ) (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int IEEE_SOFTMAC_SINGLE_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sk_buff* FUNC1 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct ieee80211_device *ieee)
{

	unsigned long flags;
	struct sk_buff *skb;
	struct ieee80211_hdr_3addr  *header;

	FUNC6(&ieee->lock,flags);
	if (! ieee->queue_stop) goto exit;

	ieee->queue_stop = 0;

	if(ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE){
		while (!ieee->queue_stop && (skb = FUNC1(ieee))){

			header = (struct ieee80211_hdr_3addr  *) skb->data;

			header->seq_ctl = FUNC0(ieee->seq_ctrl[0] << 4);

			if (ieee->seq_ctrl[0] == 0xFFF)
				ieee->seq_ctrl[0] = 0;
			else
				ieee->seq_ctrl[0]++;

			//printk(KERN_ALERT "ieee80211_wake_queue \n");
			ieee->softmac_data_hard_start_xmit(skb,ieee->dev,ieee->basic_rate);
			FUNC2(skb);//edit by thomas
		}
	}
	if (!ieee->queue_stop && ieee->tx_pending.txb)
		FUNC3(ieee);

	if (!ieee->queue_stop && FUNC4(ieee->dev)){
		ieee->softmac_stats.swtxawake++;
		FUNC5(ieee->dev);
	}

exit :
	FUNC7(&ieee->lock,flags);
}