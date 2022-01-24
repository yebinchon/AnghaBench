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
struct sk_buff {int len; } ;
struct ieee80211_tx_info {int band; int flags; int /*<<< orphan*/  hw_queue; } ;
struct ieee80211_tx_data {int /*<<< orphan*/  sta; int /*<<< orphan*/  skbs; } ;
struct TYPE_3__ {int /*<<< orphan*/ * hw_queue; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; struct ieee80211_local* local; } ;
struct TYPE_4__ {int flags; } ;
struct ieee80211_local {TYPE_2__ hw; } ;
typedef  scalar_t__ ieee80211_tx_result ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;

/* Variables and functions */
 int IEEE80211_HW_QUEUE_CONTROL ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_TX_OFFCHAN ; 
 scalar_t__ TX_DROP ; 
 scalar_t__ TX_QUEUED ; 
 int FUNC1 (struct ieee80211_local*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct ieee80211_sub_if_data*,struct ieee80211_tx_data*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_tx_data*) ; 
 size_t FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static bool FUNC8(struct ieee80211_sub_if_data *sdata,
			 struct sk_buff *skb, bool txpending,
			 enum ieee80211_band band)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_tx_data tx;
	ieee80211_tx_result res_prepare;
	struct ieee80211_tx_info *info = FUNC0(skb);
	bool result = true;
	int led_len;

	if (FUNC7(skb->len < 10)) {
		FUNC2(skb);
		return true;
	}

	/* initialises tx */
	led_len = skb->len;
	res_prepare = FUNC4(sdata, &tx, skb);

	if (FUNC7(res_prepare == TX_DROP)) {
		FUNC3(&local->hw, skb);
		return true;
	} else if (FUNC7(res_prepare == TX_QUEUED)) {
		return true;
	}

	info->band = band;

	/* set up hw_queue value early */
	if (!(info->flags & IEEE80211_TX_CTL_TX_OFFCHAN) ||
	    !(local->hw.flags & IEEE80211_HW_QUEUE_CONTROL))
		info->hw_queue =
			sdata->vif.hw_queue[FUNC6(skb)];

	if (!FUNC5(&tx))
		result = FUNC1(local, &tx.skbs, led_len,
					tx.sta, txpending);

	return result;
}