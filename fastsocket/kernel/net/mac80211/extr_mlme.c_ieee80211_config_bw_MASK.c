#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_13__ {int bandwidth; } ;
struct sta_info {int cur_max_bandwidth; TYPE_5__ sta; } ;
struct ieee80211_vht_operation {int dummy; } ;
struct ieee80211_supported_band {int dummy; } ;
struct TYPE_16__ {struct ieee80211_channel* chan; } ;
struct TYPE_14__ {scalar_t__ ht_operation_mode; TYPE_8__ chandef; } ;
struct TYPE_15__ {TYPE_6__ bss_conf; } ;
struct ieee80211_if_managed {int flags; int /*<<< orphan*/  bssid; } ;
struct TYPE_9__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_7__ vif; TYPE_1__ u; struct ieee80211_local* local; } ;
struct TYPE_11__ {TYPE_2__* wiphy; } ;
struct ieee80211_local {TYPE_3__ hw; } ;
struct ieee80211_ht_operation {int /*<<< orphan*/  operation_mode; } ;
struct ieee80211_channel {size_t band; } ;
struct cfg80211_chan_def {int width; int /*<<< orphan*/  center_freq2; int /*<<< orphan*/  center_freq1; TYPE_4__* chan; } ;
typedef  enum ieee80211_sta_rx_bandwidth { ____Placeholder_ieee80211_sta_rx_bandwidth } ieee80211_sta_rx_bandwidth ;
struct TYPE_12__ {int /*<<< orphan*/  center_freq; } ;
struct TYPE_10__ {struct ieee80211_supported_band** bands; } ;

/* Variables and functions */
 int BSS_CHANGED_HT ; 
 int EINVAL ; 
 int /*<<< orphan*/  IEEE80211_RC_BW_CHANGED ; 
 int IEEE80211_STA_DISABLE_160MHZ ; 
 int IEEE80211_STA_DISABLE_40MHZ ; 
 int IEEE80211_STA_DISABLE_80P80MHZ ; 
 int IEEE80211_STA_DISABLE_HT ; 
 int IEEE80211_STA_DISABLE_VHT ; 
 int IEEE80211_STA_RX_BW_160 ; 
 int IEEE80211_STA_RX_BW_20 ; 
 int IEEE80211_STA_RX_BW_40 ; 
 int IEEE80211_STA_RX_BW_80 ; 
#define  NL80211_CHAN_WIDTH_160 133 
#define  NL80211_CHAN_WIDTH_20 132 
#define  NL80211_CHAN_WIDTH_20_NOHT 131 
#define  NL80211_CHAN_WIDTH_40 130 
#define  NL80211_CHAN_WIDTH_80 129 
#define  NL80211_CHAN_WIDTH_80P80 128 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct cfg80211_chan_def*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg80211_chan_def*) ; 
 int FUNC3 (struct cfg80211_chan_def*) ; 
 int FUNC4 (struct ieee80211_sub_if_data*,struct ieee80211_supported_band*,struct ieee80211_channel*,struct ieee80211_ht_operation const*,struct ieee80211_vht_operation const*,struct cfg80211_chan_def*,int) ; 
 int FUNC5 (struct ieee80211_sub_if_data*,struct cfg80211_chan_def*,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_local*,struct ieee80211_supported_band*,struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_sub_if_data*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC9(struct ieee80211_sub_if_data *sdata,
			       struct sta_info *sta,
			       const struct ieee80211_ht_operation *ht_oper,
			       const struct ieee80211_vht_operation *vht_oper,
			       const u8 *bssid, u32 *changed)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	struct ieee80211_supported_band *sband;
	struct ieee80211_channel *chan;
	struct cfg80211_chan_def chandef;
	u16 ht_opmode;
	u32 flags;
	enum ieee80211_sta_rx_bandwidth new_sta_bw;
	int ret;

	/* if HT was/is disabled, don't track any bandwidth changes */
	if (ifmgd->flags & IEEE80211_STA_DISABLE_HT || !ht_oper)
		return 0;

	/* don't check VHT if we associated as non-VHT station */
	if (ifmgd->flags & IEEE80211_STA_DISABLE_VHT)
		vht_oper = NULL;

	if (FUNC0(!sta))
		return -EINVAL;

	chan = sdata->vif.bss_conf.chandef.chan;
	sband = local->hw.wiphy->bands[chan->band];

	/* calculate new channel (type) based on HT/VHT operation IEs */
	flags = FUNC4(sdata, sband, chan, ht_oper,
					     vht_oper, &chandef, true);

	/*
	 * Downgrade the new channel if we associated with restricted
	 * capabilities. For example, if we associated as a 20 MHz STA
	 * to a 40 MHz AP (due to regulatory, capabilities or config
	 * reasons) then switching to a 40 MHz channel now won't do us
	 * any good -- we couldn't use it with the AP.
	 */
	if (ifmgd->flags & IEEE80211_STA_DISABLE_80P80MHZ &&
	    chandef.width == NL80211_CHAN_WIDTH_80P80)
		flags |= FUNC3(&chandef);
	if (ifmgd->flags & IEEE80211_STA_DISABLE_160MHZ &&
	    chandef.width == NL80211_CHAN_WIDTH_160)
		flags |= FUNC3(&chandef);
	if (ifmgd->flags & IEEE80211_STA_DISABLE_40MHZ &&
	    chandef.width > NL80211_CHAN_WIDTH_20)
		flags |= FUNC3(&chandef);

	if (FUNC1(&chandef, &sdata->vif.bss_conf.chandef))
		return 0;

	FUNC8(sdata,
		   "AP %pM changed bandwidth, new config is %d MHz, width %d (%d/%d MHz)\n",
		   ifmgd->bssid, chandef.chan->center_freq, chandef.width,
		   chandef.center_freq1, chandef.center_freq2);

	if (flags != (ifmgd->flags & (IEEE80211_STA_DISABLE_HT |
				      IEEE80211_STA_DISABLE_VHT |
				      IEEE80211_STA_DISABLE_40MHZ |
				      IEEE80211_STA_DISABLE_80P80MHZ |
				      IEEE80211_STA_DISABLE_160MHZ)) ||
	    !FUNC2(&chandef)) {
		FUNC8(sdata,
			   "AP %pM changed bandwidth in a way we can't support - disconnect\n",
			   ifmgd->bssid);
		return -EINVAL;
	}

	switch (chandef.width) {
	case NL80211_CHAN_WIDTH_20_NOHT:
	case NL80211_CHAN_WIDTH_20:
		new_sta_bw = IEEE80211_STA_RX_BW_20;
		break;
	case NL80211_CHAN_WIDTH_40:
		new_sta_bw = IEEE80211_STA_RX_BW_40;
		break;
	case NL80211_CHAN_WIDTH_80:
		new_sta_bw = IEEE80211_STA_RX_BW_80;
		break;
	case NL80211_CHAN_WIDTH_80P80:
	case NL80211_CHAN_WIDTH_160:
		new_sta_bw = IEEE80211_STA_RX_BW_160;
		break;
	default:
		return -EINVAL;
	}

	if (new_sta_bw > sta->cur_max_bandwidth)
		new_sta_bw = sta->cur_max_bandwidth;

	if (new_sta_bw < sta->sta.bandwidth) {
		sta->sta.bandwidth = new_sta_bw;
		FUNC7(local, sband, sta,
					 IEEE80211_RC_BW_CHANGED);
	}

	ret = FUNC5(sdata, &chandef, changed);
	if (ret) {
		FUNC8(sdata,
			   "AP %pM changed bandwidth to incompatible one - disconnect\n",
			   ifmgd->bssid);
		return ret;
	}

	if (new_sta_bw > sta->sta.bandwidth) {
		sta->sta.bandwidth = new_sta_bw;
		FUNC7(local, sband, sta,
					 IEEE80211_RC_BW_CHANGED);
	}

	ht_opmode = FUNC6(ht_oper->operation_mode);

	/* if bss configuration changed store the new one */
	if (sdata->vif.bss_conf.ht_operation_mode != ht_opmode) {
		*changed |= BSS_CHANGED_HT;
		sdata->vif.bss_conf.ht_operation_mode = ht_opmode;
	}

	return 0;
}