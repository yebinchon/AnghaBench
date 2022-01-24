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
 int /*<<< orphan*/  dtim_count ; 
 int /*<<< orphan*/  num_buffered_multicast ; 
 int /*<<< orphan*/  num_mcast_sta ; 
 int /*<<< orphan*/  num_sta_ps ; 
 int /*<<< orphan*/  tkip_mic_test ; 

__attribute__((used)) static void FUNC2(struct ieee80211_sub_if_data *sdata)
{
	FUNC0(num_mcast_sta);
	FUNC0(num_sta_ps);
	FUNC0(dtim_count);
	FUNC0(num_buffered_multicast);
	FUNC1(tkip_mic_test, 0200);
}