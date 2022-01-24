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
struct r8192_priv {int txpower_count; int /*<<< orphan*/  txpower_tracking_wq; int /*<<< orphan*/  priv_wq; int /*<<< orphan*/  btxpower_tracking; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RF90_PATH_A ; 
 int /*<<< orphan*/  bMask12Bits ; 
 struct r8192_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC0(dev);
	static u8 	TM_Trigger=0;

	//DbgPrint("dm_CheckTXPowerTracking() \n");
	if(!priv->btxpower_tracking)
		return;
	else
	{
		if(priv->txpower_count  <= 2)
		{
			priv->txpower_count++;
			return;
		}
	}

	if(!TM_Trigger)
	{
		//Attention!! You have to wirte all 12bits data to RF, or it may cause RF to crash
		//actually write reg0x02 bit1=0, then bit1=1.
		//DbgPrint("Trigger ThermalMeter, write RF reg0x2 = 0x4d to 0x4f\n");
		FUNC2(dev, RF90_PATH_A, 0x02, bMask12Bits, 0x4d);
		FUNC2(dev, RF90_PATH_A, 0x02, bMask12Bits, 0x4f);
		FUNC2(dev, RF90_PATH_A, 0x02, bMask12Bits, 0x4d);
		FUNC2(dev, RF90_PATH_A, 0x02, bMask12Bits, 0x4f);
		TM_Trigger = 1;
		return;
	}
	else
		{
		//DbgPrint("Schedule TxPowerTrackingWorkItem\n");
			FUNC1(priv->priv_wq,&priv->txpower_tracking_wq,0);
		TM_Trigger = 0;
		}
}