#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wireless_dev {scalar_t__ sme_state; TYPE_3__* current_bss; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct net_device {int /*<<< orphan*/  const* dev_addr; struct wireless_dev* ieee80211_ptr; } ;
struct TYPE_6__ {int /*<<< orphan*/  reason_code; } ;
struct TYPE_7__ {TYPE_1__ disassoc; } ;
struct ieee80211_mgmt {int /*<<< orphan*/  sa; TYPE_2__ u; int /*<<< orphan*/ * bssid; } ;
struct cfg80211_registered_device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_8__ {TYPE_5__ pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 scalar_t__ CFG80211_SME_CONNECTED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wiphy*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cfg80211_registered_device*,struct net_device*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 struct cfg80211_registered_device* FUNC10 (struct wiphy*) ; 

void FUNC11(struct net_device *dev,
				     const u8 *buf, size_t len)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct wiphy *wiphy = wdev->wiphy;
	struct cfg80211_registered_device *rdev = FUNC10(wiphy);
	struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *)buf;
	const u8 *bssid = mgmt->bssid;
	u16 reason_code;
	bool from_ap;

	FUNC9(dev);
	FUNC0(wdev);

	FUNC8(rdev, dev, buf, len, GFP_KERNEL);

	if (wdev->sme_state != CFG80211_SME_CONNECTED)
		return;

	if (wdev->current_bss &&
	    FUNC6(wdev->current_bss->pub.bssid, bssid)) {
		FUNC4(dev, wdev->current_bss);
		FUNC5(wdev->current_bss);
		FUNC3(wiphy, &wdev->current_bss->pub);
		wdev->current_bss = NULL;
	} else
		FUNC1(1);


	reason_code = FUNC7(mgmt->u.disassoc.reason_code);

	from_ap = !FUNC6(mgmt->sa, dev->dev_addr);
	FUNC2(dev, NULL, 0, reason_code, from_ap);
}