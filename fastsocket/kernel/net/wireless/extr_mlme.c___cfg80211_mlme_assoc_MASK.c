#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wireless_dev {scalar_t__ sme_state; TYPE_2__* current_bss; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  vht_capa_mod_mask; int /*<<< orphan*/  ht_capa_mod_mask; } ;
struct cfg80211_registered_device {TYPE_3__ wiphy; } ;
struct cfg80211_assoc_request {int /*<<< orphan*/  bss; int /*<<< orphan*/  vht_capa_mask; int /*<<< orphan*/  ht_capa_mask; scalar_t__ prev_bssid; } ;
struct TYPE_5__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_6__ {TYPE_1__ pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 scalar_t__ CFG80211_SME_CONNECTED ; 
 scalar_t__ CFG80211_SME_CONNECTING ; 
 int /*<<< orphan*/  CHAN_MODE_SHARED ; 
 int EALREADY ; 
 int ENOENT ; 
 int /*<<< orphan*/  WLAN_CAPABILITY_ESS ; 
 int FUNC1 (struct cfg80211_registered_device*,struct wireless_dev*,struct ieee80211_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct ieee80211_channel*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_assoc_request*) ; 

int FUNC8(struct cfg80211_registered_device *rdev,
			  struct net_device *dev,
			  struct ieee80211_channel *chan,
			  const u8 *bssid,
			  const u8 *ssid, int ssid_len,
			  struct cfg80211_assoc_request *req)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	int err;
	bool was_connected = false;

	FUNC0(wdev);

	if (wdev->current_bss && req->prev_bssid &&
	    FUNC6(wdev->current_bss->pub.bssid, req->prev_bssid)) {
		/*
		 * Trying to reassociate: Allow this to proceed and let the old
		 * association to be dropped when the new one is completed.
		 */
		if (wdev->sme_state == CFG80211_SME_CONNECTED) {
			was_connected = true;
			wdev->sme_state = CFG80211_SME_CONNECTING;
		}
	} else if (wdev->current_bss)
		return -EALREADY;

	FUNC3(&req->ht_capa_mask,
				  rdev->wiphy.ht_capa_mod_mask);
	FUNC4(&req->vht_capa_mask,
				   rdev->wiphy.vht_capa_mod_mask);

	req->bss = FUNC2(&rdev->wiphy, chan, bssid, ssid, ssid_len,
				    WLAN_CAPABILITY_ESS, WLAN_CAPABILITY_ESS);
	if (!req->bss) {
		if (was_connected)
			wdev->sme_state = CFG80211_SME_CONNECTED;
		return -ENOENT;
	}

	err = FUNC1(rdev, wdev, chan, CHAN_MODE_SHARED);
	if (err)
		goto out;

	err = FUNC7(rdev, dev, req);

out:
	if (err) {
		if (was_connected)
			wdev->sme_state = CFG80211_SME_CONNECTED;
		FUNC5(&rdev->wiphy, req->bss);
	}

	return err;
}