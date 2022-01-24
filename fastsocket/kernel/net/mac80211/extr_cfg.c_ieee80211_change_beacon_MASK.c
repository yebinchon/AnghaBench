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
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  beacon; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;
struct cfg80211_beacon_data {int dummy; } ;
struct beacon_data {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct ieee80211_sub_if_data*,struct cfg80211_beacon_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,int) ; 
 struct beacon_data* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct wiphy *wiphy, struct net_device *dev,
				   struct cfg80211_beacon_data *params)
{
	struct ieee80211_sub_if_data *sdata;
	struct beacon_data *old;
	int err;

	sdata = FUNC0(dev);

	old = FUNC3(sdata->u.ap.beacon);
	if (!old)
		return -ENOENT;

	err = FUNC1(sdata, params);
	if (err < 0)
		return err;
	FUNC2(sdata, err);
	return 0;
}