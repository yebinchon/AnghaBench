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
typedef  size_t u8 ;
typedef  int u16 ;
struct tid_ampdu_rx {int /*<<< orphan*/  last_rx; scalar_t__ timeout; } ;
struct TYPE_3__ {int /*<<< orphan*/ * tid_rx; } ;
struct sta_info {TYPE_1__ ampdu_mlme; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  pkt_type; scalar_t__ data; } ;
struct ieee80211_rx_status {int rx_flags; } ;
struct ieee80211_rx_data {TYPE_2__* sdata; struct sta_info* sta; struct ieee80211_local* local; struct sk_buff* skb; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; } ;
struct ieee80211_hdr {int frame_control; int /*<<< orphan*/  seq_ctrl; } ;
struct TYPE_4__ {int /*<<< orphan*/  work; int /*<<< orphan*/  skb_queue; } ;

/* Variables and functions */
 size_t IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK ; 
 size_t IEEE80211_QOS_CTL_ACK_POLICY_MASK ; 
 size_t IEEE80211_QOS_CTL_ACK_POLICY_NORMAL ; 
 size_t IEEE80211_QOS_CTL_TID_MASK ; 
 int IEEE80211_RX_RA_MATCH ; 
 int IEEE80211_SCTL_FRAG ; 
 int /*<<< orphan*/  IEEE80211_SDATA_QUEUE_TYPE_FRAME ; 
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_STYPE_NULLFUNC ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*,struct sk_buff*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 size_t* FUNC3 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*,struct tid_ampdu_rx*,struct sk_buff*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct tid_ampdu_rx* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct ieee80211_rx_data *rx,
				       struct sk_buff_head *frames)
{
	struct sk_buff *skb = rx->skb;
	struct ieee80211_local *local = rx->local;
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
	struct ieee80211_rx_status *status = FUNC0(skb);
	struct sta_info *sta = rx->sta;
	struct tid_ampdu_rx *tid_agg_rx;
	u16 sc;
	u8 tid, ack_policy;

	if (!FUNC4(hdr->frame_control))
		goto dont_reorder;

	/*
	 * filter the QoS data rx stream according to
	 * STA/TID and check if this STA/TID is on aggregation
	 */

	if (!sta)
		goto dont_reorder;

	ack_policy = *FUNC3(hdr) &
		     IEEE80211_QOS_CTL_ACK_POLICY_MASK;
	tid = *FUNC3(hdr) & IEEE80211_QOS_CTL_TID_MASK;

	tid_agg_rx = FUNC8(sta->ampdu_mlme.tid_rx[tid]);
	if (!tid_agg_rx)
		goto dont_reorder;

	/* qos null data frames are excluded */
	if (FUNC10(hdr->frame_control & FUNC2(IEEE80211_STYPE_NULLFUNC)))
		goto dont_reorder;

	/* not part of a BA session */
	if (ack_policy != IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK &&
	    ack_policy != IEEE80211_QOS_CTL_ACK_POLICY_NORMAL)
		goto dont_reorder;

	/* not actually part of this BA session */
	if (!(status->rx_flags & IEEE80211_RX_RA_MATCH))
		goto dont_reorder;

	/* new, potentially un-ordered, ampdu frame - process it */

	/* reset session timer */
	if (tid_agg_rx->timeout)
		tid_agg_rx->last_rx = jiffies;

	/* if this mpdu is fragmented - terminate rx aggregation session */
	sc = FUNC7(hdr->seq_ctrl);
	if (sc & IEEE80211_SCTL_FRAG) {
		skb->pkt_type = IEEE80211_SDATA_QUEUE_TYPE_FRAME;
		FUNC9(&rx->sdata->skb_queue, skb);
		FUNC5(&local->hw, &rx->sdata->work);
		return;
	}

	/*
	 * No locking needed -- we will only ever process one
	 * RX packet at a time, and thus own tid_agg_rx. All
	 * other code manipulating it needs to (and does) make
	 * sure that we cannot get to it any more before doing
	 * anything with it.
	 */
	if (FUNC6(rx->sdata, tid_agg_rx, skb,
					     frames))
		return;

 dont_reorder:
	FUNC1(frames, skb);
}