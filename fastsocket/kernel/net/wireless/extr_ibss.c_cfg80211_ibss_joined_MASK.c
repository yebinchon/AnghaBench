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
struct wireless_dev {scalar_t__ sme_state; int /*<<< orphan*/  event_lock; int /*<<< orphan*/  event_list; int /*<<< orphan*/  wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  event_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  bssid; } ;
struct cfg80211_event {int /*<<< orphan*/  list; TYPE_1__ cr; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CFG80211_SME_CONNECTING ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  EVENT_IBSS_JOINED ; 
 int /*<<< orphan*/  cfg80211_wq ; 
 struct cfg80211_event* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/  const*) ; 
 struct cfg80211_registered_device* FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct net_device *dev, const u8 *bssid, gfp_t gfp)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC8(wdev->wiphy);
	struct cfg80211_event *ev;
	unsigned long flags;

	FUNC7(dev, bssid);

	FUNC0(wdev->sme_state != CFG80211_SME_CONNECTING);

	ev = FUNC1(sizeof(*ev), gfp);
	if (!ev)
		return;

	ev->type = EVENT_IBSS_JOINED;
	FUNC3(ev->cr.bssid, bssid, ETH_ALEN);

	FUNC5(&wdev->event_lock, flags);
	FUNC2(&ev->list, &wdev->event_list);
	FUNC6(&wdev->event_lock, flags);
	FUNC4(cfg80211_wq, &rdev->event_work);
}