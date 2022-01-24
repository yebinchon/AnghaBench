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
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct sta_info {TYPE_3__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; struct ieee80211_local* local; } ;
struct TYPE_4__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; scalar_t__ duration_id; int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int IEEE80211_FTYPE_DATA ; 
 int IEEE80211_STYPE_QOS_NULLFUNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sk_buff* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,struct sta_info*,struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *FUNC8(struct sta_info *sta)
{
	struct ieee80211_sub_if_data *sdata = sta->sdata;
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_hdr *nullfunc; /* use 4addr header */
	struct sk_buff *skb;
	int size = sizeof(*nullfunc);
	__le16 fc;

	skb = FUNC1(local->hw.extra_tx_headroom + size + 2);
	if (!skb)
		return NULL;
	FUNC7(skb, local->hw.extra_tx_headroom);

	nullfunc = (struct ieee80211_hdr *) FUNC6(skb, size);
	fc = FUNC0(IEEE80211_FTYPE_DATA | IEEE80211_STYPE_QOS_NULLFUNC);
	FUNC2(nullfunc, &fc, sta->sta.addr,
				      sdata->vif.addr);
	nullfunc->frame_control = fc;
	nullfunc->duration_id = 0;
	/* no address resolution for this frame -> set addr 1 immediately */
	FUNC4(nullfunc->addr1, sta->sta.addr, ETH_ALEN);
	FUNC5(FUNC6(skb, 2), 0, 2); /* append QoS control field */
	FUNC3(sdata, sta, nullfunc);

	return skb;
}