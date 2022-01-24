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
typedef  int /*<<< orphan*/  vht_cap ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct ieee80211_vht_cap {int vht_cap_info; } ;
struct ieee80211_supported_band {int /*<<< orphan*/  vht_cap; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;
struct ieee80211_sta_vht_cap {int /*<<< orphan*/  cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IEEE80211_STA_DISABLE_160MHZ ; 
 int IEEE80211_STA_DISABLE_80P80MHZ ; 
 int /*<<< orphan*/  IEEE80211_VHT_CAP_SHORT_GI_160 ; 
 int /*<<< orphan*/  IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ ; 
 int /*<<< orphan*/  IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ ; 
 int /*<<< orphan*/  IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE ; 
 int /*<<< orphan*/  IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,struct ieee80211_sta_vht_cap*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ieee80211_sta_vht_cap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sta_vht_cap*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_sub_if_data *sdata,
				 struct sk_buff *skb,
				 struct ieee80211_supported_band *sband,
				 struct ieee80211_vht_cap *ap_vht_cap)
{
	u8 *pos;
	u32 cap;
	struct ieee80211_sta_vht_cap vht_cap;

	FUNC0(sizeof(vht_cap) != sizeof(sband->vht_cap));

	FUNC4(&vht_cap, &sband->vht_cap, sizeof(vht_cap));
	FUNC2(sdata, &vht_cap);

	/* determine capability flags */
	cap = vht_cap.cap;

	if (sdata->u.mgd.flags & IEEE80211_STA_DISABLE_80P80MHZ) {
		cap &= ~IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ;
		cap |= IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ;
	}

	if (sdata->u.mgd.flags & IEEE80211_STA_DISABLE_160MHZ) {
		cap &= ~IEEE80211_VHT_CAP_SHORT_GI_160;
		cap &= ~IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ;
	}

	/*
	 * Some APs apparently get confused if our capabilities are better
	 * than theirs, so restrict what we advertise in the assoc request.
	 */
	if (!(ap_vht_cap->vht_cap_info &
			FUNC1(IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE)))
		cap &= ~IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE;

	/* reserve and fill IE */
	pos = FUNC5(skb, sizeof(struct ieee80211_vht_cap) + 2);
	FUNC3(pos, &vht_cap, cap);
}