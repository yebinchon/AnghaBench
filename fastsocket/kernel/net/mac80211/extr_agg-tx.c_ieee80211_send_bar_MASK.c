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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * addr; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; struct ieee80211_local* local; } ;
struct TYPE_4__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ieee80211_bar {void* start_seq_num; void* control; int /*<<< orphan*/  ta; int /*<<< orphan*/  ra; void* frame_control; } ;
struct TYPE_6__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ IEEE80211_BAR_CTRL_ACK_POLICY_NORMAL ; 
 scalar_t__ IEEE80211_BAR_CTRL_CBMTID_COMPRESSED_BA ; 
 int IEEE80211_BAR_CTRL_TID_INFO_SHIFT ; 
 int IEEE80211_FTYPE_CTL ; 
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_STYPE_BACK_REQ ; 
 int IEEE80211_TX_CTL_REQ_TX_STATUS ; 
 int IEEE80211_TX_INTFL_DONT_ENCRYPT ; 
 void* FUNC1 (int) ; 
 struct sk_buff* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_bar*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 struct ieee80211_sub_if_data* FUNC8 (struct ieee80211_vif*) ; 

void FUNC9(struct ieee80211_vif *vif, u8 *ra, u16 tid, u16 ssn)
{
	struct ieee80211_sub_if_data *sdata = FUNC8(vif);
	struct ieee80211_local *local = sdata->local;
	struct sk_buff *skb;
	struct ieee80211_bar *bar;
	u16 bar_control = 0;

	skb = FUNC2(sizeof(*bar) + local->hw.extra_tx_headroom);
	if (!skb)
		return;

	FUNC7(skb, local->hw.extra_tx_headroom);
	bar = (struct ieee80211_bar *)FUNC6(skb, sizeof(*bar));
	FUNC5(bar, 0, sizeof(*bar));
	bar->frame_control = FUNC1(IEEE80211_FTYPE_CTL |
					 IEEE80211_STYPE_BACK_REQ);
	FUNC4(bar->ra, ra, ETH_ALEN);
	FUNC4(bar->ta, sdata->vif.addr, ETH_ALEN);
	bar_control |= (u16)IEEE80211_BAR_CTRL_ACK_POLICY_NORMAL;
	bar_control |= (u16)IEEE80211_BAR_CTRL_CBMTID_COMPRESSED_BA;
	bar_control |= (u16)(tid << IEEE80211_BAR_CTRL_TID_INFO_SHIFT);
	bar->control = FUNC1(bar_control);
	bar->start_seq_num = FUNC1(ssn);

	FUNC0(skb)->flags |= IEEE80211_TX_INTFL_DONT_ENCRYPT |
					IEEE80211_TX_CTL_REQ_TX_STATUS;
	FUNC3(sdata, skb, tid);
}