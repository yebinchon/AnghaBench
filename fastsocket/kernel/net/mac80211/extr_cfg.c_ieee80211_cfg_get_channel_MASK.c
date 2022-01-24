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
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  chanctx_conf; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;
struct cfg80211_chan_def {int dummy; } ;
struct ieee80211_local {scalar_t__ open_count; scalar_t__ monitors; struct cfg80211_chan_def _oper_chandef; struct cfg80211_chan_def monitor_chandef; scalar_t__ use_chanctx; } ;
struct ieee80211_chanctx_conf {struct cfg80211_chan_def def; } ;

/* Variables and functions */
 int ENODATA ; 
 struct ieee80211_sub_if_data* FUNC0 (struct wireless_dev*) ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 struct ieee80211_chanctx_conf* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct ieee80211_local* FUNC4 (struct wiphy*) ; 

__attribute__((used)) static int FUNC5(struct wiphy *wiphy,
				     struct wireless_dev *wdev,
				     struct cfg80211_chan_def *chandef)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(wdev);
	struct ieee80211_local *local = FUNC4(wiphy);
	struct ieee80211_chanctx_conf *chanctx_conf;
	int ret = -ENODATA;

	FUNC2();
	chanctx_conf = FUNC1(sdata->vif.chanctx_conf);
	if (chanctx_conf) {
		*chandef = chanctx_conf->def;
		ret = 0;
	} else if (local->open_count > 0 &&
		   local->open_count == local->monitors &&
		   sdata->vif.type == NL80211_IFTYPE_MONITOR) {
		if (local->use_chanctx)
			*chandef = local->monitor_chandef;
		else
			*chandef = local->_oper_chandef;
		ret = 0;
	}
	FUNC3();

	return ret;
}