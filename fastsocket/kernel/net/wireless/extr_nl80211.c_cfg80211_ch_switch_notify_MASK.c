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
struct wireless_dev {scalar_t__ iftype; int /*<<< orphan*/  channel; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;
struct cfg80211_chan_def {int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_P2P_GO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_chan_def*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC3 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct wireless_dev*) ; 
 struct cfg80211_registered_device* FUNC5 (struct wiphy*) ; 

void FUNC6(struct net_device *dev,
			       struct cfg80211_chan_def *chandef)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct wiphy *wiphy = wdev->wiphy;
	struct cfg80211_registered_device *rdev = FUNC5(wiphy);

	FUNC2(dev, chandef);

	FUNC3(wdev);

	if (FUNC0(wdev->iftype != NL80211_IFTYPE_AP &&
		    wdev->iftype != NL80211_IFTYPE_P2P_GO))
		goto out;

	wdev->channel = chandef->chan;
	FUNC1(rdev, dev, chandef, GFP_KERNEL);
out:
	FUNC4(wdev);
	return;
}