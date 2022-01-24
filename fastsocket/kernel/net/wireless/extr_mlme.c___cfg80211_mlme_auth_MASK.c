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
struct wireless_dev {TYPE_2__* current_bss; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; } ;
struct cfg80211_auth_request {int ie_len; int sae_data_len; int auth_type; int key_len; int key_idx; TYPE_3__* bss; int /*<<< orphan*/  const* key; int /*<<< orphan*/  const* sae_data; int /*<<< orphan*/  const* ie; } ;
typedef  int /*<<< orphan*/  req ;
typedef  enum nl80211_auth_type { ____Placeholder_nl80211_auth_type } nl80211_auth_type ;
struct TYPE_7__ {int /*<<< orphan*/  channel; } ;
struct TYPE_5__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_6__ {TYPE_1__ pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 int /*<<< orphan*/  CHAN_MODE_SHARED ; 
 int EALREADY ; 
 int EINVAL ; 
 int ENOENT ; 
 int NL80211_AUTHTYPE_SHARED_KEY ; 
 int /*<<< orphan*/  WLAN_CAPABILITY_ESS ; 
 int FUNC1 (struct cfg80211_registered_device*,struct wireless_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,struct ieee80211_channel*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cfg80211_auth_request*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_auth_request*) ; 

int FUNC7(struct cfg80211_registered_device *rdev,
			 struct net_device *dev,
			 struct ieee80211_channel *chan,
			 enum nl80211_auth_type auth_type,
			 const u8 *bssid,
			 const u8 *ssid, int ssid_len,
			 const u8 *ie, int ie_len,
			 const u8 *key, int key_len, int key_idx,
			 const u8 *sae_data, int sae_data_len)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_auth_request req;
	int err;

	FUNC0(wdev);

	if (auth_type == NL80211_AUTHTYPE_SHARED_KEY)
		if (!key || !key_len || key_idx < 0 || key_idx > 4)
			return -EINVAL;

	if (wdev->current_bss &&
	    FUNC4(bssid, wdev->current_bss->pub.bssid))
		return -EALREADY;

	FUNC5(&req, 0, sizeof(req));

	req.ie = ie;
	req.ie_len = ie_len;
	req.sae_data = sae_data;
	req.sae_data_len = sae_data_len;
	req.auth_type = auth_type;
	req.bss = FUNC2(&rdev->wiphy, chan, bssid, ssid, ssid_len,
				   WLAN_CAPABILITY_ESS, WLAN_CAPABILITY_ESS);
	req.key = key;
	req.key_len = key_len;
	req.key_idx = key_idx;
	if (!req.bss)
		return -ENOENT;

	err = FUNC1(rdev, wdev, req.bss->channel,
				    CHAN_MODE_SHARED);
	if (err)
		goto out;

	err = FUNC6(rdev, dev, &req);

out:
	FUNC3(&rdev->wiphy, req.bss);
	return err;
}