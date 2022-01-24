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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/ * bssid; } ;
struct TYPE_4__ {TYPE_1__ connect; int /*<<< orphan*/ * bssid; } ;
struct wireless_dev {scalar_t__ iftype; scalar_t__ sme_state; TYPE_2__ wext; int /*<<< orphan*/  wiphy; } ;
struct sockaddr {scalar_t__ sa_family; int /*<<< orphan*/ * sa_data; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  devlist_mtx; int /*<<< orphan*/  sched_scan_mtx; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 scalar_t__ CFG80211_SME_IDLE ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int FUNC1 (struct cfg80211_registered_device*,struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg80211_registered_device*) ; 
 int FUNC3 (struct cfg80211_registered_device*,struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfg80211_registered_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct wireless_dev*) ; 
 struct cfg80211_registered_device* FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(struct net_device *dev,
			    struct iw_request_info *info,
			    struct sockaddr *ap_addr, char *extra)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC13(wdev->wiphy);
	u8 *bssid = ap_addr->sa_data;
	int err;

	/* call only for station! */
	if (FUNC0(wdev->iftype != NL80211_IFTYPE_STATION))
		return -EINVAL;

	if (ap_addr->sa_family != ARPHRD_ETHER)
		return -EINVAL;

	/* automatic mode */
	if (FUNC7(bssid) || FUNC6(bssid))
		bssid = NULL;

	FUNC2(rdev);
	FUNC9(&rdev->devlist_mtx);
	FUNC9(&rdev->sched_scan_mtx);
	FUNC11(wdev);

	if (wdev->sme_state != CFG80211_SME_IDLE) {
		err = 0;
		/* both automatic */
		if (!bssid && !wdev->wext.connect.bssid)
			goto out;

		/* fixed already - and no change */
		if (wdev->wext.connect.bssid && bssid &&
		    FUNC5(bssid, wdev->wext.connect.bssid))
			goto out;

		err = FUNC1(rdev, dev,
					    WLAN_REASON_DEAUTH_LEAVING, false);
		if (err)
			goto out;
	}

	if (bssid) {
		FUNC8(wdev->wext.bssid, bssid, ETH_ALEN);
		wdev->wext.connect.bssid = wdev->wext.bssid;
	} else
		wdev->wext.connect.bssid = NULL;

	err = FUNC3(rdev, wdev);
 out:
	FUNC12(wdev);
	FUNC10(&rdev->sched_scan_mtx);
	FUNC10(&rdev->devlist_mtx);
	FUNC4(rdev);
	return err;
}