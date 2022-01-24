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
typedef  int u16 ;
struct wireless_dev {TYPE_2__* conn; int /*<<< orphan*/  wiphy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  conn_work; } ;
struct cfg80211_bss {int /*<<< orphan*/  channel; int /*<<< orphan*/  bssid; } ;
struct TYPE_3__ {int /*<<< orphan*/  channel; int /*<<< orphan*/  bssid; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; scalar_t__ privacy; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; TYPE_1__ params; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 int /*<<< orphan*/  CFG80211_CONN_AUTHENTICATE_NEXT ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int WLAN_CAPABILITY_ESS ; 
 int WLAN_CAPABILITY_PRIVACY ; 
 struct cfg80211_bss* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cfg80211_bss *FUNC5(struct wireless_dev *wdev)
{
	struct cfg80211_registered_device *rdev = FUNC4(wdev->wiphy);
	struct cfg80211_bss *bss;
	u16 capa = WLAN_CAPABILITY_ESS;

	FUNC0(wdev);

	if (wdev->conn->params.privacy)
		capa |= WLAN_CAPABILITY_PRIVACY;

	bss = FUNC1(wdev->wiphy, wdev->conn->params.channel,
			       wdev->conn->params.bssid,
			       wdev->conn->params.ssid,
			       wdev->conn->params.ssid_len,
			       WLAN_CAPABILITY_ESS | WLAN_CAPABILITY_PRIVACY,
			       capa);
	if (!bss)
		return NULL;

	FUNC2(wdev->conn->bssid, bss->bssid, ETH_ALEN);
	wdev->conn->params.bssid = wdev->conn->bssid;
	wdev->conn->params.channel = bss->channel;
	wdev->conn->state = CFG80211_CONN_AUTHENTICATE_NEXT;
	FUNC3(&rdev->conn_work);

	return bss;
}