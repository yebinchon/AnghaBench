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
struct TYPE_2__ {void* bssid; size_t req_ie_len; size_t resp_ie_len; int /*<<< orphan*/  status; int /*<<< orphan*/ * resp_ie; int /*<<< orphan*/ * req_ie; } ;
struct cfg80211_event {int /*<<< orphan*/  list; TYPE_1__ cr; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CFG80211_SME_CONNECTING ; 
 size_t ETH_ALEN ; 
 int /*<<< orphan*/  EVENT_CONNECT_RESULT ; 
 int /*<<< orphan*/  cfg80211_wq ; 
 struct cfg80211_event* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct cfg80211_registered_device* FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct net_device *dev, const u8 *bssid,
			     const u8 *req_ie, size_t req_ie_len,
			     const u8 *resp_ie, size_t resp_ie_len,
			     u16 status, gfp_t gfp)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC7(wdev->wiphy);
	struct cfg80211_event *ev;
	unsigned long flags;

	FUNC0(wdev->sme_state != CFG80211_SME_CONNECTING);

	ev = FUNC1(sizeof(*ev) + req_ie_len + resp_ie_len, gfp);
	if (!ev)
		return;

	ev->type = EVENT_CONNECT_RESULT;
	if (bssid)
		FUNC3(ev->cr.bssid, bssid, ETH_ALEN);
	if (req_ie_len) {
		ev->cr.req_ie = ((u8 *)ev) + sizeof(*ev);
		ev->cr.req_ie_len = req_ie_len;
		FUNC3((void *)ev->cr.req_ie, req_ie, req_ie_len);
	}
	if (resp_ie_len) {
		ev->cr.resp_ie = ((u8 *)ev) + sizeof(*ev) + req_ie_len;
		ev->cr.resp_ie_len = resp_ie_len;
		FUNC3((void *)ev->cr.resp_ie, resp_ie, resp_ie_len);
	}
	ev->cr.status = status;

	FUNC5(&wdev->event_lock, flags);
	FUNC2(&ev->list, &wdev->event_list);
	FUNC6(&wdev->event_lock, flags);
	FUNC4(cfg80211_wq, &rdev->event_work);
}