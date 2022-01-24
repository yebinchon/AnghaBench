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
struct wiphy {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sched_scan_results_wk; scalar_t__ sched_scan_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  cfg80211_wq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wiphy*) ; 
 TYPE_1__* FUNC2 (struct wiphy*) ; 

void FUNC3(struct wiphy *wiphy)
{
	FUNC1(wiphy);
	/* ignore if we're not scanning */
	if (FUNC2(wiphy)->sched_scan_req)
		FUNC0(cfg80211_wq,
			   &FUNC2(wiphy)->sched_scan_results_wk);
}