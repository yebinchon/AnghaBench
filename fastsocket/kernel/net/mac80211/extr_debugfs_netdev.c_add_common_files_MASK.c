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
 int /*<<< orphan*/  drop_unencrypted ; 
 int /*<<< orphan*/  hw_queues ; 
 int /*<<< orphan*/  rc_rateidx_mask_2ghz ; 
 int /*<<< orphan*/  rc_rateidx_mask_5ghz ; 
 int /*<<< orphan*/  rc_rateidx_mcs_mask_2ghz ; 
 int /*<<< orphan*/  rc_rateidx_mcs_mask_5ghz ; 

__attribute__((used)) static void FUNC1(struct ieee80211_sub_if_data *sdata)
{
	FUNC0(drop_unencrypted);
	FUNC0(rc_rateidx_mask_2ghz);
	FUNC0(rc_rateidx_mask_5ghz);
	FUNC0(rc_rateidx_mcs_mask_2ghz);
	FUNC0(rc_rateidx_mcs_mask_5ghz);
	FUNC0(hw_queues);
}