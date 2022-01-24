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
struct TYPE_4__ {int flags; int value; scalar_t__ fixed; int /*<<< orphan*/  disabled; } ;
union iwreq_data {TYPE_2__ txpower; } ;
struct wireless_dev {int /*<<< orphan*/  wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  rfkill_sync; int /*<<< orphan*/  rfkill; TYPE_1__* ops; } ;
typedef  enum nl80211_tx_power_setting { ____Placeholder_nl80211_tx_power_setting } nl80211_tx_power_setting ;
struct TYPE_3__ {int /*<<< orphan*/  set_tx_power; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int IW_TXPOW_DBM ; 
 int IW_TXPOW_RANGE ; 
 int IW_TXPOW_TYPE ; 
 int NL80211_TX_POWER_AUTOMATIC ; 
 int NL80211_TX_POWER_FIXED ; 
 int NL80211_TX_POWER_LIMITED ; 
 int FUNC1 (struct cfg80211_registered_device*,struct wireless_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				    struct iw_request_info *info,
				    union iwreq_data *data, char *extra)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC4(wdev->wiphy);
	enum nl80211_tx_power_setting type;
	int dbm = 0;

	if ((data->txpower.flags & IW_TXPOW_TYPE) != IW_TXPOW_DBM)
		return -EINVAL;
	if (data->txpower.flags & IW_TXPOW_RANGE)
		return -EINVAL;

	if (!rdev->ops->set_tx_power)
		return -EOPNOTSUPP;

	/* only change when not disabling */
	if (!data->txpower.disabled) {
		FUNC2(rdev->rfkill, false);

		if (data->txpower.fixed) {
			/*
			 * wext doesn't support negative values, see
			 * below where it's for automatic
			 */
			if (data->txpower.value < 0)
				return -EINVAL;
			dbm = data->txpower.value;
			type = NL80211_TX_POWER_FIXED;
			/* TODO: do regulatory check! */
		} else {
			/*
			 * Automatic power level setting, max being the value
			 * passed in from userland.
			 */
			if (data->txpower.value < 0) {
				type = NL80211_TX_POWER_AUTOMATIC;
			} else {
				dbm = data->txpower.value;
				type = NL80211_TX_POWER_LIMITED;
			}
		}
	} else {
		FUNC2(rdev->rfkill, true);
		FUNC3(&rdev->rfkill_sync);
		return 0;
	}

	return FUNC1(rdev, wdev, type, FUNC0(dbm));
}