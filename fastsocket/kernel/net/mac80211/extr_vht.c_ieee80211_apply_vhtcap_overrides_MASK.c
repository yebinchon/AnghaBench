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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_12__ {void* tx_mcs_map; void* rx_mcs_map; } ;
struct TYPE_13__ {TYPE_4__ supp_mcs; int /*<<< orphan*/  vht_cap_info; } ;
struct TYPE_10__ {void* tx_mcs_map; void* rx_mcs_map; } ;
struct TYPE_11__ {int vht_cap_info; TYPE_2__ supp_mcs; } ;
struct TYPE_14__ {TYPE_5__ vht_capa; TYPE_3__ vht_capa_mask; } ;
struct TYPE_15__ {TYPE_6__ mgd; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_7__ u; TYPE_1__ vif; } ;
struct TYPE_16__ {void* tx_mcs_map; void* rx_mcs_map; } ;
struct ieee80211_sta_vht_cap {int cap; TYPE_8__ vht_mcs; int /*<<< orphan*/  vht_supported; } ;

/* Variables and functions */
 int IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK ; 
 int IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT ; 
 int /*<<< orphan*/  IEEE80211_VHT_CAP_RXLDPC ; 
 int /*<<< orphan*/  IEEE80211_VHT_CAP_RX_ANTENNA_PATTERN ; 
 int /*<<< orphan*/  IEEE80211_VHT_CAP_SHORT_GI_160 ; 
 int /*<<< orphan*/  IEEE80211_VHT_CAP_SHORT_GI_80 ; 
 int /*<<< orphan*/  IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE ; 
 int /*<<< orphan*/  IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE ; 
 int /*<<< orphan*/  IEEE80211_VHT_CAP_TXSTBC ; 
 int /*<<< orphan*/  IEEE80211_VHT_CAP_TX_ANTENNA_PATTERN ; 
 int IEEE80211_VHT_MCS_NOT_SUPPORTED ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*,struct ieee80211_sta_vht_cap*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (void*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct ieee80211_sub_if_data *sdata,
				      struct ieee80211_sta_vht_cap *vht_cap)
{
	int i;
	u16 rxmcs_mask, rxmcs_cap, rxmcs_n, txmcs_mask, txmcs_cap, txmcs_n;

	if (!vht_cap->vht_supported)
		return;

	if (sdata->vif.type != NL80211_IFTYPE_STATION)
		return;

	FUNC0(sdata, vht_cap,
			       IEEE80211_VHT_CAP_RXLDPC);
	FUNC0(sdata, vht_cap,
			       IEEE80211_VHT_CAP_SHORT_GI_80);
	FUNC0(sdata, vht_cap,
			       IEEE80211_VHT_CAP_SHORT_GI_160);
	FUNC0(sdata, vht_cap,
			       IEEE80211_VHT_CAP_TXSTBC);
	FUNC0(sdata, vht_cap,
			       IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE);
	FUNC0(sdata, vht_cap,
			       IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE);
	FUNC0(sdata, vht_cap,
			       IEEE80211_VHT_CAP_RX_ANTENNA_PATTERN);
	FUNC0(sdata, vht_cap,
			       IEEE80211_VHT_CAP_TX_ANTENNA_PATTERN);

	/* Allow user to decrease AMPDU length exponent */
	if (sdata->u.mgd.vht_capa_mask.vht_cap_info &
	    FUNC2(IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK)) {
		u32 cap, n;

		n = FUNC4(sdata->u.mgd.vht_capa.vht_cap_info) &
			IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK;
		n >>= IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT;
		cap = vht_cap->cap & IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK;
		cap >>= IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT;

		if (n < cap) {
			vht_cap->cap &=
				~IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK;
			vht_cap->cap |=
				n << IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT;
		}
	}

	/* Allow the user to decrease MCSes */
	rxmcs_mask =
		FUNC3(sdata->u.mgd.vht_capa_mask.supp_mcs.rx_mcs_map);
	rxmcs_n = FUNC3(sdata->u.mgd.vht_capa.supp_mcs.rx_mcs_map);
	rxmcs_n &= rxmcs_mask;
	rxmcs_cap = FUNC3(vht_cap->vht_mcs.rx_mcs_map);

	txmcs_mask =
		FUNC3(sdata->u.mgd.vht_capa_mask.supp_mcs.tx_mcs_map);
	txmcs_n = FUNC3(sdata->u.mgd.vht_capa.supp_mcs.tx_mcs_map);
	txmcs_n &= txmcs_mask;
	txmcs_cap = FUNC3(vht_cap->vht_mcs.tx_mcs_map);
	for (i = 0; i < 8; i++) {
		u8 m, n, c;

		m = (rxmcs_mask >> 2*i) & IEEE80211_VHT_MCS_NOT_SUPPORTED;
		n = (rxmcs_n >> 2*i) & IEEE80211_VHT_MCS_NOT_SUPPORTED;
		c = (rxmcs_cap >> 2*i) & IEEE80211_VHT_MCS_NOT_SUPPORTED;

		if (m && ((c != IEEE80211_VHT_MCS_NOT_SUPPORTED && n < c) ||
			  n == IEEE80211_VHT_MCS_NOT_SUPPORTED)) {
			rxmcs_cap &= ~(3 << 2*i);
			rxmcs_cap |= (rxmcs_n & (3 << 2*i));
		}

		m = (txmcs_mask >> 2*i) & IEEE80211_VHT_MCS_NOT_SUPPORTED;
		n = (txmcs_n >> 2*i) & IEEE80211_VHT_MCS_NOT_SUPPORTED;
		c = (txmcs_cap >> 2*i) & IEEE80211_VHT_MCS_NOT_SUPPORTED;

		if (m && ((c != IEEE80211_VHT_MCS_NOT_SUPPORTED && n < c) ||
			  n == IEEE80211_VHT_MCS_NOT_SUPPORTED)) {
			txmcs_cap &= ~(3 << 2*i);
			txmcs_cap |= (txmcs_n & (3 << 2*i));
		}
	}
	vht_cap->vht_mcs.rx_mcs_map = FUNC1(rxmcs_cap);
	vht_cap->vht_mcs.tx_mcs_map = FUNC1(txmcs_cap);
}