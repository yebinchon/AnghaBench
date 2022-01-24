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
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct TYPE_4__ {int /*<<< orphan*/  wiphy; } ;
struct ieee80211_local {TYPE_2__ hw; TYPE_1__* ops; } ;
typedef  int ssize_t ;
struct TYPE_3__ {scalar_t__ set_tsf; scalar_t__ reset_tsf; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct ieee80211_local*,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,struct ieee80211_sub_if_data*,unsigned long long) ; 
 int FUNC3 (char const*,int,unsigned long long*) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static ssize_t FUNC6(
	struct ieee80211_sub_if_data *sdata, const char *buf, int buflen)
{
	struct ieee80211_local *local = sdata->local;
	unsigned long long tsf;
	int ret;
	int tsf_is_delta = 0;

	if (FUNC4(buf, "reset", 5) == 0) {
		if (local->ops->reset_tsf) {
			FUNC1(local, sdata);
			FUNC5(local->hw.wiphy, "debugfs reset TSF\n");
		}
	} else {
		if (buflen > 10 && buf[1] == '=') {
			if (buf[0] == '+')
				tsf_is_delta = 1;
			else if (buf[0] == '-')
				tsf_is_delta = -1;
			else
				return -EINVAL;
			buf += 2;
		}
		ret = FUNC3(buf, 10, &tsf);
		if (ret < 0)
			return ret;
		if (tsf_is_delta)
			tsf = FUNC0(local, sdata) + tsf_is_delta * tsf;
		if (local->ops->set_tsf) {
			FUNC2(local, sdata, tsf);
			FUNC5(local->hw.wiphy,
				   "debugfs set TSF to %#018llx\n", tsf);
		}
	}

	return buflen;
}