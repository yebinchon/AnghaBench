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
struct r8192_priv {int bChangeRFInProgress; int /*<<< orphan*/  rf_sem; } ;
struct net_device {int dummy; } ;
typedef  int RF90_RADIO_PATH_E ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_RF ; 
 int /*<<< orphan*/  RF_BB_CMD_ADDR ; 
 int /*<<< orphan*/  RF_BB_CMD_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct net_device* dev,RF90_RADIO_PATH_E eRFPath,u32	RegAddr,u32 Data)
{

	struct r8192_priv *priv = FUNC2(dev);
	u8	PollingCnt = 50;
	u8	RFWaitCounter = 0;


	//
	// <Roger_Notes> Due to PASSIVE_LEVEL, so we ONLY simply busy waiting for a while here.
	// We have to make sure that previous BB I/O has been done.
	// 2008.08.20.
	//
	while(priv->bChangeRFInProgress)
	{
		//PlatformReleaseSpinLock(Adapter, RT_RF_OPERATE_SPINLOCK);
		//spin_lock_irqsave(&priv->rf_lock, flags);	//LZM,090318
		FUNC1(&priv->rf_sem);

		RFWaitCounter ++;
		FUNC0(COMP_RF, "phy_SetUsbRFReg(): Wait 1 ms (%d times)...\n", RFWaitCounter);
		FUNC3(1); // 1 ms

		if((RFWaitCounter > 100))// || RT_USB_CANNOT_IO(Adapter))
		{
			FUNC0(COMP_RF, "phy_SetUsbRFReg(): (%d) Wait too logn to query BB!!\n", RFWaitCounter);
			return;
		}
		else
		{
			//PlatformAcquireSpinLock(Adapter, RT_RF_OPERATE_SPINLOCK);
		}
	}

	priv->bChangeRFInProgress = true;
	//PlatformReleaseSpinLock(Adapter, RT_RF_OPERATE_SPINLOCK);


	RegAddr &= 0x3f; //RF_Offset= 0x00~0x3F

	FUNC6(dev, RF_BB_CMD_DATA, Data);
	FUNC6(dev, RF_BB_CMD_ADDR, 0xF0000003|
					(RegAddr<<8)| //RF_Offset= 0x00~0x3F
					(eRFPath<<16));  //RF_Path = 0(A) or 1(B)

	do
	{// Make sure that access could be done.
		if(FUNC4(dev, RF_BB_CMD_ADDR) == 0)
				break;
	}while( --PollingCnt );

	if(PollingCnt == 0)
	{
		FUNC0(COMP_RF, "phy_SetUsbRFReg(): Set RegAddr(%#x) = %#x Fail!!!\n", RegAddr, Data);
	}

	//PlatformAcquireSpinLock(Adapter, RT_RF_OPERATE_SPINLOCK);
	//spin_unlock_irqrestore(&priv->rf_lock, flags);   //LZM,090318
	FUNC5(&priv->rf_sem);
	priv->bChangeRFInProgress = false;

}