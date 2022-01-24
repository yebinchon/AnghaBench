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
typedef  int /*<<< orphan*/  u16 ;
struct wireless_dev {scalar_t__ sme_state; int /*<<< orphan*/  event_lock; int /*<<< orphan*/  event_list; int /*<<< orphan*/  wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  event_work; } ;
struct TYPE_2__ {size_t ie_len; int /*<<< orphan*/  reason; int /*<<< orphan*/ * ie; } ;
struct cfg80211_event {int /*<<< orphan*/  list; TYPE_1__ dc; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CFG80211_SME_CONNECTED ; 
 int /*<<< orphan*/  EVENT_DISCONNECTED ; 
 int /*<<< orphan*/  cfg80211_wq ; 
 struct cfg80211_event* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct cfg80211_registered_device* FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct net_device *dev, u16 reason,
			   u8 *ie, size_t ie_len, gfp_t gfp)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC7(wdev->wiphy);
	struct cfg80211_event *ev;
	unsigned long flags;

	FUNC0(wdev->sme_state != CFG80211_SME_CONNECTED);

	ev = FUNC1(sizeof(*ev) + ie_len, gfp);
	if (!ev)
		return;

	ev->type = EVENT_DISCONNECTED;
	ev->dc.ie = ((u8 *)ev) + sizeof(*ev);
	ev->dc.ie_len = ie_len;
	FUNC3((void *)ev->dc.ie, ie, ie_len);
	ev->dc.reason = reason;

	FUNC5(&wdev->event_lock, flags);
	FUNC2(&ev->list, &wdev->event_list);
	FUNC6(&wdev->event_lock, flags);
	FUNC4(cfg80211_wq, &rdev->event_work);
}