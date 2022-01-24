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
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {struct ieee80211_supported_band** bands; } ;
struct net_device {int /*<<< orphan*/  ieee80211_ptr; } ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_sub_if_data {int** rc_rateidx_mcs_mask; int* rc_has_mcs_mask; int /*<<< orphan*/ * rc_rateidx_mask; } ;
struct TYPE_3__ {int flags; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct cfg80211_bitrate_mask {TYPE_2__* control; } ;
struct TYPE_4__ {int /*<<< orphan*/  mcs; int /*<<< orphan*/  legacy; } ;

/* Variables and functions */
 int ENETDOWN ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int IEEE80211_HT_MCS_MASK_LEN ; 
 int IEEE80211_HW_HAS_RATE_CONTROL ; 
 int IEEE80211_NUM_BANDS ; 
 int FUNC1 (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct cfg80211_bitrate_mask const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 struct ieee80211_local* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct wiphy *wiphy,
				      struct net_device *dev,
				      const u8 *addr,
				      const struct cfg80211_bitrate_mask *mask)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = FUNC4(dev->ieee80211_ptr);
	int i, ret;

	if (!FUNC2(sdata))
		return -ENETDOWN;

	if (local->hw.flags & IEEE80211_HW_HAS_RATE_CONTROL) {
		ret = FUNC1(local, sdata, mask);
		if (ret)
			return ret;
	}

	for (i = 0; i < IEEE80211_NUM_BANDS; i++) {
		struct ieee80211_supported_band *sband = wiphy->bands[i];
		int j;

		sdata->rc_rateidx_mask[i] = mask->control[i].legacy;
		FUNC3(sdata->rc_rateidx_mcs_mask[i], mask->control[i].mcs,
		       sizeof(mask->control[i].mcs));

		sdata->rc_has_mcs_mask[i] = false;
		if (!sband)
			continue;

		for (j = 0; j < IEEE80211_HT_MCS_MASK_LEN; j++)
			if (~sdata->rc_rateidx_mcs_mask[i][j]) {
				sdata->rc_has_mcs_mask[i] = true;
				break;
			}
	}

	return 0;
}