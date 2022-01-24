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
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct sta_info {TYPE_1__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int priority; scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/ * vif; } ;
struct ieee80211_tx_info {int /*<<< orphan*/  flags; TYPE_2__ control; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  vif; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_AC_BK ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_TX_INTFL_NEED_TXPROCESSING ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*,char*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (struct sta_info*) ; 
 struct sk_buff* FUNC6 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct sta_info *sta,
				 struct sk_buff_head *frames)
{
	struct ieee80211_sub_if_data *sdata = sta->sdata;
	struct sk_buff *new_skb, *skb = FUNC6(frames);
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
	struct ieee80211_tx_info *info;

	if (FUNC2(hdr->frame_control))
		return;

	new_skb = FUNC5(sta);
	if (!new_skb)
		return;

	FUNC4(sdata, "appending QoS Null in MPSP towards %pM\n",
		sta->sta.addr);
	/*
	 * This frame has to be transmitted last. Assign lowest priority to
	 * make sure it cannot pass other frames when releasing multiple ACs.
	 */
	new_skb->priority = 1;
	FUNC7(new_skb, IEEE80211_AC_BK);
	FUNC3(sdata, new_skb);

	info = FUNC0(new_skb);
	info->control.vif = &sdata->vif;
	info->flags |= IEEE80211_TX_INTFL_NEED_TXPROCESSING;

	FUNC1(frames, new_skb);
}