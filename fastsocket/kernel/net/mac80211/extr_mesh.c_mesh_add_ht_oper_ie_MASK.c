#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_sta_ht_cap {int /*<<< orphan*/  ht_supported; } ;
struct ieee80211_supported_band {struct ieee80211_sta_ht_cap ht_cap; } ;
struct TYPE_9__ {int /*<<< orphan*/  ht_operation_mode; int /*<<< orphan*/  chandef; } ;
struct TYPE_10__ {TYPE_4__ bss_conf; int /*<<< orphan*/  chanctx_conf; } ;
struct ieee80211_sub_if_data {TYPE_5__ vif; struct ieee80211_local* local; } ;
struct TYPE_8__ {TYPE_2__* wiphy; } ;
struct ieee80211_local {TYPE_3__ hw; } ;
struct ieee80211_ht_operation {int dummy; } ;
struct ieee80211_channel {size_t band; } ;
struct TYPE_6__ {struct ieee80211_channel* chan; } ;
struct ieee80211_chanctx_conf {TYPE_1__ def; } ;
typedef  enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;
struct TYPE_7__ {struct ieee80211_supported_band** bands; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int NL80211_CHAN_NO_HT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ieee80211_sta_ht_cap*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ieee80211_chanctx_conf* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (struct sk_buff*,int) ; 
 int FUNC7 (struct sk_buff*) ; 

int FUNC8(struct ieee80211_sub_if_data *sdata,
			struct sk_buff *skb)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_chanctx_conf *chanctx_conf;
	struct ieee80211_channel *channel;
	enum nl80211_channel_type channel_type =
		FUNC1(&sdata->vif.bss_conf.chandef);
	struct ieee80211_supported_band *sband;
	struct ieee80211_sta_ht_cap *ht_cap;
	u8 *pos;

	FUNC4();
	chanctx_conf = FUNC3(sdata->vif.chanctx_conf);
	if (FUNC0(!chanctx_conf)) {
		FUNC5();
		return -EINVAL;
	}
	channel = chanctx_conf->def.chan;
	FUNC5();

	sband = local->hw.wiphy->bands[channel->band];
	ht_cap = &sband->ht_cap;

	if (!ht_cap->ht_supported || channel_type == NL80211_CHAN_NO_HT)
		return 0;

	if (FUNC7(skb) < 2 + sizeof(struct ieee80211_ht_operation))
		return -ENOMEM;

	pos = FUNC6(skb, 2 + sizeof(struct ieee80211_ht_operation));
	FUNC2(pos, ht_cap, &sdata->vif.bss_conf.chandef,
				   sdata->vif.bss_conf.ht_operation_mode);

	return 0;
}