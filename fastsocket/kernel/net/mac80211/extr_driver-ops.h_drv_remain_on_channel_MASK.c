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
struct ieee80211_sub_if_data {int /*<<< orphan*/  vif; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct ieee80211_channel {int dummy; } ;
typedef  enum ieee80211_roc_type { ____Placeholder_ieee80211_roc_type } ieee80211_roc_type ;
struct TYPE_2__ {int (* remain_on_channel ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ieee80211_channel*,unsigned int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ieee80211_channel*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_channel*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,int) ; 

__attribute__((used)) static inline int FUNC4(struct ieee80211_local *local,
					struct ieee80211_sub_if_data *sdata,
					struct ieee80211_channel *chan,
					unsigned int duration,
					enum ieee80211_roc_type type)
{
	int ret;

	FUNC0();

	FUNC2(local, sdata, chan, duration, type);
	ret = local->ops->remain_on_channel(&local->hw, &sdata->vif,
					    chan, duration, type);
	FUNC3(local, ret);

	return ret;
}