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
struct r8192_priv {int CurrentChannelBW; int rf_chip; int nCur40MhzPrimeSC; void* SetBWModeInProgress; int /*<<< orphan*/  up; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ BW_OPMODE ; 
 int BW_OPMODE_20MHZ ; 
 int /*<<< orphan*/  COMP_DBG ; 
 int /*<<< orphan*/  COMP_SCAN ; 
 void* FALSE ; 
#define  HT_CHANNEL_WIDTH_20 134 
#define  HT_CHANNEL_WIDTH_20_40 133 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
#define  RF_6052 132 
#define  RF_8225 131 
#define  RF_8256 130 
#define  RF_8258 129 
#define  RF_PSEUDO_11N 128 
 scalar_t__ RRSR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int bCCKSideBand ; 
 int bRFMOD ; 
 struct r8192_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  rCCK0_System ; 
 int /*<<< orphan*/  rFPGA0_AnalogParameter2 ; 
 int /*<<< orphan*/  rFPGA0_RFMOD ; 
 int /*<<< orphan*/  rFPGA1_RFMOD ; 
 int /*<<< orphan*/  rOFDM1_LSTF ; 
 int FUNC4 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,scalar_t__,int) ; 

void FUNC7(struct net_device *dev)
{
	struct r8192_priv 		*priv = FUNC3(dev);
	u8	 			regBwOpMode;

	// Added it for 20/40 mhz switch time evaluation by guangan 070531
	//u32				NowL, NowH;
	//u8Byte				BeginTime, EndTime;
	u8			regRRSR_RSC;

	FUNC2(COMP_SCAN, "==>SetBWModeCallback8192SUsbWorkItem()  Switch to %s bandwidth\n", \
					priv->CurrentChannelBW == HT_CHANNEL_WIDTH_20?"20MHz":"40MHz");

	if(priv->rf_chip == RF_PSEUDO_11N)
	{
		priv->SetBWModeInProgress= FALSE;
		return;
	}

	if(!priv->up)
		return;

	// Added it for 20/40 mhz switch time evaluation by guangan 070531
	//NowL = read_nic_dword(dev, TSFR);
	//NowH = read_nic_dword(dev, TSFR+4);
	//BeginTime = ((u8Byte)NowH << 32) + NowL;

	//3<1>Set MAC register
	regBwOpMode = FUNC4(dev, BW_OPMODE);
	regRRSR_RSC = FUNC4(dev, RRSR+2);

	switch(priv->CurrentChannelBW)
	{
		case HT_CHANNEL_WIDTH_20:
			regBwOpMode |= BW_OPMODE_20MHZ;
		       // 2007/02/07 Mark by Emily becasue we have not verify whether this register works
			FUNC6(dev, BW_OPMODE, regBwOpMode);
			break;

		case HT_CHANNEL_WIDTH_20_40:
			regBwOpMode &= ~BW_OPMODE_20MHZ;
        		// 2007/02/07 Mark by Emily becasue we have not verify whether this register works
			FUNC6(dev, BW_OPMODE, regBwOpMode);
			regRRSR_RSC = (regRRSR_RSC&0x90) |(priv->nCur40MhzPrimeSC<<5);
			FUNC6(dev, RRSR+2, regRRSR_RSC);

			break;

		default:
			FUNC2(COMP_DBG, "SetBWModeCallback8192SUsbWorkItem():\
						unknown Bandwidth: %#X\n",priv->CurrentChannelBW);
			break;
	}

	//3 <2>Set PHY related register
	switch(priv->CurrentChannelBW)
	{
		case HT_CHANNEL_WIDTH_20:
			FUNC5(dev, rFPGA0_RFMOD, bRFMOD, 0x0);
			FUNC5(dev, rFPGA1_RFMOD, bRFMOD, 0x0);

			FUNC5(dev, rFPGA0_AnalogParameter2, 0xff, 0x58);

			break;
		case HT_CHANNEL_WIDTH_20_40:
			FUNC5(dev, rFPGA0_RFMOD, bRFMOD, 0x1);
			FUNC5(dev, rFPGA1_RFMOD, bRFMOD, 0x1);

			// Set Control channel to upper or lower. These settings are required only for 40MHz
			FUNC5(dev, rCCK0_System, bCCKSideBand, (priv->nCur40MhzPrimeSC>>1));
			FUNC5(dev, rOFDM1_LSTF, 0xC00, priv->nCur40MhzPrimeSC);

			FUNC5(dev, rFPGA0_AnalogParameter2, 0xff, 0x18);

			break;


		default:
			FUNC2(COMP_DBG, "SetBWModeCallback8192SUsbWorkItem(): unknown Bandwidth: %#X\n"\
						,priv->CurrentChannelBW);
			break;

	}
	//Skip over setting of J-mode in BB register here. Default value is "None J mode". Emily 20070315

	//3<3>Set RF related register
	switch( priv->rf_chip )
	{
		case RF_8225:
			FUNC1(dev, priv->CurrentChannelBW);
			break;

		case RF_8256:
			// Please implement this function in Hal8190PciPhy8256.c
			//PHY_SetRF8256Bandwidth(dev, priv->CurrentChannelBW);
			break;

		case RF_6052:
			FUNC0(dev, priv->CurrentChannelBW);
			break;

		case RF_8258:
			// Please implement this function in Hal8190PciPhy8258.c
			// PHY_SetRF8258Bandwidth();
			break;

		case RF_PSEUDO_11N:
			// Do Nothing
			break;

		default:
			//RT_ASSERT(FALSE, ("Unknown rf_chip: %d\n", priv->rf_chip));
			break;
	}

	priv->SetBWModeInProgress= FALSE;

	FUNC2(COMP_SCAN, "<==SetBWModeCallback8192SUsbWorkItem()" );
}