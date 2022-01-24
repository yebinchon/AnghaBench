#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned long u64 ;
typedef  int u32 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct sta_info {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct TYPE_14__ {int /*<<< orphan*/  ibss_joined; } ;
struct TYPE_12__ {int type; int /*<<< orphan*/  chanctx_conf; TYPE_1__ bss_conf; } ;
struct TYPE_19__ {int /*<<< orphan*/  associated; } ;
struct TYPE_15__ {int /*<<< orphan*/  mesh_id_len; } ;
struct TYPE_20__ {TYPE_6__ mgd; TYPE_2__ mesh; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  dev; TYPE_10__ vif; TYPE_7__ u; TYPE_3__* bss; struct ieee80211_local* local; } ;
struct TYPE_17__ {int /*<<< orphan*/  category; } ;
struct TYPE_18__ {TYPE_4__ action; } ;
struct ieee80211_mgmt {int /*<<< orphan*/  da; TYPE_5__ u; int /*<<< orphan*/  frame_control; } ;
struct TYPE_22__ {int flags; int /*<<< orphan*/  offchannel_tx_hw_queue; scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {int /*<<< orphan*/  mtx; TYPE_9__ hw; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_21__ {struct ieee80211_channel* chan; } ;
struct ieee80211_chanctx_conf {TYPE_8__ def; } ;
struct TYPE_16__ {int /*<<< orphan*/  beacon; } ;
struct TYPE_13__ {int flags; int /*<<< orphan*/  hw_queue; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOLINK ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int IEEE80211_HW_QUEUE_CONTROL ; 
 int /*<<< orphan*/  IEEE80211_ROC_TYPE_MGMT_TX ; 
 TYPE_11__* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 int IEEE80211_TX_CTL_NO_CCK_RATE ; 
 int IEEE80211_TX_CTL_REQ_TX_STATUS ; 
 int IEEE80211_TX_CTL_TX_OFFCHAN ; 
 int IEEE80211_TX_INTFL_NL80211_FRAME_TX ; 
 int IEEE80211_TX_INTFL_OFFCHAN_TX_OK ; 
 struct ieee80211_sub_if_data* FUNC1 (struct wireless_dev*) ; 
#define  NL80211_IFTYPE_ADHOC 135 
#define  NL80211_IFTYPE_AP 134 
#define  NL80211_IFTYPE_AP_VLAN 133 
#define  NL80211_IFTYPE_MESH_POINT 132 
#define  NL80211_IFTYPE_P2P_CLIENT 131 
#define  NL80211_IFTYPE_P2P_DEVICE 130 
#define  NL80211_IFTYPE_P2P_GO 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  WLAN_CATEGORY_PUBLIC ; 
 struct sk_buff* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_channel*,unsigned int,unsigned long*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct ieee80211_chanctx_conf* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,scalar_t__) ; 
 struct sta_info* FUNC17 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct wiphy *wiphy, struct wireless_dev *wdev,
			     struct ieee80211_channel *chan, bool offchan,
			     unsigned int wait, const u8 *buf, size_t len,
			     bool no_cck, bool dont_wait_for_ack, u64 *cookie)
{
	struct ieee80211_sub_if_data *sdata = FUNC1(wdev);
	struct ieee80211_local *local = sdata->local;
	struct sk_buff *skb;
	struct sta_info *sta;
	const struct ieee80211_mgmt *mgmt = (void *)buf;
	bool need_offchan = false;
	u32 flags;
	int ret;

	if (dont_wait_for_ack)
		flags = IEEE80211_TX_CTL_NO_ACK;
	else
		flags = IEEE80211_TX_INTFL_NL80211_FRAME_TX |
			IEEE80211_TX_CTL_REQ_TX_STATUS;

	if (no_cck)
		flags |= IEEE80211_TX_CTL_NO_CCK_RATE;

	switch (sdata->vif.type) {
	case NL80211_IFTYPE_ADHOC:
		if (!sdata->vif.bss_conf.ibss_joined)
			need_offchan = true;
		/* fall through */
#ifdef CONFIG_MAC80211_MESH
	case NL80211_IFTYPE_MESH_POINT:
		if (ieee80211_vif_is_mesh(&sdata->vif) &&
		    !sdata->u.mesh.mesh_id_len)
			need_offchan = true;
		/* fall through */
#endif
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_AP_VLAN:
	case NL80211_IFTYPE_P2P_GO:
		if (sdata->vif.type != NL80211_IFTYPE_ADHOC &&
		    !FUNC6(&sdata->vif) &&
		    !FUNC11(sdata->bss->beacon))
			need_offchan = true;
		if (!FUNC3(mgmt->frame_control) ||
		    mgmt->u.action.category == WLAN_CATEGORY_PUBLIC)
			break;
		FUNC13();
		sta = FUNC17(sdata, mgmt->da);
		FUNC14();
		if (!sta)
			return -ENOLINK;
		break;
	case NL80211_IFTYPE_STATION:
	case NL80211_IFTYPE_P2P_CLIENT:
		if (!sdata->u.mgd.associated)
			need_offchan = true;
		break;
	case NL80211_IFTYPE_P2P_DEVICE:
		need_offchan = true;
		break;
	default:
		return -EOPNOTSUPP;
	}

	FUNC9(&local->mtx);

	/* Check if the operating channel is the requested channel */
	if (!need_offchan) {
		struct ieee80211_chanctx_conf *chanctx_conf;

		FUNC13();
		chanctx_conf = FUNC12(sdata->vif.chanctx_conf);

		if (chanctx_conf)
			need_offchan = chan != chanctx_conf->def.chan;
		else
			need_offchan = true;
		FUNC14();
	}

	if (need_offchan && !offchan) {
		ret = -EBUSY;
		goto out_unlock;
	}

	skb = FUNC2(local->hw.extra_tx_headroom + len);
	if (!skb) {
		ret = -ENOMEM;
		goto out_unlock;
	}
	FUNC16(skb, local->hw.extra_tx_headroom);

	FUNC8(FUNC15(skb, len), buf, len);

	FUNC0(skb)->flags = flags;

	skb->dev = sdata->dev;

	if (!need_offchan) {
		*cookie = (unsigned long) skb;
		FUNC5(sdata, skb);
		ret = 0;
		goto out_unlock;
	}

	FUNC0(skb)->flags |= IEEE80211_TX_CTL_TX_OFFCHAN |
					IEEE80211_TX_INTFL_OFFCHAN_TX_OK;
	if (local->hw.flags & IEEE80211_HW_QUEUE_CONTROL)
		FUNC0(skb)->hw_queue =
			local->hw.offchannel_tx_hw_queue;

	/* This will handle all kinds of coalescing and immediate TX */
	ret = FUNC4(local, sdata, chan,
				       wait, cookie, skb,
				       IEEE80211_ROC_TYPE_MGMT_TX);
	if (ret)
		FUNC7(skb);
 out_unlock:
	FUNC10(&local->mtx);
	return ret;
}