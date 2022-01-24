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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  chanctx_conf; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;
struct ieee80211_channel {int /*<<< orphan*/  center_freq; } ;
struct TYPE_4__ {struct ieee80211_channel* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  WLAN_EID_DS_PARAMS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ieee80211_chanctx_conf* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (struct sk_buff*,int) ; 
 int FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_sub_if_data *sdata,
				 struct sk_buff *skb)
{
	struct ieee80211_chanctx_conf *chanctx_conf;
	struct ieee80211_channel *chan;
	u8 *pos;

	if (FUNC6(skb) < 3)
		return -ENOMEM;

	FUNC3();
	chanctx_conf = FUNC2(sdata->vif.chanctx_conf);
	if (FUNC0(!chanctx_conf)) {
		FUNC4();
		return -EINVAL;
	}
	chan = chanctx_conf->def.chan;
	FUNC4();

	pos = FUNC5(skb, 2 + 1);
	*pos++ = WLAN_EID_DS_PARAMS;
	*pos++ = 1;
	*pos++ = FUNC1(chan->center_freq);

	return 0;
}