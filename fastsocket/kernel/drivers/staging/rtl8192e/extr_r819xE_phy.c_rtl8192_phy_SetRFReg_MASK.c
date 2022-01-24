#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct r8192_priv {scalar_t__ Rf_Mode; int /*<<< orphan*/  being_init_adapter; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ eRFPowerState; } ;
typedef  int /*<<< orphan*/  RF90_RADIO_PATH_E ;
typedef  int Original_Value ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_PHY ; 
 scalar_t__ RF_OP_By_FW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int bMask12Bits ; 
 scalar_t__ eRfOn ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(struct net_device* dev, RF90_RADIO_PATH_E eRFPath, u32 RegAddr, u32 BitMask, u32 Data)
{
	struct r8192_priv *priv = FUNC1(dev);
	u32 Original_Value, BitShift, New_Value;
//	u8	time = 0;

	if (!FUNC5(dev, eRFPath))
		return;
#ifdef RTL8192E
	if(priv->ieee80211->eRFPowerState != eRfOn && !priv->being_init_adapter)
		return;
#endif
	//spin_lock_irqsave(&priv->rf_lock, flags);
	//down(&priv->rf_sem);

	FUNC0(COMP_PHY, "FW RF CTRL is not ready now\n");
	if (priv->Rf_Mode == RF_OP_By_FW)
	{
		if (BitMask != bMask12Bits) // RF data is 12 bits only
		{
			Original_Value = FUNC2(dev, eRFPath, RegAddr);
			BitShift =  FUNC4(BitMask);
			New_Value = (((Original_Value) & (~BitMask)) | (Data<< BitShift));

			FUNC3(dev, eRFPath, RegAddr, New_Value);
		}else
			FUNC3(dev, eRFPath, RegAddr, Data);
		FUNC8(200);

	}
	else
	{
		if (BitMask != bMask12Bits) // RF data is 12 bits only
   	        {
			Original_Value = FUNC6(dev, eRFPath, RegAddr);
      			BitShift =  FUNC4(BitMask);
      			New_Value = (((Original_Value) & (~BitMask)) | (Data<< BitShift));

			FUNC7(dev, eRFPath, RegAddr, New_Value);
	        }else
			FUNC7(dev, eRFPath, RegAddr, Data);
	}
	//spin_unlock_irqrestore(&priv->rf_lock, flags);
	//up(&priv->rf_sem);
	return;
}