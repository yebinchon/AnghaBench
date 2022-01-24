#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct r8180_priv {scalar_t__ bInactivePs; scalar_t__ RfOffReason; int /*<<< orphan*/  eRFPowerState; scalar_t__ dma_poll_stop_mask; scalar_t__ dma_poll_mask; struct ieee80211_device* ieee80211; } ;
struct net_device {scalar_t__ dev_addr; } ;
struct ieee80211_device {int mode; } ;
typedef  int WIRELESS_MODE ;
struct TYPE_4__ {scalar_t__ RegRfOff; } ;
struct TYPE_5__ {TYPE_1__ MgntInfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANAPARAM ; 
 int /*<<< orphan*/  ANAPARAM2 ; 
 int /*<<< orphan*/  ANAPARAM3 ; 
 int ANAPARM2_ASIC_ON ; 
 int ANAPARM_ASIC_ON ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 TYPE_2__* Adapter ; 
 int /*<<< orphan*/  AtimWnd ; 
 int BIT0 ; 
 int BIT3 ; 
 int BIT5 ; 
 int BIT6 ; 
 int /*<<< orphan*/  BcnItv ; 
 int CONFIG3 ; 
 int CONFIG3_PARM_En ; 
 int CONFIG5 ; 
 int CR9346 ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FEMR ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  MAC0 ; 
 int /*<<< orphan*/  MAC4 ; 
 int MSR ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PSR ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RFPinsOutput ; 
 int /*<<< orphan*/  RFPinsSelect ; 
 int /*<<< orphan*/  RFSW_CTRL ; 
 int /*<<< orphan*/  RF_CHANGE_BY_IPS ; 
 int /*<<< orphan*/  RF_OFF ; 
 int /*<<< orphan*/  RF_ON ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int WIRELESS_MODE_A ; 
 int WIRELESS_MODE_AUTO ; 
 int WIRELESS_MODE_B ; 
 int WIRELESS_MODE_G ; 
 int WPA_CONFIG ; 
 int /*<<< orphan*/  eRfOff ; 
 int /*<<< orphan*/  eRfOn ; 
 struct r8180_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int FUNC12 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC18(struct net_device *dev)
{
      struct r8180_priv *priv = FUNC10(dev);
	struct ieee80211_device *ieee = priv->ieee80211;

	u8 SupportedWirelessMode;
	u8			InitWirelessMode;
	u8			bInvalidWirelessMode = 0;
	//int i;
	u8 tmpu8;
    	//u8 u1tmp,u2tmp;
	u8 btCR9346;
	u8 TmpU1b;
	u8 btPSR;

	//rtl8180_rtx_disable(dev);
//{by amy 080312
	FUNC15(dev,0x24e, (BIT5|BIT6|BIT0));
//by amy 080312}
	FUNC13(dev);

	priv->dma_poll_mask = 0;
	priv->dma_poll_stop_mask = 0;

	//rtl8180_beacon_tx_disable(dev);

	FUNC3(dev);

	FUNC16(dev, MAC0, ((u32*)dev->dev_addr)[0]);
	FUNC17(dev, MAC4, ((u32*)dev->dev_addr)[1] & 0xffff );

	FUNC15(dev, MSR, FUNC12(dev, MSR) & 0xf3);	// default network type to 'No	Link'

	//write_nic_byte(dev, BRSR, 0x0);		// Set BRSR= 1M

	FUNC17(dev, BcnItv, 100);
	FUNC17(dev, AtimWnd, 2);

	//PlatformEFIOWrite2Byte(dev, FEMR, 0xFFFF);
	FUNC7(dev, FEMR, 0xFFFF);

	FUNC15(dev, WPA_CONFIG, 0);

	FUNC4(dev);

	// Override the RFSW_CTRL (MAC offset 0x272-0x273), 2006.06.07, by rcnjko.
	// BT_DEMO_BOARD type
	FUNC7(dev, RFSW_CTRL, 0x569a);
//by amy
//#ifdef CONFIG_RTL818X_S
		// for jong required
//	PlatformIOWrite2Byte(dev, RFSW_CTRL, 0x9a56);
//#endif
//by amy
	//BT_QA_BOARD
	//PlatformIOWrite2Byte(dev, RFSW_CTRL, 0x9a56);

	//-----------------------------------------------------------------------------
	// Set up PHY related.
	//-----------------------------------------------------------------------------
	// Enable Config3.PARAM_En to revise AnaaParm.
	FUNC15(dev, CR9346, 0xc0);	// enable config register write
//by amy
	tmpu8 = FUNC12(dev, CONFIG3);
	FUNC15(dev, CONFIG3, (tmpu8 |CONFIG3_PARM_En) );
//by amy
	// Turn on Analog power.
	// Asked for by William, otherwise, MAC 3-wire can't work, 2006.06.27, by rcnjko.
	FUNC16(dev, ANAPARAM2, ANAPARM2_ASIC_ON);
	FUNC16(dev, ANAPARAM, ANAPARM_ASIC_ON);
//by amy
	FUNC17(dev, ANAPARAM3, 0x0010);
//by amy

	FUNC15(dev, CONFIG3, tmpu8);
	FUNC15(dev, CR9346, 0x00);
//{by amy 080312 for led
	// enable EEM0 and EEM1 in 9346CR
	btCR9346 = FUNC12(dev, CR9346);
	FUNC15(dev, CR9346, (btCR9346|0xC0) );

	// B cut use LED1 to control HW RF on/off
	TmpU1b = FUNC12(dev, CONFIG5);
	TmpU1b = TmpU1b & ~BIT3;
	FUNC15(dev,CONFIG5, TmpU1b);

	// disable EEM0 and EEM1 in 9346CR
	btCR9346 &= ~(0xC0);
	FUNC15(dev, CR9346, btCR9346);

	//Enable Led (suggested by Jong)
	// B-cut RF Radio on/off  5e[3]=0
	btPSR = FUNC12(dev, PSR);
	FUNC15(dev, PSR, (btPSR | BIT3));
//by amy 080312 for led}
	// setup initial timing for RFE.
	FUNC17(dev, RFPinsOutput, 0x0480);
	FUNC8(dev);
	FUNC17(dev, RFPinsSelect, 0x2488);

	// PHY config.
	FUNC6(dev);

	// We assume RegWirelessMode has already been initialized before,
	// however, we has to validate the wireless mode here and provide a reasonble
	// initialized value if necessary. 2005.01.13, by rcnjko.
	SupportedWirelessMode = FUNC2(dev);
	if(	(ieee->mode != WIRELESS_MODE_B) &&
		(ieee->mode != WIRELESS_MODE_G) &&
		(ieee->mode != WIRELESS_MODE_A) &&
		(ieee->mode != WIRELESS_MODE_AUTO))
	{ // It should be one of B, G, A, or AUTO.
		bInvalidWirelessMode = 1;
	}
	else
	{ // One of B, G, A, or AUTO.
		// Check if the wireless mode is supported by RF.
		if( (ieee->mode != WIRELESS_MODE_AUTO) &&
			(ieee->mode & SupportedWirelessMode) == 0 )
		{
			bInvalidWirelessMode = 1;
		}
	}

	if(bInvalidWirelessMode || ieee->mode==WIRELESS_MODE_AUTO)
	{ // Auto or other invalid value.
		// Assigne a wireless mode to initialize.
		if((SupportedWirelessMode & WIRELESS_MODE_A))
		{
			InitWirelessMode = WIRELESS_MODE_A;
		}
		else if((SupportedWirelessMode & WIRELESS_MODE_G))
		{
			InitWirelessMode = WIRELESS_MODE_G;
		}
		else if((SupportedWirelessMode & WIRELESS_MODE_B))
		{
			InitWirelessMode = WIRELESS_MODE_B;
		}
		else
		{
			FUNC1("InitializeAdapter8185(): No valid wireless mode supported, SupportedWirelessMode(%x)!!!\n",
				 SupportedWirelessMode);
			InitWirelessMode = WIRELESS_MODE_B;
		}

		// Initialize RegWirelessMode if it is not a valid one.
		if(bInvalidWirelessMode)
		{
			ieee->mode = (WIRELESS_MODE)InitWirelessMode;
		}
	}
	else
	{ // One of B, G, A.
		InitWirelessMode = ieee->mode;
	}
//by amy for power save
//	printk("initialize ENABLE_IPS\n");
	priv->eRFPowerState = eRfOff;
	priv->RfOffReason = 0;
	{
	//	u32 tmp2;
	//	u32 tmp = jiffies;
		FUNC5(dev, eRfOn, 0);
	//	tmp2 = jiffies;
	//	printk("rf on cost jiffies:%lx\n", (tmp2-tmp)*1000/HZ);
	}
//	DrvIFIndicateCurrentPhyStatus(priv);
		//
		// If inactive power mode is enabled, disable rf while in disconnected state.
		// 2007.07.16, by shien chang.
		//
	if (priv->bInactivePs)
	{
	//	u32 tmp2;
	//	u32 tmp = jiffies;
		FUNC5(dev,eRfOff, RF_CHANGE_BY_IPS);
	//	tmp2 = jiffies;
	//	printk("rf off cost jiffies:%lx\n", (tmp2-tmp)*1000/HZ);

	}
//	IPSEnter(dev);
//by amy for power save
#ifdef TODO
	// Turn off RF if necessary. 2005.08.23, by rcnjko.
	// We shall turn off RF after setting CMDR, otherwise,
	// RF will be turnned on after we enable MAC Tx/Rx.
	if(Adapter->MgntInfo.RegRfOff == TRUE)
	{
		SetRFPowerState8185(Adapter, RF_OFF);
	}
	else
	{
		SetRFPowerState8185(Adapter, RF_ON);
	}
#endif

/*   //these is equal with above TODO.
	write_nic_byte(dev, CR9346, 0xc0);	// enable config register write
	write_nic_byte(dev, CONFIG3, read_nic_byte(dev, CONFIG3) | CONFIG3_PARM_En);
	RF_WriteReg(dev, 0x4, 0x9FF);
	write_nic_dword(dev, ANAPARAM2, ANAPARM2_ASIC_ON);
	write_nic_dword(dev, ANAPARAM, ANAPARM_ASIC_ON);
	write_nic_byte(dev, CONFIG3, (read_nic_byte(dev, CONFIG3)&(~CONFIG3_PARM_En)));
	write_nic_byte(dev, CR9346, 0x00);
*/

	FUNC0(dev, (u8)(InitWirelessMode));

	//-----------------------------------------------------------------------------

	FUNC14(dev);

	FUNC11(dev);

 }