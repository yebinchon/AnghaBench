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
struct ieee80211_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINKSYSWRT330_LINKSYSWRT300_BROADCOM ; 
 int /*<<< orphan*/  LINKSYSWRT350_LINKSYSWRT150_BROADCOM ; 
 int /*<<< orphan*/  NETGEAR834Bv2_BROADCOM ; 
 int /*<<< orphan*/  UNKNOWN_BORADCOM ; 
 scalar_t__ FUNC0 (int*,int /*<<< orphan*/ ,int) ; 

u8 FUNC1(struct ieee80211_device* 	ieee, u8* PeerMacAddr)
{
	u8	retValue = false;	// default enable EDCA Turbo mode.
	// Set specific EDCA parameter for different AP in DM handler.

	return retValue;
#if 0
	if((memcmp(PeerMacAddr, UNKNOWN_BORADCOM, 3)==0)||
		(memcmp(PeerMacAddr, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3)==0)||
		(memcmp(PeerMacAddr, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3)==0)||
		(memcmp(PeerMacAddr, NETGEAR834Bv2_BROADCOM, 3)==0))

	{
		retValue = 1;	//Linksys disable EDCA turbo mode
	}

	return retValue;
#endif
}