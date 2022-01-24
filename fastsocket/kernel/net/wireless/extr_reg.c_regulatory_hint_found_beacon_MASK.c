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
struct wiphy {int dummy; } ;
struct reg_beacon {int /*<<< orphan*/  list; int /*<<< orphan*/  chan; } ;
struct ieee80211_channel {int flags; scalar_t__ band; int /*<<< orphan*/  center_freq; scalar_t__ beacon_found; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ IEEE80211_BAND_2GHZ ; 
 int IEEE80211_CHAN_RADAR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct reg_beacon* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ieee80211_channel*,int) ; 
 int FUNC6 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  reg_pending_beacons ; 
 int /*<<< orphan*/  reg_pending_beacons_lock ; 
 int /*<<< orphan*/  reg_work ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct wiphy*) ; 

int FUNC11(struct wiphy *wiphy,
				 struct ieee80211_channel *beacon_chan,
				 gfp_t gfp)
{
	struct reg_beacon *reg_beacon;
	bool processing;

	if (beacon_chan->beacon_found ||
	    beacon_chan->flags & IEEE80211_CHAN_RADAR ||
	    (beacon_chan->band == IEEE80211_BAND_2GHZ &&
	     !FUNC1(beacon_chan->center_freq)))
		return 0;

	FUNC8(&reg_pending_beacons_lock);
	processing = FUNC6(beacon_chan);
	FUNC9(&reg_pending_beacons_lock);

	if (processing)
		return 0;

	reg_beacon = FUNC3(sizeof(struct reg_beacon), gfp);
	if (!reg_beacon)
		return -ENOMEM;

	FUNC0("Found new beacon on frequency: %d MHz (Ch %d) on %s\n",
		      beacon_chan->center_freq,
		      FUNC2(beacon_chan->center_freq),
		      FUNC10(wiphy));

	FUNC5(&reg_beacon->chan, beacon_chan,
	       sizeof(struct ieee80211_channel));

	/*
	 * Since we can be called from BH or and non-BH context
	 * we must use spin_lock_bh()
	 */
	FUNC8(&reg_pending_beacons_lock);
	FUNC4(&reg_beacon->list, &reg_pending_beacons);
	FUNC9(&reg_pending_beacons_lock);

	FUNC7(&reg_work);

	return 0;
}