#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wireless_dev {scalar_t__ iftype; TYPE_3__* current_bss; int /*<<< orphan*/  wiphy; } ;
struct station_info {int filled; int /*<<< orphan*/  txrate; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_6__ {TYPE_2__ pub; } ;
struct TYPE_4__ {int /*<<< orphan*/  get_station; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int ETH_ALEN ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int STATION_INFO_TX_BITRATE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct cfg80211_registered_device*,struct net_device*,int /*<<< orphan*/ *,struct station_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct wireless_dev*) ; 
 struct cfg80211_registered_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
				 struct iw_request_info *info,
				 struct iw_param *rate, char *extra)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC5(wdev->wiphy);
	/* we are under RTNL - globally locked - so can use a static struct */
	static struct station_info sinfo;
	u8 addr[ETH_ALEN];
	int err;

	if (wdev->iftype != NL80211_IFTYPE_STATION)
		return -EOPNOTSUPP;

	if (!rdev->ops->get_station)
		return -EOPNOTSUPP;

	err = 0;
	FUNC3(wdev);
	if (wdev->current_bss)
		FUNC1(addr, wdev->current_bss->pub.bssid, ETH_ALEN);
	else
		err = -EOPNOTSUPP;
	FUNC4(wdev);
	if (err)
		return err;

	err = FUNC2(rdev, dev, addr, &sinfo);
	if (err)
		return err;

	if (!(sinfo.filled & STATION_INFO_TX_BITRATE))
		return -EOPNOTSUPP;

	rate->value = 100000 * FUNC0(&sinfo.txrate);

	return 0;
}