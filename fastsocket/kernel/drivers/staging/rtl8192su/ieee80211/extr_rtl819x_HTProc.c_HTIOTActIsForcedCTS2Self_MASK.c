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
typedef  int u8 ;
struct ieee80211_network {scalar_t__ marvell_cap_exist; } ;

/* Variables and functions */

u8 FUNC0(struct ieee80211_network *network)
{
	u8 	retValue = 0;

	if(network->marvell_cap_exist)
	{
		retValue = 1;
	}

	return retValue;
}