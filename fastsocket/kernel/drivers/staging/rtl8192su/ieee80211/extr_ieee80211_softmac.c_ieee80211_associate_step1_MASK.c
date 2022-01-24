#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct ieee80211_network {int dummy; } ;
struct TYPE_5__ {scalar_t__ expires; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_auth_rq; } ;
struct ieee80211_device {TYPE_2__ associate_timer; int /*<<< orphan*/  state; TYPE_1__ softmac_stats; struct ieee80211_network current_network; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  IEEE80211_ASSOCIATING_AUTHENTICATING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_device*) ; 
 struct sk_buff* FUNC3 (struct ieee80211_network*,struct ieee80211_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6(struct ieee80211_device *ieee)
{
	struct ieee80211_network *beacon = &ieee->current_network;
	struct sk_buff *skb;

	FUNC0("Stopping scan\n");

	ieee->softmac_stats.tx_auth_rq++;
	skb=FUNC3(beacon, ieee, 0);

	if (!skb)
		FUNC2(ieee);
	else{
		ieee->state = IEEE80211_ASSOCIATING_AUTHENTICATING ;
		FUNC0("Sending authentication request\n");
		//printk(KERN_WARNING "Sending authentication request\n");
		FUNC4(skb, ieee);
		//BUGON when you try to add_timer twice, using mod_timer may be better, john0709
		if(!FUNC5(&ieee->associate_timer)){
			ieee->associate_timer.expires = jiffies + (HZ / 2);
			FUNC1(&ieee->associate_timer);
		}
		//dev_kfree_skb_any(skb);//edit by thomas
	}
}