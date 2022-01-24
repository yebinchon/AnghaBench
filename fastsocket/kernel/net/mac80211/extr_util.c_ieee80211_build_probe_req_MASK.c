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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  vif; struct ieee80211_local* local; } ;
struct ieee80211_mgmt {int /*<<< orphan*/  bssid; int /*<<< orphan*/  da; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; } ;
struct ieee80211_channel {int /*<<< orphan*/  band; int /*<<< orphan*/  center_freq; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_TX_INTFL_DONT_ENCRYPT ; 
 int FUNC1 (struct ieee80211_local*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__ const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__ const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

struct sk_buff *FUNC8(struct ieee80211_sub_if_data *sdata,
					  u8 *dst, u32 ratemask,
					  struct ieee80211_channel *chan,
					  const u8 *ssid, size_t ssid_len,
					  const u8 *ie, size_t ie_len,
					  bool directed)
{
	struct ieee80211_local *local = sdata->local;
	struct sk_buff *skb;
	struct ieee80211_mgmt *mgmt;
	u8 chan_no;
	int ies_len;

	/*
	 * Do not send DS Channel parameter for directed probe requests
	 * in order to maximize the chance that we get a response.  Some
	 * badly-behaved APs don't respond when this parameter is included.
	 */
	if (directed)
		chan_no = 0;
	else
		chan_no = FUNC2(chan->center_freq);

	skb = FUNC3(&local->hw, &sdata->vif,
				     ssid, ssid_len, 100 + ie_len);
	if (!skb)
		return NULL;

	ies_len = FUNC1(local, FUNC6(skb),
					   FUNC7(skb),
					   ie, ie_len, chan->band,
					   ratemask, chan_no);
	FUNC5(skb, ies_len);

	if (dst) {
		mgmt = (struct ieee80211_mgmt *) skb->data;
		FUNC4(mgmt->da, dst, ETH_ALEN);
		FUNC4(mgmt->bssid, dst, ETH_ALEN);
	}

	FUNC0(skb)->flags |= IEEE80211_TX_INTFL_DONT_ENCRYPT;

	return skb;
}