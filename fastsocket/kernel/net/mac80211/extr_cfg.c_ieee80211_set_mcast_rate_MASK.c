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
struct TYPE_3__ {int /*<<< orphan*/  mcast_rate; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; } ;

/* Variables and functions */
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int IEEE80211_NUM_BANDS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC2(struct wiphy *wiphy, struct net_device *dev,
				    int rate[IEEE80211_NUM_BANDS])
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);

	FUNC1(sdata->vif.bss_conf.mcast_rate, rate,
	       sizeof(int) * IEEE80211_NUM_BANDS);

	return 0;
}