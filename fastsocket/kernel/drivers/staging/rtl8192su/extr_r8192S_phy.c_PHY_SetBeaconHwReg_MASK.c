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
typedef  int u32 ;
typedef  int u16 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ WFM3 ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,scalar_t__,int) ; 

extern void FUNC1(	struct net_device* dev, u16 BeaconInterval)
{
	u32 NewBeaconNum;

	NewBeaconNum = BeaconInterval *32 - 64;
	//PlatformEFIOWrite4Byte(Adapter, WFM3+4, NewBeaconNum);
	//PlatformEFIOWrite4Byte(Adapter, WFM3, 0xB026007C);
	FUNC0(dev, WFM3+4, NewBeaconNum);
	FUNC0(dev, WFM3, 0xB026007C);
}