#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wiphy {int /*<<< orphan*/ * bands; } ;
struct ieee80211_regdomain {int dummy; } ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;

/* Variables and functions */
 int IEEE80211_NUM_BANDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wiphy*,int /*<<< orphan*/ ,struct ieee80211_regdomain const*) ; 

void FUNC2(struct wiphy *wiphy,
				   const struct ieee80211_regdomain *regd)
{
	enum ieee80211_band band;
	unsigned int bands_set = 0;

	for (band = 0; band < IEEE80211_NUM_BANDS; band++) {
		if (!wiphy->bands[band])
			continue;
		FUNC1(wiphy, wiphy->bands[band], regd);
		bands_set++;
	}

	/*
	 * no point in calling this if it won't have any effect
	 * on your device's supported bands.
	 */
	FUNC0(!bands_set);
}