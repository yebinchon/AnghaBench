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
struct TYPE_2__ {int /*<<< orphan*/  tx_probe_rq; } ;
struct ieee80211_device {TYPE_1__ softmac_stats; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct ieee80211_device*) ; 

void FUNC2(struct ieee80211_device *ieee)
{
	struct sk_buff *skb;

	skb = FUNC0(ieee);
	if (skb){
		FUNC1(skb, ieee);
		ieee->softmac_stats.tx_probe_rq++;
		//dev_kfree_skb_any(skb);//edit by thomas
	}
}