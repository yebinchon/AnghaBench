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
struct wiphy {scalar_t__* bands; } ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;

/* Variables and functions */
 int IEEE80211_NUM_BANDS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 

void FUNC1(struct wiphy *wiphy)
{
	enum ieee80211_band band;

	for (band = 0; band < IEEE80211_NUM_BANDS; band++)
		if (wiphy->bands[band])
			FUNC0(wiphy->bands[band], band);
}