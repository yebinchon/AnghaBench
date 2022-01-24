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
typedef  int /*<<< orphan*/  u16 ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_3__ {int use_short_preamble; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {int flags; TYPE_2__ vif; } ;
struct ieee80211_rate {int flags; int /*<<< orphan*/  bitrate; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int IEEE80211_RATE_ERP_G ; 
 int IEEE80211_SDATA_OPERATING_GMODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,size_t,int /*<<< orphan*/ ,int,int) ; 
 struct ieee80211_sub_if_data* FUNC2 (struct ieee80211_vif*) ; 

__le16 FUNC3(struct ieee80211_hw *hw,
					struct ieee80211_vif *vif,
					enum ieee80211_band band,
					size_t frame_len,
					struct ieee80211_rate *rate)
{
	struct ieee80211_sub_if_data *sdata;
	u16 dur;
	int erp;
	bool short_preamble = false;

	erp = 0;
	if (vif) {
		sdata = FUNC2(vif);
		short_preamble = sdata->vif.bss_conf.use_short_preamble;
		if (sdata->flags & IEEE80211_SDATA_OPERATING_GMODE)
			erp = rate->flags & IEEE80211_RATE_ERP_G;
	}

	dur = FUNC1(band, frame_len, rate->bitrate, erp,
				       short_preamble);

	return FUNC0(dur);
}