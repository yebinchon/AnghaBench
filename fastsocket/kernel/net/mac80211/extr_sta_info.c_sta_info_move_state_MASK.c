#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  addr; } ;
struct sta_info {int sta_state; int /*<<< orphan*/  _flags; TYPE_6__* sdata; int /*<<< orphan*/  local; TYPE_1__ sta; } ;
typedef  enum ieee80211_sta_state { ____Placeholder_ieee80211_sta_state } ieee80211_sta_state ;
struct TYPE_10__ {int /*<<< orphan*/  sta; } ;
struct TYPE_11__ {TYPE_3__ vlan; } ;
struct TYPE_9__ {int /*<<< orphan*/  type; } ;
struct TYPE_13__ {TYPE_5__* bss; TYPE_4__ u; TYPE_2__ vif; } ;
struct TYPE_12__ {int /*<<< orphan*/  num_mcast_sta; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IEEE80211_STA_ASSOC 131 
#define  IEEE80211_STA_AUTH 130 
#define  IEEE80211_STA_AUTHORIZED 129 
#define  IEEE80211_STA_NONE 128 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP_VLAN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  WLAN_STA_ASSOC ; 
 int /*<<< orphan*/  WLAN_STA_AUTH ; 
 int /*<<< orphan*/  WLAN_STA_AUTHORIZED ; 
 int /*<<< orphan*/  WLAN_STA_INSERTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_6__*,struct sta_info*,int const,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct sta_info*,int /*<<< orphan*/ ) ; 

int FUNC9(struct sta_info *sta,
			enum ieee80211_sta_state new_state)
{
	FUNC5();

	if (sta->sta_state == new_state)
		return 0;

	/* check allowed transitions first */

	switch (new_state) {
	case IEEE80211_STA_NONE:
		if (sta->sta_state != IEEE80211_STA_AUTH)
			return -EINVAL;
		break;
	case IEEE80211_STA_AUTH:
		if (sta->sta_state != IEEE80211_STA_NONE &&
		    sta->sta_state != IEEE80211_STA_ASSOC)
			return -EINVAL;
		break;
	case IEEE80211_STA_ASSOC:
		if (sta->sta_state != IEEE80211_STA_AUTH &&
		    sta->sta_state != IEEE80211_STA_AUTHORIZED)
			return -EINVAL;
		break;
	case IEEE80211_STA_AUTHORIZED:
		if (sta->sta_state != IEEE80211_STA_ASSOC)
			return -EINVAL;
		break;
	default:
		FUNC0(1, "invalid state %d", new_state);
		return -EINVAL;
	}

	FUNC7(sta->sdata, "moving STA %pM to state %d\n",
		sta->sta.addr, new_state);

	/*
	 * notify the driver before the actual changes so it can
	 * fail the transition
	 */
	if (FUNC8(sta, WLAN_STA_INSERTED)) {
		int err = FUNC4(sta->local, sta->sdata, sta,
					sta->sta_state, new_state);
		if (err)
			return err;
	}

	/* reflect the change in all state variables */

	switch (new_state) {
	case IEEE80211_STA_NONE:
		if (sta->sta_state == IEEE80211_STA_AUTH)
			FUNC3(WLAN_STA_AUTH, &sta->_flags);
		break;
	case IEEE80211_STA_AUTH:
		if (sta->sta_state == IEEE80211_STA_NONE)
			FUNC6(WLAN_STA_AUTH, &sta->_flags);
		else if (sta->sta_state == IEEE80211_STA_ASSOC)
			FUNC3(WLAN_STA_ASSOC, &sta->_flags);
		break;
	case IEEE80211_STA_ASSOC:
		if (sta->sta_state == IEEE80211_STA_AUTH) {
			FUNC6(WLAN_STA_ASSOC, &sta->_flags);
		} else if (sta->sta_state == IEEE80211_STA_AUTHORIZED) {
			if (sta->sdata->vif.type == NL80211_IFTYPE_AP ||
			    (sta->sdata->vif.type == NL80211_IFTYPE_AP_VLAN &&
			     !sta->sdata->u.vlan.sta))
				FUNC1(&sta->sdata->bss->num_mcast_sta);
			FUNC3(WLAN_STA_AUTHORIZED, &sta->_flags);
		}
		break;
	case IEEE80211_STA_AUTHORIZED:
		if (sta->sta_state == IEEE80211_STA_ASSOC) {
			if (sta->sdata->vif.type == NL80211_IFTYPE_AP ||
			    (sta->sdata->vif.type == NL80211_IFTYPE_AP_VLAN &&
			     !sta->sdata->u.vlan.sta))
				FUNC2(&sta->sdata->bss->num_mcast_sta);
			FUNC6(WLAN_STA_AUTHORIZED, &sta->_flags);
		}
		break;
	default:
		break;
	}

	sta->sta_state = new_state;

	return 0;
}