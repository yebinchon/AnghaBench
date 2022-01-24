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
struct r8180_priv {scalar_t__ eRFPowerState; int rf_chip; } ;
struct net_device {int dummy; } ;
typedef  scalar_t__ RT_RF_POWER_STATE ;

/* Variables and functions */
#define  RF_ZEBRA2 129 
#define  RF_ZEBRA4 128 
 int FUNC0 (struct net_device*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

bool
FUNC3(
	struct net_device *dev,
	RT_RF_POWER_STATE	eRFPowerState
	)
{
	struct r8180_priv *priv = (struct r8180_priv *)FUNC1(dev);
	bool			bResult = false;

//	printk("---------> SetRFPowerState(): eRFPowerState(%d)\n", eRFPowerState);
	if(eRFPowerState == priv->eRFPowerState)
	{
//		printk("<--------- SetRFPowerState(): discard the request for eRFPowerState(%d) is the same.\n", eRFPowerState);
		return bResult;
	}

	switch(priv->rf_chip)
	{
		case RF_ZEBRA2:
		case RF_ZEBRA4:
			 bResult = FUNC0(dev, eRFPowerState);
			break;

		default:
			FUNC2("SetRFPowerState8185(): unknown RFChipID: 0x%X!!!\n", priv->rf_chip);
			break;;
}
//	printk("<--------- SetRFPowerState(): bResult(%d)\n", bResult);

	return bResult;
}