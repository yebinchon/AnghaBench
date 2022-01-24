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
struct ieee80211_sub_if_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  aid ; 
 int /*<<< orphan*/  ave_beacon ; 
 int /*<<< orphan*/  beacon_timeout ; 
 int /*<<< orphan*/  bssid ; 
 int /*<<< orphan*/  last_beacon ; 
 int /*<<< orphan*/  smps ; 
 int /*<<< orphan*/  tkip_mic_test ; 
 int /*<<< orphan*/  uapsd_max_sp_len ; 
 int /*<<< orphan*/  uapsd_queues ; 

__attribute__((used)) static void FUNC2(struct ieee80211_sub_if_data *sdata)
{
	FUNC0(bssid);
	FUNC0(aid);
	FUNC0(last_beacon);
	FUNC0(ave_beacon);
	FUNC0(beacon_timeout);
	FUNC1(smps, 0600);
	FUNC1(tkip_mic_test, 0200);
	FUNC1(uapsd_queues, 0600);
	FUNC1(uapsd_max_sp_len, 0600);
}