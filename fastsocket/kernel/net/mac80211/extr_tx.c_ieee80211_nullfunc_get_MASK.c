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
struct sk_buff {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; int /*<<< orphan*/  addr; } ;
struct ieee80211_if_managed {int /*<<< orphan*/  bssid; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; TYPE_1__ u; } ;
struct TYPE_4__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_2__ hw; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr_3addr {int /*<<< orphan*/  addr3; int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr1; int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int IEEE80211_FCTL_TODS ; 
 int IEEE80211_FTYPE_DATA ; 
 int IEEE80211_STYPE_NULLFUNC ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct sk_buff* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hdr_3addr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 struct ieee80211_sub_if_data* FUNC7 (struct ieee80211_vif*) ; 

struct sk_buff *FUNC8(struct ieee80211_hw *hw,
				       struct ieee80211_vif *vif)
{
	struct ieee80211_hdr_3addr *nullfunc;
	struct ieee80211_sub_if_data *sdata;
	struct ieee80211_if_managed *ifmgd;
	struct ieee80211_local *local;
	struct sk_buff *skb;

	if (FUNC0(vif->type != NL80211_IFTYPE_STATION))
		return NULL;

	sdata = FUNC7(vif);
	ifmgd = &sdata->u.mgd;
	local = sdata->local;

	skb = FUNC2(local->hw.extra_tx_headroom + sizeof(*nullfunc));
	if (!skb)
		return NULL;

	FUNC6(skb, local->hw.extra_tx_headroom);

	nullfunc = (struct ieee80211_hdr_3addr *) FUNC5(skb,
							  sizeof(*nullfunc));
	FUNC4(nullfunc, 0, sizeof(*nullfunc));
	nullfunc->frame_control = FUNC1(IEEE80211_FTYPE_DATA |
					      IEEE80211_STYPE_NULLFUNC |
					      IEEE80211_FCTL_TODS);
	FUNC3(nullfunc->addr1, ifmgd->bssid, ETH_ALEN);
	FUNC3(nullfunc->addr2, vif->addr, ETH_ALEN);
	FUNC3(nullfunc->addr3, ifmgd->bssid, ETH_ALEN);

	return skb;
}