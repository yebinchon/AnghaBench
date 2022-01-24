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
struct TYPE_3__ {int /*<<< orphan*/  auth_type; } ;
struct TYPE_4__ {TYPE_1__ connect; int /*<<< orphan*/  ie_len; int /*<<< orphan*/ * ie; } ;
struct wireless_dev {int iftype; scalar_t__ beacon_interval; TYPE_2__ wext; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  sched_scan_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_AUTHTYPE_AUTOMATIC ; 
#define  NL80211_IFTYPE_ADHOC 133 
#define  NL80211_IFTYPE_AP 132 
#define  NL80211_IFTYPE_MESH_POINT 131 
#define  NL80211_IFTYPE_P2P_CLIENT 130 
#define  NL80211_IFTYPE_P2P_GO 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int /*<<< orphan*/  FUNC0 (struct cfg80211_registered_device*,struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_registered_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg80211_registered_device*,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cfg80211_registered_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfg80211_registered_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct wireless_dev*) ; 

void FUNC10(struct cfg80211_registered_device *rdev,
		   struct wireless_dev *wdev)
{
	struct net_device *dev = wdev->netdev;

	switch (wdev->iftype) {
	case NL80211_IFTYPE_ADHOC:
		FUNC2(rdev, dev, true);
		break;
	case NL80211_IFTYPE_P2P_CLIENT:
	case NL80211_IFTYPE_STATION:
		FUNC6(&rdev->sched_scan_mtx);
		FUNC1(rdev, false);
		FUNC7(&rdev->sched_scan_mtx);

		FUNC8(wdev);
#ifdef CONFIG_CFG80211_WEXT
		kfree(wdev->wext.ie);
		wdev->wext.ie = NULL;
		wdev->wext.ie_len = 0;
		wdev->wext.connect.auth_type = NL80211_AUTHTYPE_AUTOMATIC;
#endif
		FUNC0(rdev, dev,
				      WLAN_REASON_DEAUTH_LEAVING, true);
		FUNC9(wdev);
		break;
	case NL80211_IFTYPE_MESH_POINT:
		FUNC3(rdev, dev);
		break;
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_P2P_GO:
		FUNC4(rdev, dev);
		break;
	default:
		break;
	}

	wdev->beacon_interval = 0;
}