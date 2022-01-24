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
struct wireless_dev {int cac_started; unsigned long cac_start_time; int /*<<< orphan*/  channel; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nl80211_radar_event { ____Placeholder_nl80211_radar_event } nl80211_radar_event ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_DFS_MIN_CAC_TIME_MS ; 
 int /*<<< orphan*/  NL80211_CHAN_NO_HT ; 
 int /*<<< orphan*/  NL80211_DFS_AVAILABLE ; 
#define  NL80211_RADAR_CAC_ABORTED 129 
#define  NL80211_RADAR_CAC_FINISHED 128 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_chan_def*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wiphy*,struct cfg80211_chan_def*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cfg80211_registered_device*,struct cfg80211_chan_def*,int,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int) ; 
 struct cfg80211_registered_device* FUNC7 (struct wiphy*) ; 

void FUNC8(struct net_device *netdev,
			enum nl80211_radar_event event, gfp_t gfp)
{
	struct wireless_dev *wdev = netdev->ieee80211_ptr;
	struct wiphy *wiphy = wdev->wiphy;
	struct cfg80211_registered_device *rdev = FUNC7(wiphy);
	struct cfg80211_chan_def chandef;
	unsigned long timeout;

	FUNC6(netdev, event);

	if (FUNC0(!wdev->cac_started))
		return;

	if (FUNC0(!wdev->channel))
		return;

	FUNC1(&chandef, wdev->channel, NL80211_CHAN_NO_HT);

	switch (event) {
	case NL80211_RADAR_CAC_FINISHED:
		timeout = wdev->cac_start_time +
			  FUNC3(IEEE80211_DFS_MIN_CAC_TIME_MS);
		FUNC0(!FUNC5(jiffies, timeout));
		FUNC2(wiphy, &chandef, NL80211_DFS_AVAILABLE);
		break;
	case NL80211_RADAR_CAC_ABORTED:
		break;
	default:
		FUNC0(1);
		return;
	}
	wdev->cac_started = false;

	FUNC4(rdev, &chandef, event, netdev, gfp);
}