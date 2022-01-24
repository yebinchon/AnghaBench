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
typedef  int /*<<< orphan*/  u32 ;
struct r8192_priv {int bChangeBBInProgress; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_RF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct net_device* dev,u32	RegAddr,u32 Data)
{
	struct r8192_priv *priv = FUNC1(dev);
	u8	BBWaitCounter = 0;

	FUNC0(COMP_RF, "phy_SetUsbBBReg(): RegAddr(%#x) <= %#x\n", RegAddr, Data);

	//
	// <Roger_Notes> Due to PASSIVE_LEVEL, so we ONLY simply busy waiting for a while here.
	// We have to make sure that previous BB I/O has been done.
	// 2008.08.20.
	//
	while(priv->bChangeBBInProgress)
	{
		BBWaitCounter ++;
		FUNC0(COMP_RF, "phy_SetUsbBBReg(): Wait 1 ms (%d times)...\n", BBWaitCounter);
		FUNC2(1); // 1 ms

		if((BBWaitCounter > 100))// || RT_USB_CANNOT_IO(Adapter))
		{
			FUNC0(COMP_RF, "phy_SetUsbBBReg(): (%d) Wait too logn to query BB!!\n", BBWaitCounter);
			return;
		}
	}

	priv->bChangeBBInProgress = true;
	//printk("**************%s: RegAddr:%x Data:%x\n", __FUNCTION__,RegAddr, Data);
	FUNC3(dev, RegAddr, Data);

	priv->bChangeBBInProgress = false;
}