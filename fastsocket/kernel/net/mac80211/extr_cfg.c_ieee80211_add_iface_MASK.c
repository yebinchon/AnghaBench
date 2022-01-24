#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct vif_params {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mntr_flags; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;
struct ieee80211_local {int dummy; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 struct wireless_dev* FUNC0 (int) ; 
 struct ieee80211_sub_if_data* FUNC1 (struct wireless_dev*) ; 
 int NL80211_IFTYPE_MONITOR ; 
 int FUNC2 (struct ieee80211_local*,char const*,struct wireless_dev**,int,struct vif_params*) ; 
 struct ieee80211_local* FUNC3 (struct wiphy*) ; 

__attribute__((used)) static struct wireless_dev *FUNC4(struct wiphy *wiphy,
						const char *name,
						enum nl80211_iftype type,
						u32 *flags,
						struct vif_params *params)
{
	struct ieee80211_local *local = FUNC3(wiphy);
	struct wireless_dev *wdev;
	struct ieee80211_sub_if_data *sdata;
	int err;

	err = FUNC2(local, name, &wdev, type, params);
	if (err)
		return FUNC0(err);

	if (type == NL80211_IFTYPE_MONITOR && flags) {
		sdata = FUNC1(wdev);
		sdata->u.mntr_flags = *flags;
	}

	return wdev;
}