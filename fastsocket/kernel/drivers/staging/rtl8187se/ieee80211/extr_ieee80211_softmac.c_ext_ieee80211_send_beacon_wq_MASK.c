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
struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct TYPE_5__ {scalar_t__ beacon_interval; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_beacons; } ;
struct ieee80211_device {TYPE_3__ beacon_timer; scalar_t__ beacon_txing; TYPE_2__ current_network; TYPE_1__ softmac_stats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct ieee80211_device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct ieee80211_device*) ; 

void FUNC5(struct ieee80211_device *ieee)
{
	struct sk_buff *skb;

	//unsigned long flags;

	skb = FUNC3(ieee);

	if (skb){
		FUNC4(skb, ieee);
		ieee->softmac_stats.tx_beacons++;
		FUNC2(skb);//edit by thomas
	}


	//printk(KERN_WARNING "[1] beacon sending!\n");
	ieee->beacon_timer.expires = jiffies +
		(FUNC0( ieee->current_network.beacon_interval -5));

	//spin_lock_irqsave(&ieee->beacon_lock,flags);
	if(ieee->beacon_txing)
		FUNC1(&ieee->beacon_timer);
	//spin_unlock_irqrestore(&ieee->beacon_lock,flags);
}