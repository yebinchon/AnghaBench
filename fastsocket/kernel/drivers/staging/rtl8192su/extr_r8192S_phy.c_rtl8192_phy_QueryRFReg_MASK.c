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
struct r8192_priv {int rf_pathmap; int /*<<< orphan*/  rf_sem; } ;
struct net_device {int dummy; } ;
typedef  int RF90_RADIO_PATH_E ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_RF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

u32 FUNC8(struct net_device* dev, RF90_RADIO_PATH_E eRFPath, u32 RegAddr, u32 BitMask)
{
	u32 Original_Value, Readback_Value, BitShift;//, flags;
	struct r8192_priv *priv = FUNC2(dev);


	FUNC0(COMP_RF, "--->PHY_QueryRFReg(): RegAddr(%#x), eRFPath(%#x), BitMask(%#x)\n", RegAddr, eRFPath,BitMask);

	if (!((priv->rf_pathmap >> eRFPath) & 0x1))
	{
		FUNC5("EEEEEError: rfpath off! rf_pathmap=%x eRFPath=%x\n", priv->rf_pathmap, eRFPath);
		return 0;
	}

	if (!FUNC6(dev, eRFPath))
	{
		FUNC5("EEEEEError: not legal rfpath! eRFPath=%x\n", eRFPath);
		return 0;
	}

	/* 2008/01/17 MH We get and release spin lock when reading RF register. */
	//PlatformAcquireSpinLock(dev, RT_RF_OPERATE_SPINLOCK);FIXLZM
	//spin_lock_irqsave(&priv->rf_lock, flags);	//YJ,test,090113
	FUNC1(&priv->rf_sem);
	//
	// <Roger_Notes> Due to 8051 operation cycle (limitation cycle: 6us) and 1-Byte access issue, we should use
	// 4181 to access Base Band instead of 8051 on USB interface to make sure that access could be done in
	// infinite cycle.
	// 2008.09.06.
	//
//#if (HAL_CODE_BASE == RTL8192_S && DEV_BUS_TYPE==USB_INTERFACE)
	//if(RT_USB_CANNOT_IO(Adapter))	return FALSE;
	Original_Value = FUNC4(dev, eRFPath, RegAddr);

	BitShift =  FUNC3(BitMask);
	Readback_Value = (Original_Value & BitMask) >> BitShift;
	//spin_unlock_irqrestore(&priv->rf_lock, flags);   //YJ,test,090113
	FUNC7(&priv->rf_sem);
	//PlatformReleaseSpinLock(dev, RT_RF_OPERATE_SPINLOCK);

	//RTPRINT(FPHY, PHY_RFR, ("RFR-%d MASK=0x%x Addr[0x%x]=0x%x\n", eRFPath, BitMask, RegAddr, Original_Value));

	return (Readback_Value);
}