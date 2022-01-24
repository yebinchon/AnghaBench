#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wiphy {int flags; } ;
struct sk_buff {int priority; } ;
struct net_device {int dummy; } ;
struct ieee80211_tdls_lnkie {int dummy; } ;
struct ieee80211_tdls_data {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  bssid; int /*<<< orphan*/  associated; } ;
struct TYPE_8__ {TYPE_3__ mgd; } ;
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/ * addr; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; TYPE_2__ vif; struct ieee80211_local* local; } ;
struct ieee80211_mgmt {int dummy; } ;
struct TYPE_5__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  IEEE80211_AC_BK ; 
 int /*<<< orphan*/  IEEE80211_AC_VI ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int WIPHY_FLAG_SUPPORTS_TDLS ; 
#define  WLAN_PUB_ACTION_TDLS_DISCOVER_RES 133 
#define  WLAN_TDLS_DISCOVERY_REQUEST 132 
#define  WLAN_TDLS_SETUP_CONFIRM 131 
#define  WLAN_TDLS_SETUP_REQUEST 130 
#define  WLAN_TDLS_SETUP_RESPONSE 129 
#define  WLAN_TDLS_TEARDOWN 128 
 struct sk_buff* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct wiphy*,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC4 (struct wiphy*,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_sub_if_data*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct wiphy *wiphy, struct net_device *dev,
			       u8 *peer, u8 action_code, u8 dialog_token,
			       u16 status_code, const u8 *extra_ies,
			       size_t extra_ies_len)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = sdata->local;
	struct sk_buff *skb = NULL;
	bool send_direct;
	int ret;

	if (!(wiphy->flags & WIPHY_FLAG_SUPPORTS_TDLS))
		return -ENOTSUPP;

	/* make sure we are in managed mode, and associated */
	if (sdata->vif.type != NL80211_IFTYPE_STATION ||
	    !sdata->u.mgd.associated)
		return -EINVAL;

	FUNC15(sdata, "TDLS mgmt action %d peer %pM\n",
		 action_code, peer);

	skb = FUNC1(local->hw.extra_tx_headroom +
			    FUNC10(sizeof(struct ieee80211_mgmt),
				sizeof(struct ieee80211_tdls_data)) +
			    50 + /* supported rates */
			    7 + /* ext capab */
			    extra_ies_len +
			    sizeof(struct ieee80211_tdls_lnkie));
	if (!skb)
		return -ENOMEM;

	FUNC13(skb, local->hw.extra_tx_headroom);

	switch (action_code) {
	case WLAN_TDLS_SETUP_REQUEST:
	case WLAN_TDLS_SETUP_RESPONSE:
	case WLAN_TDLS_SETUP_CONFIRM:
	case WLAN_TDLS_TEARDOWN:
	case WLAN_TDLS_DISCOVERY_REQUEST:
		ret = FUNC4(wiphy, dev, peer,
						     action_code, dialog_token,
						     status_code, skb);
		send_direct = false;
		break;
	case WLAN_PUB_ACTION_TDLS_DISCOVER_RES:
		ret = FUNC3(wiphy, dev, peer, action_code,
						 dialog_token, status_code,
						 skb);
		send_direct = true;
		break;
	default:
		ret = -ENOTSUPP;
		break;
	}

	if (ret < 0)
		goto fail;

	if (extra_ies_len)
		FUNC11(FUNC12(skb, extra_ies_len), extra_ies, extra_ies_len);

	/* the TDLS link IE is always added last */
	switch (action_code) {
	case WLAN_TDLS_SETUP_REQUEST:
	case WLAN_TDLS_SETUP_CONFIRM:
	case WLAN_TDLS_TEARDOWN:
	case WLAN_TDLS_DISCOVERY_REQUEST:
		/* we are the initiator */
		FUNC6(skb, sdata->vif.addr, peer,
					   sdata->u.mgd.bssid);
		break;
	case WLAN_TDLS_SETUP_RESPONSE:
	case WLAN_PUB_ACTION_TDLS_DISCOVER_RES:
		/* we are the responder */
		FUNC6(skb, peer, sdata->vif.addr,
					   sdata->u.mgd.bssid);
		break;
	default:
		ret = -ENOTSUPP;
		goto fail;
	}

	if (send_direct) {
		FUNC7(sdata, skb);
		return 0;
	}

	/*
	 * According to 802.11z: Setup req/resp are sent in AC_BK, otherwise
	 * we should default to AC_VI.
	 */
	switch (action_code) {
	case WLAN_TDLS_SETUP_REQUEST:
	case WLAN_TDLS_SETUP_RESPONSE:
		FUNC14(skb, IEEE80211_AC_BK);
		skb->priority = 2;
		break;
	default:
		FUNC14(skb, IEEE80211_AC_VI);
		skb->priority = 5;
		break;
	}

	/* disable bottom halves when entering the Tx path */
	FUNC8();
	ret = FUNC5(skb, dev);
	FUNC9();

	return ret;

fail:
	FUNC2(skb);
	return ret;
}