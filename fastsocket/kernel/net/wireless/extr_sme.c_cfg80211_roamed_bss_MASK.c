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
struct TYPE_2__ {size_t req_ie_len; size_t resp_ie_len; struct cfg80211_bss* bss; int /*<<< orphan*/ * resp_ie; int /*<<< orphan*/ * req_ie; } ;
struct cfg80211_event {int /*<<< orphan*/  list; TYPE_1__ rm; int /*<<< orphan*/  type; } ;
struct cfg80211_bss {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CFG80211_SME_CONNECTED ; 
 int /*<<< orphan*/  EVENT_ROAMED ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cfg80211_bss*) ; 
 int /*<<< orphan*/  cfg80211_wq ; 
 struct cfg80211_event* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct cfg80211_registered_device* FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(struct net_device *dev,
			 struct cfg80211_bss *bss, const u8 *req_ie,
			 size_t req_ie_len, const u8 *resp_ie,
			 size_t resp_ie_len, gfp_t gfp)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC9(wdev->wiphy);
	struct cfg80211_event *ev;
	unsigned long flags;

	FUNC0(wdev->sme_state != CFG80211_SME_CONNECTED);

	if (FUNC1(!bss))
		return;

	ev = FUNC3(sizeof(*ev) + req_ie_len + resp_ie_len, gfp);
	if (!ev) {
		FUNC2(wdev->wiphy, bss);
		return;
	}

	ev->type = EVENT_ROAMED;
	ev->rm.req_ie = ((u8 *)ev) + sizeof(*ev);
	ev->rm.req_ie_len = req_ie_len;
	FUNC5((void *)ev->rm.req_ie, req_ie, req_ie_len);
	ev->rm.resp_ie = ((u8 *)ev) + sizeof(*ev) + req_ie_len;
	ev->rm.resp_ie_len = resp_ie_len;
	FUNC5((void *)ev->rm.resp_ie, resp_ie, resp_ie_len);
	ev->rm.bss = bss;

	FUNC7(&wdev->event_lock, flags);
	FUNC4(&ev->list, &wdev->event_list);
	FUNC8(&wdev->event_lock, flags);
	FUNC6(cfg80211_wq, &rdev->event_work);
}