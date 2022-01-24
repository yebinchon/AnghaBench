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
struct cfg80211_chan_def {int dummy; } ;

/* Variables and functions */
 int IEEE80211_CHAN_DISABLED ; 
 int IEEE80211_CHAN_NO_IBSS ; 
 int IEEE80211_CHAN_PASSIVE_SCAN ; 
 int IEEE80211_CHAN_RADAR ; 
 int FUNC0 (struct wiphy*,struct cfg80211_chan_def*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wiphy*,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

bool FUNC3(struct wiphy *wiphy,
			     struct cfg80211_chan_def *chandef)
{
	bool res;

	FUNC1(wiphy, chandef);

	res = FUNC0(wiphy, chandef,
				      IEEE80211_CHAN_DISABLED |
				      IEEE80211_CHAN_PASSIVE_SCAN |
				      IEEE80211_CHAN_NO_IBSS |
				      IEEE80211_CHAN_RADAR);

	FUNC2(res);
	return res;
}