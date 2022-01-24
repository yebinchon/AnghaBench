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
struct r8192_priv {scalar_t__ Rf_Mode; int /*<<< orphan*/  rf_sem; int /*<<< orphan*/  being_init_adapter; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ eRFPowerState; } ;
typedef  int /*<<< orphan*/  RF90_RADIO_PATH_E ;

/* Variables and functions */
 scalar_t__ RF_OP_By_FW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ eRfOn ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

u32 FUNC8(struct net_device* dev, RF90_RADIO_PATH_E eRFPath, u32 RegAddr, u32 BitMask)
{
	u32 Original_Value, Readback_Value, BitShift;
	struct r8192_priv *priv = FUNC1(dev);
	if (!FUNC4(dev, eRFPath))
		return 0;
#ifdef RTL8192E
	if(priv->ieee80211->eRFPowerState != eRfOn && !priv->being_init_adapter)
		return	0;
#endif
	FUNC0(&priv->rf_sem);
	if (priv->Rf_Mode == RF_OP_By_FW)
	{
		Original_Value = FUNC2(dev, eRFPath, RegAddr);
		FUNC6(200);
	}
	else
	{
		Original_Value = FUNC5(dev, eRFPath, RegAddr);

	}
	BitShift =  FUNC3(BitMask);
   	Readback_Value = (Original_Value & BitMask) >> BitShift;
	FUNC7(&priv->rf_sem);
//	udelay(200);
	return (Readback_Value);
}