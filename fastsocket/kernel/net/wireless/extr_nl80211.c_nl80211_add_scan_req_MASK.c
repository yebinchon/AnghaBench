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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct cfg80211_scan_request {int n_ssids; int n_channels; scalar_t__ flags; scalar_t__ ie; int /*<<< orphan*/  ie_len; TYPE_2__** channels; TYPE_1__* ssids; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  sched_scan_mtx; struct cfg80211_scan_request* scan_req; } ;
struct TYPE_4__ {scalar_t__ center_freq; } ;
struct TYPE_3__ {scalar_t__ ssid; int /*<<< orphan*/  ssid_len; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int NL80211_ATTR_IE ; 
 int NL80211_ATTR_SCAN_FLAGS ; 
 int /*<<< orphan*/  NL80211_ATTR_SCAN_FREQUENCIES ; 
 int /*<<< orphan*/  NL80211_ATTR_SCAN_SSIDS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *msg,
				struct cfg80211_registered_device *rdev)
{
	struct cfg80211_scan_request *req = rdev->scan_req;
	struct nlattr *nest;
	int i;

	FUNC1(&rdev->sched_scan_mtx);

	if (FUNC0(!req))
		return 0;

	nest = FUNC3(msg, NL80211_ATTR_SCAN_SSIDS);
	if (!nest)
		goto nla_put_failure;
	for (i = 0; i < req->n_ssids; i++) {
		if (FUNC4(msg, i, req->ssids[i].ssid_len, req->ssids[i].ssid))
			goto nla_put_failure;
	}
	FUNC2(msg, nest);

	nest = FUNC3(msg, NL80211_ATTR_SCAN_FREQUENCIES);
	if (!nest)
		goto nla_put_failure;
	for (i = 0; i < req->n_channels; i++) {
		if (FUNC5(msg, i, req->channels[i]->center_freq))
			goto nla_put_failure;
	}
	FUNC2(msg, nest);

	if (req->ie &&
	    FUNC4(msg, NL80211_ATTR_IE, req->ie_len, req->ie))
		goto nla_put_failure;

	if (req->flags)
		FUNC5(msg, NL80211_ATTR_SCAN_FLAGS, req->flags);

	return 0;
 nla_put_failure:
	return -ENOBUFS;
}