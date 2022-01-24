#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct ieee80211_network {int dummy; } ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_ass_rq; } ;
struct ieee80211_device {TYPE_2__ associate_timer; TYPE_1__ softmac_stats; struct ieee80211_network current_network; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_device*) ; 
 struct sk_buff* FUNC4 (struct ieee80211_network*,struct ieee80211_device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void FUNC7(struct ieee80211_device *ieee)
{
	struct sk_buff* skb;
	struct ieee80211_network *beacon = &ieee->current_network;

	FUNC2(&ieee->associate_timer);

	FUNC0("Sending association request\n");
	ieee->softmac_stats.tx_ass_rq++;
	skb=FUNC4(beacon, ieee);
	if (!skb)
		FUNC3(ieee);
	else{
		FUNC5(skb, ieee);
		if (!FUNC6(&ieee->associate_timer)){
		ieee->associate_timer.expires = jiffies + (HZ / 2);
		FUNC1(&ieee->associate_timer);
		}
		//dev_kfree_skb_any(skb);//edit by thomas
	}
}