#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wireless_dev {scalar_t__ sme_state; TYPE_3__* current_bss; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct net_device {int /*<<< orphan*/  const* dev_addr; struct wireless_dev* ieee80211_ptr; } ;
struct TYPE_5__ {int /*<<< orphan*/  reason_code; } ;
struct TYPE_6__ {TYPE_1__ deauth; } ;
struct ieee80211_mgmt {int /*<<< orphan*/ * bssid; int /*<<< orphan*/  sa; TYPE_2__ u; } ;
struct cfg80211_registered_device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_7__ {TYPE_4__ pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 scalar_t__ CFG80211_SME_CONNECTED ; 
 scalar_t__ CFG80211_SME_CONNECTING ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WLAN_STATUS_UNSPECIFIED_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wiphy*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cfg80211_registered_device*,struct net_device*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 struct cfg80211_registered_device* FUNC9 (struct wiphy*) ; 

void FUNC10(struct net_device *dev,
				   const u8 *buf, size_t len)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct wiphy *wiphy = wdev->wiphy;
	struct cfg80211_registered_device *rdev = FUNC9(wiphy);
	struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *)buf;
	const u8 *bssid = mgmt->bssid;
	bool was_current = false;

	FUNC8(dev);
	FUNC0(wdev);

	if (wdev->current_bss &&
	    FUNC5(wdev->current_bss->pub.bssid, bssid)) {
		FUNC4(wdev->current_bss);
		FUNC3(wiphy, &wdev->current_bss->pub);
		wdev->current_bss = NULL;
		was_current = true;
	}

	FUNC7(rdev, dev, buf, len, GFP_KERNEL);

	if (wdev->sme_state == CFG80211_SME_CONNECTED && was_current) {
		u16 reason_code;
		bool from_ap;

		reason_code = FUNC6(mgmt->u.deauth.reason_code);

		from_ap = !FUNC5(mgmt->sa, dev->dev_addr);
		FUNC2(dev, NULL, 0, reason_code, from_ap);
	} else if (wdev->sme_state == CFG80211_SME_CONNECTING) {
		FUNC1(dev, mgmt->bssid, NULL, 0, NULL, 0,
					  WLAN_STATUS_UNSPECIFIED_FAILURE,
					  false, NULL);
	}
}