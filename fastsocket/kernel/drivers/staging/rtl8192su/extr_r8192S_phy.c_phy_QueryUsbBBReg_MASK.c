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
typedef  int u32 ;
struct r8192_priv {int bChangeBBInProgress; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_RF ; 
 int HST_RDBUSY ; 
 int /*<<< orphan*/  PHY_REG ; 
 int PHY_REG_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*,int) ; 

u32 FUNC5(struct net_device* dev, u32	RegAddr)
{
	struct r8192_priv *priv = FUNC1(dev);
	u32	ReturnValue = 0xffffffff;
	u8	PollingCnt = 50;
	u8	BBWaitCounter = 0;


	//
	// <Roger_Notes> Due to PASSIVE_LEVEL, so we ONLY simply busy waiting for a while here.
	// We have to make sure that previous BB I/O has been done.
	// 2008.08.20.
	//
	while(priv->bChangeBBInProgress)
	{
		BBWaitCounter ++;
		FUNC0(COMP_RF, "phy_QueryUsbBBReg(): Wait 1 ms (%d times)...\n", BBWaitCounter);
		FUNC2(1); // 1 ms

		// Wait too long, return FALSE to avoid to be stuck here.
		if((BBWaitCounter > 100) )//||RT_USB_CANNOT_IO(Adapter))
		{
			FUNC0(COMP_RF, "phy_QueryUsbBBReg(): (%d) Wait too logn to query BB!!\n", BBWaitCounter);
			return ReturnValue;
		}
	}

	priv->bChangeBBInProgress = true;

	FUNC4(dev, RegAddr);

	do
	{// Make sure that access could be done.
		if((FUNC3(dev, PHY_REG)&HST_RDBUSY) == 0)
			break;
	}while( --PollingCnt );

	if(PollingCnt == 0)
	{
		FUNC0(COMP_RF, "Fail!!!phy_QueryUsbBBReg(): RegAddr(%#x) = %#x\n", RegAddr, ReturnValue);
	}
	else
	{
		// Data FW read back.
		ReturnValue = FUNC4(dev, PHY_REG_DATA);
		FUNC0(COMP_RF, "phy_QueryUsbBBReg(): RegAddr(%#x) = %#x, PollingCnt(%d)\n", RegAddr, ReturnValue, PollingCnt);
	}

	priv->bChangeBBInProgress = false;

	return ReturnValue;
}