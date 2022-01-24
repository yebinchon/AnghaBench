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
struct ieee80211_device {scalar_t__ iw_mode; scalar_t__ state; int /*<<< orphan*/  start_ibss_wq; int /*<<< orphan*/  associate_retry_wq; int /*<<< orphan*/  associate_timer; scalar_t__ proto_started; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_LINKED ; 
 scalar_t__ IW_MODE_INFRA ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WLAN_REASON_DISASSOC_STA_HAS_LEFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_device*) ; 

void FUNC6(struct ieee80211_device *ieee)
{
	if (!ieee->proto_started)
		return;

	ieee->proto_started = 0;

	FUNC5(ieee);
	if((ieee->iw_mode == IW_MODE_INFRA)&&(ieee->state == IEEE80211_LINKED)) {
		FUNC0(ieee,NULL,WLAN_REASON_DISASSOC_STA_HAS_LEFT);
	}
	FUNC2(&ieee->associate_timer);
	FUNC1(&ieee->associate_retry_wq);
	FUNC1(&ieee->start_ibss_wq);
	FUNC4(ieee);

	FUNC3(ieee);
}