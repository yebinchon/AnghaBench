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
struct cfg80211_chan_def {int dummy; } ;
struct wireless_dev {int iftype; struct cfg80211_chan_def preset_chandef; int /*<<< orphan*/  beacon_interval; } ;
struct genl_info {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  devlist_mtx; int /*<<< orphan*/  wiphy; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  NL80211_IFTYPE_AP 131 
#define  NL80211_IFTYPE_MESH_POINT 130 
#define  NL80211_IFTYPE_MONITOR 129 
#define  NL80211_IFTYPE_P2P_GO 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cfg80211_chan_def*) ; 
 int FUNC1 (struct cfg80211_registered_device*,struct wireless_dev*,struct cfg80211_chan_def*) ; 
 int FUNC2 (struct cfg80211_registered_device*,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wireless_dev*) ; 
 int FUNC6 (struct cfg80211_registered_device*,struct genl_info*,struct cfg80211_chan_def*) ; 

__attribute__((used)) static int FUNC7(struct cfg80211_registered_device *rdev,
				 struct wireless_dev *wdev,
				 struct genl_info *info)
{
	struct cfg80211_chan_def chandef;
	int result;
	enum nl80211_iftype iftype = NL80211_IFTYPE_MONITOR;

	if (wdev)
		iftype = wdev->iftype;

	if (!FUNC5(wdev))
		return -EOPNOTSUPP;

	result = FUNC6(rdev, info, &chandef);
	if (result)
		return result;

	FUNC3(&rdev->devlist_mtx);
	switch (iftype) {
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_P2P_GO:
		if (wdev->beacon_interval) {
			result = -EBUSY;
			break;
		}
		if (!FUNC0(&rdev->wiphy, &chandef)) {
			result = -EINVAL;
			break;
		}
		wdev->preset_chandef = chandef;
		result = 0;
		break;
	case NL80211_IFTYPE_MESH_POINT:
		result = FUNC1(rdev, wdev, &chandef);
		break;
	case NL80211_IFTYPE_MONITOR:
		result = FUNC2(rdev, &chandef);
		break;
	default:
		result = -EINVAL;
	}
	FUNC4(&rdev->devlist_mtx);

	return result;
}