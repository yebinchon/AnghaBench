#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;
typedef  struct TYPE_16__   TYPE_12__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct ieee80211_vht_cap {int dummy; } ;
struct ieee80211_supported_band {int n_bitrates; int n_channels; scalar_t__ band; TYPE_8__* channels; TYPE_7__* bitrates; } ;
struct TYPE_15__ {scalar_t__ addr; int /*<<< orphan*/  chanctx_conf; } ;
struct ieee80211_if_managed {int flags; int uapsd_queues; int uapsd_max_sp_len; int /*<<< orphan*/  mtx; struct ieee80211_mgd_assoc_data* assoc_data; } ;
struct TYPE_14__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  smps_mode; TYPE_11__ vif; TYPE_10__ u; struct ieee80211_local* local; } ;
struct TYPE_21__ {void* listen_interval; void* capab_info; } ;
struct TYPE_20__ {int* current_ap; void* listen_interval; void* capab_info; } ;
struct TYPE_22__ {TYPE_4__ assoc_req; TYPE_3__ reassoc_req; } ;
struct ieee80211_mgmt {int* da; int* sa; int* bssid; TYPE_5__ u; void* frame_control; } ;
struct ieee80211_mgd_assoc_data {int ssid_len; size_t ie_len; int capability; scalar_t__ ie; scalar_t__ uapsd; scalar_t__ wmm; int /*<<< orphan*/  ap_vht_cap; int /*<<< orphan*/  ap_ht_param; scalar_t__ ssid; scalar_t__ prev_bssid; TYPE_2__* bss; scalar_t__ supp_rates_len; int /*<<< orphan*/  supp_rates; } ;
struct TYPE_23__ {int listen_interval; } ;
struct TYPE_26__ {int flags; TYPE_6__ conf; scalar_t__ extra_tx_headroom; TYPE_1__* wiphy; } ;
struct ieee80211_local {TYPE_9__ hw; } ;
struct ieee80211_ht_cap {int dummy; } ;
struct ieee80211_channel {size_t band; int /*<<< orphan*/  max_power; } ;
struct TYPE_16__ {struct ieee80211_channel* chan; } ;
struct ieee80211_chanctx_conf {TYPE_12__ def; } ;
struct TYPE_25__ {int /*<<< orphan*/  center_freq; } ;
struct TYPE_24__ {int bitrate; } ;
struct TYPE_19__ {scalar_t__ bssid; } ;
struct TYPE_18__ {struct ieee80211_supported_band** bands; } ;
struct TYPE_17__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int FUNC1 (int) ; 
 size_t ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IEEE80211_BAND_2GHZ ; 
 int IEEE80211_FTYPE_MGMT ; 
 int IEEE80211_HW_2GHZ_SHORT_PREAMBLE_INCAPABLE ; 
 int IEEE80211_HW_2GHZ_SHORT_SLOT_INCAPABLE ; 
 int IEEE80211_HW_REPORTS_TX_ACK_STATUS ; 
 int IEEE80211_HW_SPECTRUM_MGMT ; 
 TYPE_13__* FUNC2 (struct sk_buff*) ; 
 int IEEE80211_STA_DISABLE_HT ; 
 int IEEE80211_STA_DISABLE_VHT ; 
 int IEEE80211_STYPE_ASSOC_REQ ; 
 int IEEE80211_STYPE_REASSOC_REQ ; 
 int IEEE80211_TX_CTL_REQ_TX_STATUS ; 
 int IEEE80211_TX_INTFL_DONT_ENCRYPT ; 
 int IEEE80211_TX_INTFL_MLME_CONN_TX ; 
 int IEEE80211_WMM_IE_STA_QOSINFO_SP_SHIFT ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int WLAN_CAPABILITY_ESS ; 
 int WLAN_CAPABILITY_PRIVACY ; 
 int WLAN_CAPABILITY_SHORT_PREAMBLE ; 
 int WLAN_CAPABILITY_SHORT_SLOT_TIME ; 
 int WLAN_CAPABILITY_SPECTRUM_MGMT ; 
#define  WLAN_EID_EXT_SUPP_RATES 137 
#define  WLAN_EID_MOBILITY_DOMAIN 136 
#define  WLAN_EID_PWR_CAPABILITY 135 
#define  WLAN_EID_QOS_CAPA 134 
#define  WLAN_EID_RRM_ENABLED_CAPABILITIES 133 
#define  WLAN_EID_RSN 132 
#define  WLAN_EID_SSID 131 
#define  WLAN_EID_SUPPORTED_CHANNELS 130 
#define  WLAN_EID_SUPPORTED_REGULATORY_CLASSES 129 
#define  WLAN_EID_SUPP_RATES 128 
 int /*<<< orphan*/  WLAN_EID_VENDOR_SPECIFIC ; 
 struct sk_buff* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_local*,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_sub_if_data*,struct sk_buff*,int /*<<< orphan*/ ,struct ieee80211_supported_band*,struct ieee80211_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_sub_if_data*,struct sk_buff*,struct ieee80211_supported_band*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__,struct ieee80211_supported_band*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 size_t FUNC12 (scalar_t__,size_t,int const*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC13 (scalar_t__,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211_mgmt*,int /*<<< orphan*/ ,int) ; 
 struct ieee80211_chanctx_conf* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int* FUNC22 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static void FUNC24(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	struct ieee80211_mgd_assoc_data *assoc_data = ifmgd->assoc_data;
	struct sk_buff *skb;
	struct ieee80211_mgmt *mgmt;
	u8 *pos, qos_info;
	size_t offset = 0, noffset;
	int i, count, rates_len, supp_rates_len;
	u16 capab;
	struct ieee80211_supported_band *sband;
	struct ieee80211_chanctx_conf *chanctx_conf;
	struct ieee80211_channel *chan;
	u32 rates = 0;

	FUNC16(&ifmgd->mtx);

	FUNC20();
	chanctx_conf = FUNC19(sdata->vif.chanctx_conf);
	if (FUNC3(!chanctx_conf)) {
		FUNC21();
		return;
	}
	chan = chanctx_conf->def.chan;
	FUNC21();
	sband = local->hw.wiphy->bands[chan->band];

	if (assoc_data->supp_rates_len) {
		/*
		 * Get all rates supported by the device and the AP as
		 * some APs don't like getting a superset of their rates
		 * in the association request (e.g. D-Link DAP 1353 in
		 * b-only mode)...
		 */
		rates_len = FUNC10(assoc_data->supp_rates,
						       assoc_data->supp_rates_len,
						       sband, &rates);
	} else {
		/*
		 * In case AP not provide any supported rates information
		 * before association, we send information element(s) with
		 * all rates that we support.
		 */
		rates = ~0;
		rates_len = sband->n_bitrates;
	}

	skb = FUNC5(local->hw.extra_tx_headroom +
			sizeof(*mgmt) + /* bit too much but doesn't matter */
			2 + assoc_data->ssid_len + /* SSID */
			4 + rates_len + /* (extended) rates */
			4 + /* power capability */
			2 + 2 * sband->n_channels + /* supported channels */
			2 + sizeof(struct ieee80211_ht_cap) + /* HT */
			2 + sizeof(struct ieee80211_vht_cap) + /* VHT */
			assoc_data->ie_len + /* extra IEs */
			9, /* WMM */
			GFP_KERNEL);
	if (!skb)
		return;

	FUNC23(skb, local->hw.extra_tx_headroom);

	capab = WLAN_CAPABILITY_ESS;

	if (sband->band == IEEE80211_BAND_2GHZ) {
		if (!(local->hw.flags & IEEE80211_HW_2GHZ_SHORT_SLOT_INCAPABLE))
			capab |= WLAN_CAPABILITY_SHORT_SLOT_TIME;
		if (!(local->hw.flags & IEEE80211_HW_2GHZ_SHORT_PREAMBLE_INCAPABLE))
			capab |= WLAN_CAPABILITY_SHORT_PREAMBLE;
	}

	if (assoc_data->capability & WLAN_CAPABILITY_PRIVACY)
		capab |= WLAN_CAPABILITY_PRIVACY;

	if ((assoc_data->capability & WLAN_CAPABILITY_SPECTRUM_MGMT) &&
	    (local->hw.flags & IEEE80211_HW_SPECTRUM_MGMT))
		capab |= WLAN_CAPABILITY_SPECTRUM_MGMT;

	mgmt = (struct ieee80211_mgmt *) FUNC22(skb, 24);
	FUNC18(mgmt, 0, 24);
	FUNC17(mgmt->da, assoc_data->bss->bssid, ETH_ALEN);
	FUNC17(mgmt->sa, sdata->vif.addr, ETH_ALEN);
	FUNC17(mgmt->bssid, assoc_data->bss->bssid, ETH_ALEN);

	if (!FUNC15(assoc_data->prev_bssid)) {
		FUNC22(skb, 10);
		mgmt->frame_control = FUNC6(IEEE80211_FTYPE_MGMT |
						  IEEE80211_STYPE_REASSOC_REQ);
		mgmt->u.reassoc_req.capab_info = FUNC6(capab);
		mgmt->u.reassoc_req.listen_interval =
				FUNC6(local->hw.conf.listen_interval);
		FUNC17(mgmt->u.reassoc_req.current_ap, assoc_data->prev_bssid,
		       ETH_ALEN);
	} else {
		FUNC22(skb, 4);
		mgmt->frame_control = FUNC6(IEEE80211_FTYPE_MGMT |
						  IEEE80211_STYPE_ASSOC_REQ);
		mgmt->u.assoc_req.capab_info = FUNC6(capab);
		mgmt->u.assoc_req.listen_interval =
				FUNC6(local->hw.conf.listen_interval);
	}

	/* SSID */
	pos = FUNC22(skb, 2 + assoc_data->ssid_len);
	*pos++ = WLAN_EID_SSID;
	*pos++ = assoc_data->ssid_len;
	FUNC17(pos, assoc_data->ssid, assoc_data->ssid_len);

	/* add all rates which were marked to be used above */
	supp_rates_len = rates_len;
	if (supp_rates_len > 8)
		supp_rates_len = 8;

	pos = FUNC22(skb, supp_rates_len + 2);
	*pos++ = WLAN_EID_SUPP_RATES;
	*pos++ = supp_rates_len;

	count = 0;
	for (i = 0; i < sband->n_bitrates; i++) {
		if (FUNC1(i) & rates) {
			int rate = sband->bitrates[i].bitrate;
			*pos++ = (u8) (rate / 5);
			if (++count == 8)
				break;
		}
	}

	if (rates_len > count) {
		pos = FUNC22(skb, rates_len - count + 2);
		*pos++ = WLAN_EID_EXT_SUPP_RATES;
		*pos++ = rates_len - count;

		for (i++; i < sband->n_bitrates; i++) {
			if (FUNC1(i) & rates) {
				int rate = sband->bitrates[i].bitrate;
				*pos++ = (u8) (rate / 5);
			}
		}
	}

	if (capab & WLAN_CAPABILITY_SPECTRUM_MGMT) {
		/* 1. power capabilities */
		pos = FUNC22(skb, 4);
		*pos++ = WLAN_EID_PWR_CAPABILITY;
		*pos++ = 2;
		*pos++ = 0; /* min tx power */
		*pos++ = chan->max_power; /* max tx power */

		/* 2. supported channels */
		/* TODO: get this in reg domain format */
		pos = FUNC22(skb, 2 * sband->n_channels + 2);
		*pos++ = WLAN_EID_SUPPORTED_CHANNELS;
		*pos++ = 2 * sband->n_channels;
		for (i = 0; i < sband->n_channels; i++) {
			*pos++ = FUNC11(
					sband->channels[i].center_freq);
			*pos++ = 1; /* one channel in the subband*/
		}
	}

	/* if present, add any custom IEs that go before HT */
	if (assoc_data->ie_len && assoc_data->ie) {
		static const u8 before_ht[] = {
			WLAN_EID_SSID,
			WLAN_EID_SUPP_RATES,
			WLAN_EID_EXT_SUPP_RATES,
			WLAN_EID_PWR_CAPABILITY,
			WLAN_EID_SUPPORTED_CHANNELS,
			WLAN_EID_RSN,
			WLAN_EID_QOS_CAPA,
			WLAN_EID_RRM_ENABLED_CAPABILITIES,
			WLAN_EID_MOBILITY_DOMAIN,
			WLAN_EID_SUPPORTED_REGULATORY_CLASSES,
		};
		noffset = FUNC12(assoc_data->ie, assoc_data->ie_len,
					     before_ht, FUNC0(before_ht),
					     offset);
		pos = FUNC22(skb, noffset - offset);
		FUNC17(pos, assoc_data->ie + offset, noffset - offset);
		offset = noffset;
	}

	if (FUNC4((ifmgd->flags & IEEE80211_STA_DISABLE_HT) &&
			 !(ifmgd->flags & IEEE80211_STA_DISABLE_VHT)))
		ifmgd->flags |= IEEE80211_STA_DISABLE_VHT;

	if (!(ifmgd->flags & IEEE80211_STA_DISABLE_HT))
		FUNC8(sdata, skb, assoc_data->ap_ht_param,
				    sband, chan, sdata->smps_mode);

	if (!(ifmgd->flags & IEEE80211_STA_DISABLE_VHT))
		FUNC9(sdata, skb, sband,
				     &assoc_data->ap_vht_cap);

	/* if present, add any custom non-vendor IEs that go after HT */
	if (assoc_data->ie_len && assoc_data->ie) {
		noffset = FUNC13(assoc_data->ie,
						    assoc_data->ie_len,
						    offset);
		pos = FUNC22(skb, noffset - offset);
		FUNC17(pos, assoc_data->ie + offset, noffset - offset);
		offset = noffset;
	}

	if (assoc_data->wmm) {
		if (assoc_data->uapsd) {
			qos_info = ifmgd->uapsd_queues;
			qos_info |= (ifmgd->uapsd_max_sp_len <<
				     IEEE80211_WMM_IE_STA_QOSINFO_SP_SHIFT);
		} else {
			qos_info = 0;
		}

		pos = FUNC22(skb, 9);
		*pos++ = WLAN_EID_VENDOR_SPECIFIC;
		*pos++ = 7; /* len */
		*pos++ = 0x00; /* Microsoft OUI 00:50:F2 */
		*pos++ = 0x50;
		*pos++ = 0xf2;
		*pos++ = 2; /* WME */
		*pos++ = 0; /* WME info */
		*pos++ = 1; /* WME ver */
		*pos++ = qos_info;
	}

	/* add any remaining custom (i.e. vendor specific here) IEs */
	if (assoc_data->ie_len && assoc_data->ie) {
		noffset = assoc_data->ie_len;
		pos = FUNC22(skb, noffset - offset);
		FUNC17(pos, assoc_data->ie + offset, noffset - offset);
	}

	FUNC7(local, sdata);

	FUNC2(skb)->flags |= IEEE80211_TX_INTFL_DONT_ENCRYPT;
	if (local->hw.flags & IEEE80211_HW_REPORTS_TX_ACK_STATUS)
		FUNC2(skb)->flags |= IEEE80211_TX_CTL_REQ_TX_STATUS |
						IEEE80211_TX_INTFL_MLME_CONN_TX;
	FUNC14(sdata, skb);
}