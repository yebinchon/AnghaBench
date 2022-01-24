#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sta_info {int dummy; } ;
struct sk_buff {int len; scalar_t__ priority; int /*<<< orphan*/ * data; } ;
struct TYPE_11__ {int /*<<< orphan*/ * bssid; } ;
struct TYPE_10__ {int /*<<< orphan*/ * remote_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  sta; } ;
struct TYPE_12__ {TYPE_5__ mgd; TYPE_4__ wds; TYPE_3__ vlan; } ;
struct TYPE_8__ {int type; } ;
struct ieee80211_sub_if_data {TYPE_6__ u; TYPE_2__ vif; struct ieee80211_local* local; } ;
struct TYPE_7__ {scalar_t__ queues; } ;
struct ieee80211_local {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_AC_BE ; 
 scalar_t__ IEEE80211_NUM_ACS ; 
#define  NL80211_IFTYPE_ADHOC 133 
#define  NL80211_IFTYPE_AP 132 
#define  NL80211_IFTYPE_AP_VLAN 131 
#define  NL80211_IFTYPE_MESH_POINT 130 
#define  NL80211_IFTYPE_STATION 129 
#define  NL80211_IFTYPE_WDS 128 
 int /*<<< orphan*/  WLAN_STA_WME ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 struct sta_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct sta_info* FUNC6 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*) ; 
 int FUNC7 (struct sta_info*,int /*<<< orphan*/ ) ; 

u16 FUNC8(struct ieee80211_sub_if_data *sdata,
			   struct sk_buff *skb)
{
	struct ieee80211_local *local = sdata->local;
	struct sta_info *sta = NULL;
	const u8 *ra = NULL;
	bool qos = false;

	if (local->hw.queues < IEEE80211_NUM_ACS || skb->len < 6) {
		skb->priority = 0; /* required for correct WPA/11i MIC */
		return 0;
	}

	FUNC4();
	switch (sdata->vif.type) {
	case NL80211_IFTYPE_AP_VLAN:
		sta = FUNC3(sdata->u.vlan.sta);
		if (sta) {
			qos = FUNC7(sta, WLAN_STA_WME);
			break;
		}
	case NL80211_IFTYPE_AP:
		ra = skb->data;
		break;
	case NL80211_IFTYPE_WDS:
		ra = sdata->u.wds.remote_addr;
		break;
#ifdef CONFIG_MAC80211_MESH
	case NL80211_IFTYPE_MESH_POINT:
		qos = true;
		break;
#endif
	case NL80211_IFTYPE_STATION:
		ra = sdata->u.mgd.bssid;
		break;
	case NL80211_IFTYPE_ADHOC:
		ra = skb->data;
		break;
	default:
		break;
	}

	if (!sta && ra && !FUNC2(ra)) {
		sta = FUNC6(sdata, ra);
		if (sta)
			qos = FUNC7(sta, WLAN_STA_WME);
	}
	FUNC5();

	if (!qos) {
		skb->priority = 0; /* required for correct WPA/11i MIC */
		return IEEE80211_AC_BE;
	}

	/* use the data classifier to determine what 802.1d tag the
	 * data frame has */
	skb->priority = FUNC0(skb);

	return FUNC1(sdata, skb);
}