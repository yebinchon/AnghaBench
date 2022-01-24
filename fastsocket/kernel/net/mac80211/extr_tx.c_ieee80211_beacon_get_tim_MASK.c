#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
typedef  int /*<<< orphan*/  txrc ;
struct sk_buff {scalar_t__ data; scalar_t__ len; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_19__ {int idx; } ;
struct ieee80211_tx_rate_control {int rate_idx_mask; int max_rate_idx; int bss; TYPE_9__* sband; TYPE_8__ reported_rate; struct sk_buff* skb; int /*<<< orphan*/ * bss_conf; struct ieee80211_hw* hw; } ;
struct TYPE_12__ {struct ieee80211_vif* vif; } ;
struct ieee80211_tx_info {int flags; int band; TYPE_1__ control; } ;
struct TYPE_11__ {scalar_t__ type; int /*<<< orphan*/  bss_conf; int /*<<< orphan*/  chanctx_conf; } ;
struct ieee80211_if_mesh {int /*<<< orphan*/  ps; TYPE_3__* sync_ops; int /*<<< orphan*/  beacon; } ;
struct ieee80211_if_ibss {int /*<<< orphan*/  presp; } ;
struct ieee80211_if_ap {int /*<<< orphan*/  ps; int /*<<< orphan*/  beacon; } ;
struct TYPE_13__ {struct ieee80211_if_mesh mesh; struct ieee80211_if_ibss ibss; struct ieee80211_if_ap ap; } ;
struct ieee80211_sub_if_data {int* rc_rateidx_mask; TYPE_10__ vif; TYPE_2__ u; } ;
struct TYPE_18__ {TYPE_6__* wiphy; } ;
struct ieee80211_local {TYPE_7__ hw; scalar_t__ tx_headroom; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_16__ {TYPE_4__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_5__ def; } ;
struct beacon_data {scalar_t__ tail_len; scalar_t__ tail; scalar_t__ head_len; scalar_t__ head; } ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_20__ {int n_bitrates; } ;
struct TYPE_17__ {TYPE_9__** bands; } ;
struct TYPE_15__ {int band; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* adjust_tbtt ) (struct ieee80211_sub_if_data*) ;} ;

/* Variables and functions */
 int IEEE80211_FTYPE_MGMT ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_STYPE_BEACON ; 
 int IEEE80211_TX_CTL_ASSIGN_SEQ ; 
 int IEEE80211_TX_CTL_CLEAR_PS_FILT ; 
 int IEEE80211_TX_CTL_FIRST_FRAGMENT ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 int IEEE80211_TX_INTFL_DONT_ENCRYPT ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct sk_buff* FUNC3 (scalar_t__) ; 
 int FUNC4 (int) ; 
 struct ieee80211_local* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sub_if_data*) ; 
 scalar_t__ FUNC8 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_tx_rate_control*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,struct ieee80211_tx_rate_control*) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_sub_if_data*) ; 
 struct ieee80211_sub_if_data* FUNC18 (struct ieee80211_vif*) ; 

struct sk_buff *FUNC19(struct ieee80211_hw *hw,
					 struct ieee80211_vif *vif,
					 u16 *tim_offset, u16 *tim_length)
{
	struct ieee80211_local *local = FUNC5(hw);
	struct sk_buff *skb = NULL;
	struct ieee80211_tx_info *info;
	struct ieee80211_sub_if_data *sdata = NULL;
	enum ieee80211_band band;
	struct ieee80211_tx_rate_control txrc;
	struct ieee80211_chanctx_conf *chanctx_conf;

	FUNC13();

	sdata = FUNC18(vif);
	chanctx_conf = FUNC12(sdata->vif.chanctx_conf);

	if (!FUNC7(sdata) || !chanctx_conf)
		goto out;

	if (tim_offset)
		*tim_offset = 0;
	if (tim_length)
		*tim_length = 0;

	if (sdata->vif.type == NL80211_IFTYPE_AP) {
		struct ieee80211_if_ap *ap = &sdata->u.ap;
		struct beacon_data *beacon = FUNC12(ap->beacon);

		if (beacon) {
			/*
			 * headroom, head length,
			 * tail length and maximum TIM length
			 */
			skb = FUNC3(local->tx_headroom +
					    beacon->head_len +
					    beacon->tail_len + 256);
			if (!skb)
				goto out;

			FUNC16(skb, local->tx_headroom);
			FUNC9(FUNC15(skb, beacon->head_len), beacon->head,
			       beacon->head_len);

			FUNC6(sdata, &ap->ps, skb);

			if (tim_offset)
				*tim_offset = beacon->head_len;
			if (tim_length)
				*tim_length = skb->len - beacon->head_len;

			if (beacon->tail)
				FUNC9(FUNC15(skb, beacon->tail_len),
				       beacon->tail, beacon->tail_len);
		} else
			goto out;
	} else if (sdata->vif.type == NL80211_IFTYPE_ADHOC) {
		struct ieee80211_if_ibss *ifibss = &sdata->u.ibss;
		struct ieee80211_hdr *hdr;
		struct beacon_data *presp = FUNC12(ifibss->presp);

		if (!presp)
			goto out;

		skb = FUNC3(local->tx_headroom + presp->head_len);
		if (!skb)
			goto out;
		FUNC16(skb, local->tx_headroom);
		FUNC9(FUNC15(skb, presp->head_len), presp->head,
		       presp->head_len);

		hdr = (struct ieee80211_hdr *) skb->data;
		hdr->frame_control = FUNC2(IEEE80211_FTYPE_MGMT |
						 IEEE80211_STYPE_BEACON);
	} else if (FUNC8(&sdata->vif)) {
		struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
		struct beacon_data *bcn = FUNC12(ifmsh->beacon);

		if (!bcn)
			goto out;

		if (ifmsh->sync_ops)
			ifmsh->sync_ops->adjust_tbtt(
						sdata);

		skb = FUNC3(local->tx_headroom +
				    bcn->head_len +
				    256 + /* TIM IE */
				    bcn->tail_len);
		if (!skb)
			goto out;
		FUNC16(skb, local->tx_headroom);
		FUNC9(FUNC15(skb, bcn->head_len), bcn->head, bcn->head_len);
		FUNC6(sdata, &ifmsh->ps, skb);
		FUNC9(FUNC15(skb, bcn->tail_len), bcn->tail, bcn->tail_len);
	} else {
		FUNC1(1);
		goto out;
	}

	band = chanctx_conf->def.chan->band;

	info = FUNC0(skb);

	info->flags |= IEEE80211_TX_INTFL_DONT_ENCRYPT;
	info->flags |= IEEE80211_TX_CTL_NO_ACK;
	info->band = band;

	FUNC10(&txrc, 0, sizeof(txrc));
	txrc.hw = hw;
	txrc.sband = local->hw.wiphy->bands[band];
	txrc.bss_conf = &sdata->vif.bss_conf;
	txrc.skb = skb;
	txrc.reported_rate.idx = -1;
	txrc.rate_idx_mask = sdata->rc_rateidx_mask[band];
	if (txrc.rate_idx_mask == (1 << txrc.sband->n_bitrates) - 1)
		txrc.max_rate_idx = -1;
	else
		txrc.max_rate_idx = FUNC4(txrc.rate_idx_mask) - 1;
	txrc.bss = true;
	FUNC11(sdata, NULL, &txrc);

	info->control.vif = vif;

	info->flags |= IEEE80211_TX_CTL_CLEAR_PS_FILT |
			IEEE80211_TX_CTL_ASSIGN_SEQ |
			IEEE80211_TX_CTL_FIRST_FRAGMENT;
 out:
	FUNC14();
	return skb;
}