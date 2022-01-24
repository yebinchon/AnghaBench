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
struct r8180_priv {scalar_t__ eRFPowerState; int rf_chip; int /*<<< orphan*/  InitialGain; int /*<<< orphan*/  InitialGainBackUp; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  RF_ZEBRA4 128 
 scalar_t__ eRfOn ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int) ; 

void
FUNC4(
	struct net_device *dev
	)
{
	struct r8180_priv *priv = (struct r8180_priv *)FUNC1(dev);
	//unsigned char* IGTable;
	//u8			DIG_CurrentInitialGain = 4;
	//unsigned char u1Tmp;

	//lzm add 080826
	if(priv->eRFPowerState != eRfOn)
	{
		//Don't access BB/RF under disable PLL situation.
		//RT_TRACE(COMP_DIG, DBG_LOUD, ("UpdateInitialGain - pHalData->eRFPowerState!=eRfOn\n"));
		// Back to the original state
		priv->InitialGain= priv->InitialGainBackUp;
		return;
	}

	switch(priv->rf_chip)
	{
	case RF_ZEBRA4:
		// Dynamic set initial gain, follow 87B
		switch(priv->InitialGain)
		{
			case 1: //m861dBm
				//DMESG("RTL8187 + 8225 Initial Gain State 1: -82 dBm \n");
				FUNC3(dev, 0x17, 0x26);	FUNC2(1);
				FUNC3(dev, 0x24, 0x86);	FUNC2(1);
				FUNC3(dev, 0x05, 0xfa);	FUNC2(1);
				break;

			case 2: //m862dBm
				//DMESG("RTL8187 + 8225 Initial Gain State 2: -82 dBm \n");
				FUNC3(dev, 0x17, 0x36);	FUNC2(1);
				FUNC3(dev, 0x24, 0x86);	FUNC2(1);
				FUNC3(dev, 0x05, 0xfa);	FUNC2(1);
				break;

			case 3: //m863dBm
				//DMESG("RTL8187 + 8225 Initial Gain State 3: -82 dBm \n");
				FUNC3(dev, 0x17, 0x36);	FUNC2(1);
				FUNC3(dev, 0x24, 0x86);	FUNC2(1);
				FUNC3(dev, 0x05, 0xfb);	FUNC2(1);
				break;

			case 4: //m864dBm
				//DMESG("RTL8187 + 8225 Initial Gain State 4: -78 dBm \n");
				FUNC3(dev, 0x17, 0x46);	FUNC2(1);
				FUNC3(dev, 0x24, 0x86);	FUNC2(1);
				FUNC3(dev, 0x05, 0xfb);	FUNC2(1);
				break;

			case 5: //m82dBm
				//DMESG("RTL8187 + 8225 Initial Gain State 5: -74 dBm \n");
				FUNC3(dev, 0x17, 0x46);	FUNC2(1);
				FUNC3(dev, 0x24, 0x96);	FUNC2(1);
				FUNC3(dev, 0x05, 0xfb);	FUNC2(1);
				break;

			case 6: //m78dBm
				//DMESG ("RTL8187 + 8225 Initial Gain State 6: -70 dBm \n");
				FUNC3(dev, 0x17, 0x56);	FUNC2(1);
				FUNC3(dev, 0x24, 0x96);	FUNC2(1);
				FUNC3(dev, 0x05, 0xfc);	FUNC2(1);
				break;

			case 7: //m74dBm
				//DMESG("RTL8187 + 8225 Initial Gain State 7: -66 dBm \n");
				FUNC3(dev, 0x17, 0x56);	FUNC2(1);
				FUNC3(dev, 0x24, 0xa6);	FUNC2(1);
				FUNC3(dev, 0x05, 0xfc);	FUNC2(1);
				break;

			case 8:
				//DMESG("RTL8187 + 8225 Initial Gain State 8:\n");
				FUNC3(dev, 0x17, 0x66);	FUNC2(1);
				FUNC3(dev, 0x24, 0xb6);	FUNC2(1);
				FUNC3(dev, 0x05, 0xfc);	FUNC2(1);
				break;


			default:	//MP
				//DMESG("RTL8187 + 8225 Initial Gain State 1: -82 dBm (default)\n");
				FUNC3(dev, 0x17, 0x26);	FUNC2(1);
				FUNC3(dev, 0x24, 0x86);	FUNC2(1);
				FUNC3(dev, 0x05, 0xfa);	FUNC2(1);
				break;
		}
		break;


	default:
		FUNC0("UpdateInitialGain(): unknown RFChipID: %#X\n", priv->rf_chip);
		break;
	}
}