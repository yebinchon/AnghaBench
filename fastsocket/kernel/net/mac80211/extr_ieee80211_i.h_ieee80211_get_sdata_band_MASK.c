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
struct TYPE_4__ {int /*<<< orphan*/  chanctx_conf; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;
struct TYPE_6__ {TYPE_2__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_3__ def; } ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_5__ {int band; } ;

/* Variables and functions */
 int IEEE80211_BAND_2GHZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ieee80211_chanctx_conf* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline enum ieee80211_band
FUNC4(struct ieee80211_sub_if_data *sdata)
{
	enum ieee80211_band band = IEEE80211_BAND_2GHZ;
	struct ieee80211_chanctx_conf *chanctx_conf;

	FUNC2();
	chanctx_conf = FUNC1(sdata->vif.chanctx_conf);
	if (!FUNC0(!chanctx_conf))
		band = chanctx_conf->def.chan->band;
	FUNC3();

	return band;
}