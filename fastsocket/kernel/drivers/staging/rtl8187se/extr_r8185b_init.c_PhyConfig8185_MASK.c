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
struct r8180_priv {int RFProgType; int rf_chip; int InitialGain; int InitialGainBackUp; scalar_t__ bTxPowerTrack; scalar_t__ bDigMechanism; int /*<<< orphan*/  ReceiveConfig; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG4 ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  RCR ; 
#define  RF_ZEBRA2 129 
#define  RF_ZEBRA4 128 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(
	struct net_device *dev
	)
{
	struct r8180_priv *priv = (struct r8180_priv *)FUNC3(dev);
       FUNC5(dev, RCR, priv->ReceiveConfig);
	   priv->RFProgType = FUNC4(dev, CONFIG4) & 0x03;
     	// RF config
	switch(priv->rf_chip)
	{
	case RF_ZEBRA2:
	case RF_ZEBRA4:
		FUNC2( dev);
		break;
	}
//{by amy 080312
	// Set default initial gain state to 4, approved by SD3 DZ, by Bruce, 2007-06-06.
	if(priv->bDigMechanism)
	{
		if(priv->InitialGain == 0)
			priv->InitialGain = 4;
		//printk("PhyConfig8185(): DIG is enabled, set default initial gain index to %d\n", priv->InitialGain);
	}

	//
	// Enable thermal meter indication to implement TxPower tracking on 87SE.
	// We initialize thermal meter here to avoid unsuccessful configuration.
	// Added by Roger, 2007.12.11.
	//
	if(priv->bTxPowerTrack)
		FUNC0(dev);

//by amy 080312}
	priv->InitialGainBackUp= priv->InitialGain;
	FUNC1(dev);

	return;
}