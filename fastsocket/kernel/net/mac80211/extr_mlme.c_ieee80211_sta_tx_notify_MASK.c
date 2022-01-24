#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ probe_send_count; int nullfunc_failed; } ;
struct TYPE_5__ {TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  work; TYPE_3__* local; TYPE_2__ u; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_6__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*) ; 

void FUNC4(struct ieee80211_sub_if_data *sdata,
			     struct ieee80211_hdr *hdr, bool ack)
{
	if (!FUNC0(hdr->frame_control))
	    return;

	if (FUNC1(hdr->frame_control) &&
	    sdata->u.mgd.probe_send_count > 0) {
		if (ack)
			FUNC3(sdata);
		else
			sdata->u.mgd.nullfunc_failed = true;
		FUNC2(&sdata->local->hw, &sdata->work);
		return;
	}

	if (ack)
		FUNC3(sdata);
}