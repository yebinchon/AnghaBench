#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wrqu ;
struct TYPE_8__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct TYPE_7__ {size_t length; } ;
union iwreq_data {TYPE_2__ ap_addr; TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_9__ {int prev_bssid_valid; int /*<<< orphan*/  prev_bssid; } ;
struct wireless_dev {scalar_t__ iftype; scalar_t__ sme_state; int /*<<< orphan*/  wiphy; int /*<<< orphan*/  netdev; TYPE_3__ wext; TYPE_4__* current_bss; } ;
struct cfg80211_bss {int /*<<< orphan*/  bssid; } ;
struct TYPE_10__ {struct cfg80211_bss pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 scalar_t__ CFG80211_SME_CONNECTED ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IWEVASSOCREQIE ; 
 int /*<<< orphan*/  IWEVASSOCRESPIE ; 
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  SIOCGIWAP ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_4__* FUNC2 (struct cfg80211_bss*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct cfg80211_bss*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (union iwreq_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/  const*) ; 

void FUNC11(struct wireless_dev *wdev,
		       struct cfg80211_bss *bss,
		       const u8 *req_ie, size_t req_ie_len,
		       const u8 *resp_ie, size_t resp_ie_len)
{
#ifdef CONFIG_CFG80211_WEXT
	union iwreq_data wrqu;
#endif
	FUNC0(wdev);

	if (FUNC1(wdev->iftype != NL80211_IFTYPE_STATION &&
		    wdev->iftype != NL80211_IFTYPE_P2P_CLIENT))
		goto out;

	if (wdev->sme_state != CFG80211_SME_CONNECTED)
		goto out;

	/* internal error -- how did we get to CONNECTED w/o BSS? */
	if (FUNC1(!wdev->current_bss)) {
		goto out;
	}

	FUNC5(wdev->current_bss);
	FUNC4(wdev->wiphy, &wdev->current_bss->pub);
	wdev->current_bss = NULL;

	FUNC3(FUNC2(bss));
	wdev->current_bss = FUNC2(bss);

	FUNC8(FUNC9(wdev->wiphy), wdev->netdev, bss->bssid,
			    req_ie, req_ie_len, resp_ie, resp_ie_len,
			    GFP_KERNEL);

#ifdef CONFIG_CFG80211_WEXT
	if (req_ie) {
		memset(&wrqu, 0, sizeof(wrqu));
		wrqu.data.length = req_ie_len;
		wireless_send_event(wdev->netdev, IWEVASSOCREQIE,
				    &wrqu, req_ie);
	}

	if (resp_ie) {
		memset(&wrqu, 0, sizeof(wrqu));
		wrqu.data.length = resp_ie_len;
		wireless_send_event(wdev->netdev, IWEVASSOCRESPIE,
				    &wrqu, resp_ie);
	}

	memset(&wrqu, 0, sizeof(wrqu));
	wrqu.ap_addr.sa_family = ARPHRD_ETHER;
	memcpy(wrqu.ap_addr.sa_data, bss->bssid, ETH_ALEN);
	memcpy(wdev->wext.prev_bssid, bss->bssid, ETH_ALEN);
	wdev->wext.prev_bssid_valid = true;
	wireless_send_event(wdev->netdev, SIOCGIWAP, &wrqu, NULL);
#endif

	return;
out:
	FUNC4(wdev->wiphy, bss);
}