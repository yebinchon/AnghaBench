#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  wrqu ;
typedef  union iwreq_data {int dummy; } iwreq_data ;
struct wireless_dev {scalar_t__ netdev; } ;
struct cfg80211_scan_request {int flags; scalar_t__ aborted; int /*<<< orphan*/  scan_start; struct wireless_dev* wdev; } ;
struct cfg80211_registered_device {struct cfg80211_scan_request* scan_req; int /*<<< orphan*/  bss_lock; int /*<<< orphan*/  sched_scan_mtx; } ;

/* Variables and functions */
 int NL80211_SCAN_FLAG_FLUSH ; 
 int /*<<< orphan*/  SIOCGIWSCAN ; 
 int /*<<< orphan*/  FUNC0 (struct cfg80211_registered_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct cfg80211_scan_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (union iwreq_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cfg80211_registered_device*,struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct cfg80211_registered_device*,struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/ *) ; 

void FUNC11(struct cfg80211_registered_device *rdev, bool leak)
{
	struct cfg80211_scan_request *request;
	struct wireless_dev *wdev;
#ifdef CONFIG_CFG80211_WEXT
	union iwreq_data wrqu;
#endif

	FUNC4(&rdev->sched_scan_mtx);

	request = rdev->scan_req;

	if (!request)
		return;

	wdev = request->wdev;

	/*
	 * This must be before sending the other events!
	 * Otherwise, wpa_supplicant gets completely confused with
	 * wext events.
	 */
	if (wdev->netdev)
		FUNC1(wdev->netdev);

	if (request->aborted) {
		FUNC6(rdev, wdev);
	} else {
		if (request->flags & NL80211_SCAN_FLAG_FLUSH) {
			/* flush entries from previous scans */
			FUNC8(&rdev->bss_lock);
			FUNC0(rdev, request->scan_start);
			FUNC9(&rdev->bss_lock);
		}
		FUNC7(rdev, wdev);
	}

#ifdef CONFIG_CFG80211_WEXT
	if (wdev->netdev && !request->aborted) {
		memset(&wrqu, 0, sizeof(wrqu));

		wireless_send_event(wdev->netdev, SIOCGIWSCAN, &wrqu, NULL);
	}
#endif

	if (wdev->netdev)
		FUNC2(wdev->netdev);

	rdev->scan_req = NULL;

	/*
	 * OK. If this is invoked with "leak" then we can't
	 * free this ... but we've cleaned it up anyway. The
	 * driver failed to call the scan_done callback, so
	 * all bets are off, it might still be trying to use
	 * the scan request or not ... if it accesses the dev
	 * in there (it shouldn't anyway) then it may crash.
	 */
	if (!leak)
		FUNC3(request);
}