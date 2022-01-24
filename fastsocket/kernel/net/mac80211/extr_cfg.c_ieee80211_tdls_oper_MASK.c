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
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int flags; } ;
struct sta_info {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;
typedef  enum nl80211_tdls_operation { ____Placeholder_nl80211_tdls_operation } nl80211_tdls_operation ;

/* Variables and functions */
 int EINVAL ; 
 int ENOLINK ; 
 int ENOTSUPP ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
#define  NL80211_TDLS_DISABLE_LINK 132 
#define  NL80211_TDLS_DISCOVERY_REQ 131 
#define  NL80211_TDLS_ENABLE_LINK 130 
#define  NL80211_TDLS_SETUP 129 
#define  NL80211_TDLS_TEARDOWN 128 
 int WIPHY_FLAG_SUPPORTS_TDLS ; 
 int /*<<< orphan*/  WLAN_STA_TDLS_PEER_AUTH ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *) ; 
 struct sta_info* FUNC5 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct wiphy *wiphy, struct net_device *dev,
			       u8 *peer, enum nl80211_tdls_operation oper)
{
	struct sta_info *sta;
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);

	if (!(wiphy->flags & WIPHY_FLAG_SUPPORTS_TDLS))
		return -ENOTSUPP;

	if (sdata->vif.type != NL80211_IFTYPE_STATION)
		return -EINVAL;

	FUNC6(sdata, "TDLS oper %d peer %pM\n", oper, peer);

	switch (oper) {
	case NL80211_TDLS_ENABLE_LINK:
		FUNC1();
		sta = FUNC5(sdata, peer);
		if (!sta) {
			FUNC2();
			return -ENOLINK;
		}

		FUNC3(sta, WLAN_STA_TDLS_PEER_AUTH);
		FUNC2();
		break;
	case NL80211_TDLS_DISABLE_LINK:
		return FUNC4(sdata, peer);
	case NL80211_TDLS_TEARDOWN:
	case NL80211_TDLS_SETUP:
	case NL80211_TDLS_DISCOVERY_REQ:
		/* We don't support in-driver setup/teardown/discovery */
		return -ENOTSUPP;
	default:
		return -ENOTSUPP;
	}

	return 0;
}