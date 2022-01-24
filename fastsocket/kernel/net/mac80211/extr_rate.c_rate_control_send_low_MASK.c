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
struct ieee80211_tx_rate_control {TYPE_3__* bss_conf; scalar_t__ bss; int /*<<< orphan*/  hw; struct ieee80211_supported_band* sband; int /*<<< orphan*/  skb; } ;
struct TYPE_5__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
struct ieee80211_supported_band {size_t band; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_6__ {int* mcast_rate; int /*<<< orphan*/  basic_rates; } ;
struct TYPE_4__ {int idx; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ieee80211_supported_band*,struct ieee80211_sta*,struct ieee80211_tx_info*) ; 
 scalar_t__ FUNC2 (struct ieee80211_tx_rate_control*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,struct ieee80211_supported_band*) ; 

bool FUNC4(struct ieee80211_sta *sta,
			   void *priv_sta,
			   struct ieee80211_tx_rate_control *txrc)
{
	struct ieee80211_tx_info *info = FUNC0(txrc->skb);
	struct ieee80211_supported_band *sband = txrc->sband;
	int mcast_rate;

	if (!sta || !priv_sta || FUNC2(txrc)) {
		FUNC1(txrc->hw, sband, sta, info);

		if (!sta && txrc->bss) {
			mcast_rate = txrc->bss_conf->mcast_rate[sband->band];
			if (mcast_rate > 0) {
				info->control.rates[0].idx = mcast_rate - 1;
				return true;
			}

			FUNC3(&info->control.rates[0].idx,
					      txrc->bss_conf->basic_rates,
					      sband);
		}
		return true;
	}
	return false;
}