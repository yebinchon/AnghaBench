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
struct sk_buff {int dummy; } ;
struct ieee80211_network {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_ass_rq; } ;
struct ieee80211_device {int /*<<< orphan*/  associate_timer; TYPE_1__ softmac_stats; struct ieee80211_network current_network; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_device*) ; 
 struct sk_buff* FUNC3 (struct ieee80211_network*,struct ieee80211_device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct ieee80211_device*) ; 

void FUNC6(struct ieee80211_device *ieee)
{
	struct sk_buff* skb;
	struct ieee80211_network *beacon = &ieee->current_network;

	FUNC1(&ieee->associate_timer);

	FUNC0("Sending association request\n");

	ieee->softmac_stats.tx_ass_rq++;
	skb=FUNC3(beacon, ieee);
	if (!skb)
		FUNC2(ieee);
	else{
		FUNC5(skb, ieee);
		FUNC4(&ieee->associate_timer, jiffies + (HZ/2));
		//dev_kfree_skb_any(skb);//edit by thomas
	}
}