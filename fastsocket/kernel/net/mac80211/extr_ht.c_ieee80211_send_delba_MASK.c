#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  const* bssid; } ;
struct TYPE_11__ {int /*<<< orphan*/  const* bssid; } ;
struct TYPE_14__ {TYPE_4__ ibss; TYPE_2__ mgd; } ;
struct TYPE_12__ {scalar_t__ type; int /*<<< orphan*/  const* addr; } ;
struct ieee80211_sub_if_data {TYPE_5__ u; TYPE_3__ vif; struct ieee80211_local* local; } ;
struct TYPE_15__ {void* reason_code; void* params; int /*<<< orphan*/  action_code; } ;
struct TYPE_16__ {TYPE_6__ delba; } ;
struct TYPE_17__ {TYPE_7__ u; int /*<<< orphan*/  category; } ;
struct TYPE_18__ {TYPE_8__ action; } ;
struct ieee80211_mgmt {TYPE_9__ u; void* frame_control; int /*<<< orphan*/  bssid; int /*<<< orphan*/  sa; int /*<<< orphan*/  da; } ;
struct TYPE_10__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int IEEE80211_FTYPE_MGMT ; 
 int IEEE80211_STYPE_ACTION ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_AP_VLAN ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  WLAN_ACTION_DELBA ; 
 int /*<<< orphan*/  WLAN_CATEGORY_BACK ; 
 void* FUNC0 (int) ; 
 struct sk_buff* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_mgmt*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 

void FUNC7(struct ieee80211_sub_if_data *sdata,
			  const u8 *da, u16 tid,
			  u16 initiator, u16 reason_code)
{
	struct ieee80211_local *local = sdata->local;
	struct sk_buff *skb;
	struct ieee80211_mgmt *mgmt;
	u16 params;

	skb = FUNC1(sizeof(*mgmt) + local->hw.extra_tx_headroom);
	if (!skb)
		return;

	FUNC6(skb, local->hw.extra_tx_headroom);
	mgmt = (struct ieee80211_mgmt *) FUNC5(skb, 24);
	FUNC4(mgmt, 0, 24);
	FUNC3(mgmt->da, da, ETH_ALEN);
	FUNC3(mgmt->sa, sdata->vif.addr, ETH_ALEN);
	if (sdata->vif.type == NL80211_IFTYPE_AP ||
	    sdata->vif.type == NL80211_IFTYPE_AP_VLAN ||
	    sdata->vif.type == NL80211_IFTYPE_MESH_POINT)
		FUNC3(mgmt->bssid, sdata->vif.addr, ETH_ALEN);
	else if (sdata->vif.type == NL80211_IFTYPE_STATION)
		FUNC3(mgmt->bssid, sdata->u.mgd.bssid, ETH_ALEN);
	else if (sdata->vif.type == NL80211_IFTYPE_ADHOC)
		FUNC3(mgmt->bssid, sdata->u.ibss.bssid, ETH_ALEN);

	mgmt->frame_control = FUNC0(IEEE80211_FTYPE_MGMT |
					  IEEE80211_STYPE_ACTION);

	FUNC5(skb, 1 + sizeof(mgmt->u.action.u.delba));

	mgmt->u.action.category = WLAN_CATEGORY_BACK;
	mgmt->u.action.u.delba.action_code = WLAN_ACTION_DELBA;
	params = (u16)(initiator << 11); 	/* bit 11 initiator */
	params |= (u16)(tid << 12); 		/* bit 15:12 TID number */

	mgmt->u.action.u.delba.params = FUNC0(params);
	mgmt->u.action.u.delba.reason_code = FUNC0(reason_code);

	FUNC2(sdata, skb, tid);
}