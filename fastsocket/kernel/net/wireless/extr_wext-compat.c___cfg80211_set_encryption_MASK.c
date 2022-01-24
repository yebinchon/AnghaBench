#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {int privacy; } ;
struct TYPE_9__ {int default_key; int default_mgmt_key; TYPE_5__* keys; TYPE_3__ connect; } ;
struct wireless_dev {scalar_t__ iftype; TYPE_4__ wext; scalar_t__ current_bss; int /*<<< orphan*/  netdev; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct key_params {scalar_t__ cipher; int /*<<< orphan*/  key; scalar_t__ key_len; } ;
struct TYPE_7__ {int flags; } ;
struct cfg80211_registered_device {TYPE_2__ wiphy; TYPE_1__* ops; } ;
struct TYPE_10__ {int /*<<< orphan*/ * data; struct key_params* params; } ;
struct TYPE_6__ {int /*<<< orphan*/  set_default_mgmt_key; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOLINK ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int WIPHY_FLAG_IBSS_RSN ; 
 scalar_t__ WLAN_CIPHER_SUITE_AES_CMAC ; 
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ; 
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ; 
 int /*<<< orphan*/  FUNC0 (struct cfg80211_registered_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct cfg80211_registered_device*,struct wireless_dev*) ; 
 scalar_t__ FUNC2 (struct cfg80211_registered_device*,struct key_params*,int,int,int /*<<< orphan*/  const*) ; 
 TYPE_5__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (struct cfg80211_registered_device*,struct net_device*,int,int,int /*<<< orphan*/  const*,struct key_params*) ; 
 int FUNC6 (struct cfg80211_registered_device*,struct net_device*,int,int,int /*<<< orphan*/  const*) ; 
 int FUNC7 (struct cfg80211_registered_device*,struct net_device*,int,int,int) ; 
 int FUNC8 (struct cfg80211_registered_device*,struct net_device*,int) ; 

__attribute__((used)) static int FUNC9(struct cfg80211_registered_device *rdev,
				     struct net_device *dev, bool pairwise,
				     const u8 *addr, bool remove, bool tx_key,
				     int idx, struct key_params *params)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	int err, i;
	bool rejoin = false;

	if (pairwise && !addr)
		return -EINVAL;

	if (!wdev->wext.keys) {
		wdev->wext.keys = FUNC3(sizeof(*wdev->wext.keys),
					      GFP_KERNEL);
		if (!wdev->wext.keys)
			return -ENOMEM;
		for (i = 0; i < 6; i++)
			wdev->wext.keys->params[i].key =
				wdev->wext.keys->data[i];
	}

	if (wdev->iftype != NL80211_IFTYPE_ADHOC &&
	    wdev->iftype != NL80211_IFTYPE_STATION)
		return -EOPNOTSUPP;

	if (params->cipher == WLAN_CIPHER_SUITE_AES_CMAC) {
		if (!wdev->current_bss)
			return -ENOLINK;

		if (!rdev->ops->set_default_mgmt_key)
			return -EOPNOTSUPP;

		if (idx < 4 || idx > 5)
			return -EINVAL;
	} else if (idx < 0 || idx > 3)
		return -EINVAL;

	if (remove) {
		err = 0;
		if (wdev->current_bss) {
			/*
			 * If removing the current TX key, we will need to
			 * join a new IBSS without the privacy bit clear.
			 */
			if (idx == wdev->wext.default_key &&
			    wdev->iftype == NL80211_IFTYPE_ADHOC) {
				FUNC0(rdev, wdev->netdev, true);
				rejoin = true;
			}

			if (!pairwise && addr &&
			    !(rdev->wiphy.flags & WIPHY_FLAG_IBSS_RSN))
				err = -ENOENT;
			else
				err = FUNC6(rdev, dev, idx, pairwise,
						   addr);
		}
		wdev->wext.connect.privacy = false;
		/*
		 * Applications using wireless extensions expect to be
		 * able to delete keys that don't exist, so allow that.
		 */
		if (err == -ENOENT)
			err = 0;
		if (!err) {
			if (!addr) {
				wdev->wext.keys->params[idx].key_len = 0;
				wdev->wext.keys->params[idx].cipher = 0;
			}
			if (idx == wdev->wext.default_key)
				wdev->wext.default_key = -1;
			else if (idx == wdev->wext.default_mgmt_key)
				wdev->wext.default_mgmt_key = -1;
		}

		if (!err && rejoin)
			err = FUNC1(rdev, wdev);

		return err;
	}

	if (addr)
		tx_key = false;

	if (FUNC2(rdev, params, idx, pairwise, addr))
		return -EINVAL;

	err = 0;
	if (wdev->current_bss)
		err = FUNC5(rdev, dev, idx, pairwise, addr, params);
	if (err)
		return err;

	if (!addr) {
		wdev->wext.keys->params[idx] = *params;
		FUNC4(wdev->wext.keys->data[idx],
			params->key, params->key_len);
		wdev->wext.keys->params[idx].key =
			wdev->wext.keys->data[idx];
	}

	if ((params->cipher == WLAN_CIPHER_SUITE_WEP40 ||
	     params->cipher == WLAN_CIPHER_SUITE_WEP104) &&
	    (tx_key || (!addr && wdev->wext.default_key == -1))) {
		if (wdev->current_bss) {
			/*
			 * If we are getting a new TX key from not having
			 * had one before we need to join a new IBSS with
			 * the privacy bit set.
			 */
			if (wdev->iftype == NL80211_IFTYPE_ADHOC &&
			    wdev->wext.default_key == -1) {
				FUNC0(rdev, wdev->netdev, true);
				rejoin = true;
			}
			err = FUNC7(rdev, dev, idx, true, true);
		}
		if (!err) {
			wdev->wext.default_key = idx;
			if (rejoin)
				err = FUNC1(rdev, wdev);
		}
		return err;
	}

	if (params->cipher == WLAN_CIPHER_SUITE_AES_CMAC &&
	    (tx_key || (!addr && wdev->wext.default_mgmt_key == -1))) {
		if (wdev->current_bss)
			err = FUNC8(rdev, dev, idx);
		if (!err)
			wdev->wext.default_mgmt_key = idx;
		return err;
	}

	return 0;
}