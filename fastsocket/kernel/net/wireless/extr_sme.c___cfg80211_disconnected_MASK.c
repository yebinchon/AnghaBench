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
typedef  int /*<<< orphan*/  wrqu ;
struct TYPE_8__ {int /*<<< orphan*/  sa_family; } ;
union iwreq_data {TYPE_2__ ap_addr; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_9__ {scalar_t__ ssid_len; } ;
struct TYPE_10__ {TYPE_3__ connect; } ;
struct wireless_dev {scalar_t__ iftype; scalar_t__ sme_state; TYPE_4__ wext; TYPE_5__* conn; scalar_t__ ssid_len; TYPE_6__* current_bss; int /*<<< orphan*/  wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_12__ {int /*<<< orphan*/  pub; } ;
struct TYPE_11__ {struct TYPE_11__* ie; } ;
struct TYPE_7__ {scalar_t__ del_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 scalar_t__ CFG80211_SME_CONNECTED ; 
 scalar_t__ CFG80211_SME_IDLE ; 
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  SIOCGIWAP ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  cfg80211_disconnect_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (union iwreq_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cfg80211_registered_device*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cfg80211_registered_device*,struct net_device*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/ *) ; 

void FUNC11(struct net_device *dev, const u8 *ie,
			     size_t ie_len, u16 reason, bool from_ap)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC9(wdev->wiphy);
	int i;
#ifdef CONFIG_CFG80211_WEXT
	union iwreq_data wrqu;
#endif

	FUNC0(wdev);

	if (FUNC1(wdev->iftype != NL80211_IFTYPE_STATION &&
		    wdev->iftype != NL80211_IFTYPE_P2P_CLIENT))
		return;

	if (wdev->sme_state != CFG80211_SME_CONNECTED)
		return;

	if (wdev->current_bss) {
		FUNC3(wdev->current_bss);
		FUNC2(wdev->wiphy, &wdev->current_bss->pub);
	}

	wdev->current_bss = NULL;
	wdev->sme_state = CFG80211_SME_IDLE;
	wdev->ssid_len = 0;

	if (wdev->conn) {
		FUNC4(wdev->conn->ie);
		wdev->conn->ie = NULL;
		FUNC4(wdev->conn);
		wdev->conn = NULL;
	}

	FUNC6(rdev, dev, reason, ie, ie_len, from_ap);

	/*
	 * Delete all the keys ... pairwise keys can't really
	 * exist any more anyway, but default keys might.
	 */
	if (rdev->ops->del_key)
		for (i = 0; i < 6; i++)
			FUNC7(rdev, dev, i, false, NULL);

#ifdef CONFIG_CFG80211_WEXT
	memset(&wrqu, 0, sizeof(wrqu));
	wrqu.ap_addr.sa_family = ARPHRD_ETHER;
	wireless_send_event(dev, SIOCGIWAP, &wrqu, NULL);
	wdev->wext.connect.ssid_len = 0;
#endif

	FUNC8(&cfg80211_disconnect_work);
}