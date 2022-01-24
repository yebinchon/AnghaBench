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
struct wireless_dev {TYPE_2__* connect_keys; struct net_device* netdev; int /*<<< orphan*/  wiphy; } ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int dummy; } ;
struct TYPE_4__ {int def; int defmgmt; TYPE_1__* params; } ;
struct TYPE_3__ {int /*<<< orphan*/  cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int) ; 
 scalar_t__ FUNC2 (struct cfg80211_registered_device*,struct net_device*,int,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct cfg80211_registered_device*,struct net_device*,int,int,int) ; 
 scalar_t__ FUNC4 (struct cfg80211_registered_device*,struct net_device*,int) ; 
 struct cfg80211_registered_device* FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct wireless_dev *wdev)
{
	struct cfg80211_registered_device *rdev = FUNC5(wdev->wiphy);
	struct net_device *dev = wdev->netdev;
	int i;

	if (!wdev->connect_keys)
		return;

	for (i = 0; i < 6; i++) {
		if (!wdev->connect_keys->params[i].cipher)
			continue;
		if (FUNC2(rdev, dev, i, false, NULL,
				 &wdev->connect_keys->params[i])) {
			FUNC1(dev, "failed to set key %d\n", i);
			continue;
		}
		if (wdev->connect_keys->def == i)
			if (FUNC3(rdev, dev, i, true, true)) {
				FUNC1(dev, "failed to set defkey %d\n", i);
				continue;
			}
		if (wdev->connect_keys->defmgmt == i)
			if (FUNC4(rdev, dev, i))
				FUNC1(dev, "failed to set mgtdef %d\n", i);
	}

	FUNC0(wdev->connect_keys);
	wdev->connect_keys = NULL;
}