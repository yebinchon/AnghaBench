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
struct r8180_priv {int rf_chip; int CurrAntennaIndex; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANTSEL ; 
#define  RF_ZEBRA2 129 
#define  RF_ZEBRA4 128 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int,int) ; 

bool
FUNC5(
	struct net_device *dev,
	u8		u1bAntennaIndex
	)
{
	struct r8180_priv *priv = (struct r8180_priv *)FUNC0(dev);
	bool bAntennaSwitched = false;

//	printk("+SetAntenna8185(): Antenna is switching to: %d \n", u1bAntennaIndex);

	switch(u1bAntennaIndex)
	{
	case 0:
		switch(priv->rf_chip)
		{
		case RF_ZEBRA2:
		case RF_ZEBRA4:
			// Mac register, main antenna
			FUNC2(dev, ANTSEL, 0x03);
			//base band
			FUNC3(dev,0x11, 0x9b); // Config CCK RX antenna.
			FUNC4(dev, 0x0d, 0x5c); // Config OFDM RX antenna.


			bAntennaSwitched = true;
			break;

		default:
			FUNC1("SetAntenna8185: unkown RFChipID(%d)\n", priv->rf_chip);
			break;
		}
		break;

	case 1:
		switch(priv->rf_chip)
		{
		case RF_ZEBRA2:
		case RF_ZEBRA4:
			// Mac register, aux antenna
			FUNC2(dev, ANTSEL, 0x00);
			//base band
			FUNC3(dev, 0x11, 0xbb); // Config CCK RX antenna.
			FUNC4(dev, 0x0d, 0x54); // Config OFDM RX antenna.

			bAntennaSwitched = true;
			break;

		default:
			FUNC1("SetAntenna8185: unkown RFChipID(%d)\n", priv->rf_chip);
			break;
		}
		break;

	default:
		FUNC1("SetAntenna8185: unkown u1bAntennaIndex(%d)\n", u1bAntennaIndex);
		break;
	}

	if(bAntennaSwitched)
	{
		priv->CurrAntennaIndex = u1bAntennaIndex;
	}

//	printk("-SetAntenna8185(): return (%#X)\n", bAntennaSwitched);

	return bAntennaSwitched;
}