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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct r8180_priv {int irq_mask; scalar_t__ card_type; int /*<<< orphan*/  sens; int /*<<< orphan*/  (* rf_set_sens ) (struct net_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* rf_init ) (struct net_device*) ;scalar_t__ card_8185; TYPE_1__* ieee80211; scalar_t__ dma_poll_mask; } ;
struct net_device {scalar_t__ dev_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  basic_rate; } ;

/* Variables and functions */
 int AGCRESET_SHIFT ; 
 int /*<<< orphan*/  BRSR ; 
 int BRSR_BPLCP ; 
 int BRSR_MBR ; 
 scalar_t__ CARDBUS ; 
 int /*<<< orphan*/  CONFIG2 ; 
 int CONFIG2_DMA_POLLING_MODE_SHIFT ; 
 int /*<<< orphan*/  CONFIG3 ; 
 int CONFIG3_CLKRUN_SHIFT ; 
 int CONFIG3_FuncRegEn ; 
 int /*<<< orphan*/  CONFIG5 ; 
 int /*<<< orphan*/  EPROM_ANAPARAM_ADDRHWORD ; 
 int /*<<< orphan*/  EPROM_ANAPARAM_ADDRLWORD ; 
 int /*<<< orphan*/  EPROM_CMD_CONFIG ; 
 int /*<<< orphan*/  EPROM_CMD_NORMAL ; 
 int /*<<< orphan*/  FEMR ; 
 int FEMR_GWAKE ; 
 int FEMR_INTR ; 
 int FEMR_WKUP ; 
 int /*<<< orphan*/  GP_ENABLE ; 
 int /*<<< orphan*/  INT_TIMEOUT ; 
 int /*<<< orphan*/  MAC0 ; 
 int /*<<< orphan*/  MAC4 ; 
 int /*<<< orphan*/  RATE_FALLBACK ; 
 int /*<<< orphan*/  WPA_CONFIG ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct r8180_priv* FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC23(struct net_device *dev)
{
        struct r8180_priv *priv = FUNC3(dev);
	u32 anaparam;
	u16 word;
	u8 config3;

	FUNC12(dev);
	FUNC11(dev);

	/* enable beacon timeout, beacon TX ok and err
	 * LP tx ok and err, HP TX ok and err, NP TX ok and err,
	 * RX ok and ERR, and GP timer */
	priv->irq_mask = 0x6fcf;

	priv->dma_poll_mask = 0;

	FUNC8(dev);

	if(priv->card_type == CARDBUS ){
		config3=FUNC6(dev, CONFIG3);
		FUNC20(dev,CONFIG3,config3 | CONFIG3_FuncRegEn);
		FUNC22(dev,FEMR, FEMR_INTR | FEMR_WKUP | FEMR_GWAKE |
			FUNC7(dev, FEMR));
	}
	FUNC14(dev, EPROM_CMD_CONFIG);
	FUNC21(dev, MAC0, ((u32*)dev->dev_addr)[0]);
	FUNC22(dev, MAC4, ((u32*)dev->dev_addr)[1] & 0xffff );
	FUNC14(dev, EPROM_CMD_NORMAL);

	FUNC15(dev);

	if(!priv->card_8185){
		anaparam  = FUNC0(dev,EPROM_ANAPARAM_ADDRLWORD);
		anaparam |= FUNC0(dev,EPROM_ANAPARAM_ADDRHWORD)<<16;

		FUNC13(dev,anaparam);
	}
	/* These might be unnecessary since we do in rx_enable / tx_enable */
	FUNC1(dev);
	FUNC2(dev);

	FUNC14(dev, EPROM_CMD_CONFIG);

	/*
	   The following is very strange. seems to be that 1 means test mode,
	   but we need to acknolwledges the nic when a packet is ready
	   altought we set it to 0
	*/

	FUNC20(dev,
		       CONFIG2, FUNC6(dev,CONFIG2) &~\
		       (1<<CONFIG2_DMA_POLLING_MODE_SHIFT));
	//^the nic isn't in test mode
	if(priv->card_8185)
			FUNC20(dev,
		       CONFIG2, FUNC6(dev,CONFIG2)|(1<<4));

	FUNC14(dev,EPROM_CMD_NORMAL);

	FUNC21(dev,INT_TIMEOUT,0);

	if(!priv->card_8185)
	{
		/*
		experimental - this might be needed to calibrate AGC,
		anyway it shouldn't hurt
		*/
		FUNC20(dev, CONFIG5,
			FUNC6(dev, CONFIG5) | (1<<AGCRESET_SHIFT));
		FUNC6(dev, CONFIG5);
		FUNC19(15);
		FUNC20(dev, CONFIG5,
			FUNC6(dev, CONFIG5) &~ (1<<AGCRESET_SHIFT));
	}else{
		FUNC20(dev, WPA_CONFIG, 0);
		//write_nic_byte(dev, TESTR, 0xd);
	}

	FUNC10(dev);

	if(priv->card_8185){
		FUNC16(dev);
		FUNC20(dev, RATE_FALLBACK, 0x81);
	}else{
		word  = FUNC7(dev, BRSR);
		word &= ~BRSR_MBR;
		word &= ~BRSR_BPLCP;
		word |= FUNC4(priv->ieee80211->basic_rate);
		word |= 0x0f;
		FUNC22(dev, BRSR, word);
	}

	if(priv->card_8185){
		FUNC20(dev, GP_ENABLE,FUNC6(dev, GP_ENABLE) & ~(1<<6));

		//FIXME cfg 3 ClkRun enable - isn't it ReadOnly ?
		FUNC14(dev, EPROM_CMD_CONFIG);
		FUNC20(dev,CONFIG3, FUNC6(dev, CONFIG3)
			       | (1 << CONFIG3_CLKRUN_SHIFT));
		FUNC14(dev, EPROM_CMD_NORMAL);
	}

	priv->rf_init(dev);

	if(priv->rf_set_sens != NULL)
		priv->rf_set_sens(dev,priv->sens);
	FUNC9(dev);

	FUNC5(dev);
}