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
struct TYPE_6__ {scalar_t__ ssid_len; } ;
struct TYPE_7__ {TYPE_2__ ibss; } ;
struct wireless_dev {TYPE_3__ wext; scalar_t__ ssid_len; int /*<<< orphan*/  sme_state; TYPE_4__* current_bss; int /*<<< orphan*/  wiphy; int /*<<< orphan*/ * connect_keys; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  pub; } ;
struct TYPE_5__ {scalar_t__ del_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 int /*<<< orphan*/  CFG80211_SME_IDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cfg80211_registered_device*,struct net_device*,int,int,int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, bool nowext)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC5(wdev->wiphy);
	int i;

	FUNC0(wdev);

	FUNC3(wdev->connect_keys);
	wdev->connect_keys = NULL;

	/*
	 * Delete all the keys ... pairwise keys can't really
	 * exist any more anyway, but default keys might.
	 */
	if (rdev->ops->del_key)
		for (i = 0; i < 6; i++)
			FUNC4(rdev, dev, i, false, NULL);

	if (wdev->current_bss) {
		FUNC2(wdev->current_bss);
		FUNC1(wdev->wiphy, &wdev->current_bss->pub);
	}

	wdev->current_bss = NULL;
	wdev->sme_state = CFG80211_SME_IDLE;
	wdev->ssid_len = 0;
#ifdef CONFIG_CFG80211_WEXT
	if (!nowext)
		wdev->wext.ibss.ssid_len = 0;
#endif
}