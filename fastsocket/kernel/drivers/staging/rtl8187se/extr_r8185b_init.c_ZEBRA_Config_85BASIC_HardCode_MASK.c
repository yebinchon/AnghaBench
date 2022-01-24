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
typedef  int u32 ;
struct r8180_priv {scalar_t__ card_8185; int XtalCal_Xin; int XtalCal_Xout; int /*<<< orphan*/  bSwAntennaDiverity; int /*<<< orphan*/  bDefaultAntenna1; scalar_t__ bXtalCalibration; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ANTSEL ; 
 int BIT11 ; 
 int BIT5 ; 
 int BIT6 ; 
 int BIT9 ; 
 int CCK_TXAGC ; 
 int* OFDM_CONFIG ; 
 int OFDM_TXAGC ; 
 int /*<<< orphan*/  PhyAddr ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ VERSION_8187S_C ; 
 scalar_t__ VERSION_8187S_D ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 int* ZEBRA_AGC ; 
 int* ZEBRA_RF_RX_GAIN_TABLE ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int FUNC8 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int,int) ; 

void
FUNC12(
	struct net_device *dev
	)
{

	struct r8180_priv *priv = (struct r8180_priv *)FUNC5(dev);
	u32			i;
	u32	addr,data;
	u32	u4bRegOffset, u4bRegValue, u4bRF23, u4bRF24;
       u8			u1b24E;


	//=============================================================================
	// 87S_PCIE :: RADIOCFG.TXT
	//=============================================================================


	// Page1 : reg16-reg30
	FUNC2(dev, 0x00, 0x013f);			FUNC6(1); // switch to page1
	u4bRF23= FUNC1(dev, 0x08);			FUNC6(1);
	u4bRF24= FUNC1(dev, 0x09);			FUNC6(1);

	if (u4bRF23==0x818 && u4bRF24==0x70C && priv->card_8185 == VERSION_8187S_C)
		priv->card_8185 = VERSION_8187S_D;

	// Page0 : reg0-reg15

//	RF_WriteReg(dev, 0x00, 0x003f);			mdelay(1);//1
	FUNC2(dev, 0x00, 0x009f);      	FUNC6(1);// 1

	FUNC2(dev, 0x01, 0x06e0);			FUNC6(1);

//	RF_WriteReg(dev, 0x02, 0x004c);			mdelay(1);//2
	FUNC2(dev, 0x02, 0x004d);			FUNC6(1);// 2

//	RF_WriteReg(dev, 0x03, 0x0000);			mdelay(1);//3
	FUNC2(dev, 0x03, 0x07f1);			FUNC6(1);// 3

	FUNC2(dev, 0x04, 0x0975);			FUNC6(1);
	FUNC2(dev, 0x05, 0x0c72);			FUNC6(1);
	FUNC2(dev, 0x06, 0x0ae6);			FUNC6(1);
	FUNC2(dev, 0x07, 0x00ca);			FUNC6(1);
	FUNC2(dev, 0x08, 0x0e1c);			FUNC6(1);
	FUNC2(dev, 0x09, 0x02f0);			FUNC6(1);
	FUNC2(dev, 0x0a, 0x09d0);			FUNC6(1);
	FUNC2(dev, 0x0b, 0x01ba);			FUNC6(1);
	FUNC2(dev, 0x0c, 0x0640);			FUNC6(1);
	FUNC2(dev, 0x0d, 0x08df);			FUNC6(1);
	FUNC2(dev, 0x0e, 0x0020);			FUNC6(1);
	FUNC2(dev, 0x0f, 0x0990);			FUNC6(1);


	// Page1 : reg16-reg30
	FUNC2(dev, 0x00, 0x013f);			FUNC6(1);

	FUNC2(dev, 0x03, 0x0806);			FUNC6(1);

	if(priv->card_8185 < VERSION_8187S_C)
	{
		FUNC2(dev, 0x04, 0x03f7);			FUNC6(1);
		FUNC2(dev, 0x05, 0x05ab);			FUNC6(1);
		FUNC2(dev, 0x06, 0x00c1);			FUNC6(1);
	}
	else
	{
		FUNC2(dev, 0x04, 0x03a7);			FUNC6(1);
		FUNC2(dev, 0x05, 0x059b);			FUNC6(1);
		FUNC2(dev, 0x06, 0x0081);			FUNC6(1);
	}


	FUNC2(dev, 0x07, 0x01A0);			FUNC6(1);
// Don't write RF23/RF24 to make a difference between 87S C cut and D cut. asked by SD3 stevenl.
//	RF_WriteReg(dev, 0x08, 0x0597);			mdelay(1);
//	RF_WriteReg(dev, 0x09, 0x050a);			mdelay(1);
	FUNC2(dev, 0x0a, 0x0001);			FUNC6(1);
	FUNC2(dev, 0x0b, 0x0418);			FUNC6(1);

	if(priv->card_8185 == VERSION_8187S_D)
	{
		FUNC2(dev, 0x0c, 0x0fbe);			FUNC6(1);
		FUNC2(dev, 0x0d, 0x0008);			FUNC6(1);
		FUNC2(dev, 0x0e, 0x0807);			FUNC6(1); // RX LO buffer
	}
	else
	{
		FUNC2(dev, 0x0c, 0x0fbe);			FUNC6(1);
		FUNC2(dev, 0x0d, 0x0008);			FUNC6(1);
		FUNC2(dev, 0x0e, 0x0806);			FUNC6(1); // RX LO buffer
	}

	FUNC2(dev, 0x0f, 0x0acc);			FUNC6(1);

//	RF_WriteReg(dev, 0x00, 0x017f);			mdelay(1);//6
	FUNC2(dev, 0x00, 0x01d7);			FUNC6(1);// 6

	FUNC2(dev, 0x03, 0x0e00);			FUNC6(1);
	FUNC2(dev, 0x04, 0x0e50);			FUNC6(1);
	for(i=0;i<=36;i++)
	{
		FUNC2(dev, 0x01, i);                     FUNC6(1);
		FUNC2(dev, 0x02, ZEBRA_RF_RX_GAIN_TABLE[i]); FUNC6(1);
		//DbgPrint("RF - 0x%x = 0x%x", i, ZEBRA_RF_RX_GAIN_TABLE[i]);
	}

	FUNC2(dev, 0x05, 0x0203);			FUNC6(1); 	/// 203, 343
	//RF_WriteReg(dev, 0x06, 0x0300);			mdelay(1);	// 400
	FUNC2(dev, 0x06, 0x0200);			FUNC6(1);	// 400

	FUNC2(dev, 0x00, 0x0137);			FUNC6(1);	// switch to reg16-reg30, and HSSI disable 137
	FUNC6(10); 	// Deay 10 ms. //0xfd

//	RF_WriteReg(dev, 0x0c, 0x09be);			mdelay(1);	// 7
	//RF_WriteReg(dev, 0x0c, 0x07be);			mdelay(1);
	//mdelay(10); 	// Deay 10 ms. //0xfd

	FUNC2(dev, 0x0d, 0x0008);			FUNC6(1);	// Z4 synthesizer loop filter setting, 392
	FUNC6(10); 	// Deay 10 ms. //0xfd

	FUNC2(dev, 0x00, 0x0037);			FUNC6(1);	// switch to reg0-reg15, and HSSI disable
	FUNC6(10); 	// Deay 10 ms. //0xfd

	FUNC2(dev, 0x04, 0x0160);			FUNC6(1); 	// CBC on, Tx Rx disable, High gain
	FUNC6(10); 	// Deay 10 ms. //0xfd

	FUNC2(dev, 0x07, 0x0080);			FUNC6(1);	// Z4 setted channel 1
	FUNC6(10); 	// Deay 10 ms. //0xfd

	FUNC2(dev, 0x02, 0x088D);			FUNC6(1);	// LC calibration
	FUNC6(200); 	// Deay 200 ms. //0xfd
	FUNC6(10); 	// Deay 10 ms. //0xfd
	FUNC6(10); 	// Deay 10 ms. //0xfd

	FUNC2(dev, 0x00, 0x0137);			FUNC6(1);	// switch to reg16-reg30 137, and HSSI disable 137
	FUNC6(10); 	// Deay 10 ms. //0xfd

	FUNC2(dev, 0x07, 0x0000);			FUNC6(1);
	FUNC2(dev, 0x07, 0x0180);			FUNC6(1);
	FUNC2(dev, 0x07, 0x0220);			FUNC6(1);
	FUNC2(dev, 0x07, 0x03E0);			FUNC6(1);

	// DAC calibration off 20070702
	FUNC2(dev, 0x06, 0x00c1);			FUNC6(1);
	FUNC2(dev, 0x0a, 0x0001);			FUNC6(1);
//{by amy 080312
	// For crystal calibration, added by Roger, 2007.12.11.
	if( priv->bXtalCalibration ) // reg 30.
	{ // enable crystal calibration.
		// RF Reg[30], (1)Xin:[12:9], Xout:[8:5],  addr[4:0].
		// (2)PA Pwr delay timer[15:14], default: 2.4us, set BIT15=0
		// (3)RF signal on/off when calibration[13], default: on, set BIT13=0.
		// So we should minus 4 BITs offset.
		FUNC2(dev, 0x0f, (priv->XtalCal_Xin<<5)|(priv->XtalCal_Xout<<1)|BIT11|BIT9);			FUNC6(1);
		FUNC7("ZEBRA_Config_85BASIC_HardCode(): (%02x)\n",
				(priv->XtalCal_Xin<<5) | (priv->XtalCal_Xout<<1) | BIT11| BIT9);
	}
	else
	{ // using default value. Xin=6, Xout=6.
		FUNC2(dev, 0x0f, 0x0acc);			FUNC6(1);
	}
//by amy 080312
//	RF_WriteReg(dev, 0x0f, 0x0acc);			mdelay(1);  //-by amy 080312

	FUNC2(dev, 0x00, 0x00bf);			FUNC6(1); // switch to reg0-reg15, and HSSI enable
//	RF_WriteReg(dev, 0x0d, 0x009f);			mdelay(1); // Rx BB start calibration, 00c//-edward
	FUNC2(dev, 0x0d, 0x08df);			FUNC6(1); // Rx BB start calibration, 00c//+edward
	FUNC2(dev, 0x02, 0x004d);			FUNC6(1); // temperature meter off
	FUNC2(dev, 0x04, 0x0975);			FUNC6(1); // Rx mode
	FUNC6(10);	// Deay 10 ms. //0xfe
	FUNC6(10);	// Deay 10 ms. //0xfe
	FUNC6(10);	// Deay 10 ms. //0xfe
	FUNC2(dev, 0x00, 0x0197);			FUNC6(1); // Rx mode//+edward
	FUNC2(dev, 0x05, 0x05ab);			FUNC6(1); // Rx mode//+edward
	FUNC2(dev, 0x00, 0x009f);			FUNC6(1); // Rx mode//+edward

	FUNC2(dev, 0x01, 0x0000);			FUNC6(1); // Rx mode//+edward
	FUNC2(dev, 0x02, 0x0000);			FUNC6(1); // Rx mode//+edward
	//power save parameters.
	u1b24E = FUNC8(dev, 0x24E);
	FUNC9(dev, 0x24E, (u1b24E & (~(BIT5|BIT6))));

	//=============================================================================

	//=============================================================================
	// CCKCONF.TXT
	//=============================================================================

	/*	[POWER SAVE] Power Saving Parameters by jong. 2007-11-27
	   	CCK reg0x00[7]=1'b1 :power saving for TX (default)
		CCK reg0x00[6]=1'b1: power saving for RX (default)
		CCK reg0x06[4]=1'b1: turn off channel estimation related circuits if not doing channel estimation.
		CCK reg0x06[3]=1'b1: turn off unused circuits before cca = 1
		CCK reg0x06[2]=1'b1: turn off cck's circuit if macrst =0
	*/

	FUNC10(dev,0x00,0xc8);
	FUNC10(dev,0x06,0x1c);
	FUNC10(dev,0x10,0x78);
	FUNC10(dev,0x2e,0xd0);
	FUNC10(dev,0x2f,0x06);
	FUNC10(dev,0x01,0x46);

	// power control
	FUNC9(dev, CCK_TXAGC, 0x10);
	FUNC9(dev, OFDM_TXAGC, 0x1B);
	FUNC9(dev, ANTSEL, 0x03);



	//=============================================================================
	// AGC.txt
	//=============================================================================

//	PlatformIOWrite4Byte( dev, PhyAddr, 0x00001280);	// Annie, 2006-05-05
	FUNC11(dev, 0x00, 0x12);
	//WriteBBPortUchar(dev, 0x00001280);

	for (i=0; i<128; i++)
	{
		//DbgPrint("AGC - [%x+1] = 0x%x\n", i, ZEBRA_AGC[i+1]);

		data = ZEBRA_AGC[i+1];
		data = data << 8;
		data = data | 0x0000008F;

		addr = i + 0x80; //enable writing AGC table
		addr = addr << 8;
		addr = addr | 0x0000008E;

		FUNC4(dev, data);
		FUNC4(dev, addr);
		FUNC4(dev, 0x0000008E);
	}

	FUNC0( dev, PhyAddr, 0x00001080);	// Annie, 2006-05-05
	//WriteBBPortUchar(dev, 0x00001080);

	//=============================================================================

	//=============================================================================
	// OFDMCONF.TXT
	//=============================================================================

	for(i=0; i<60; i++)
	{
		u4bRegOffset=i;
		u4bRegValue=OFDM_CONFIG[i];

		//DbgPrint("OFDM - 0x%x = 0x%x\n", u4bRegOffset, u4bRegValue);

		FUNC4(dev,
						(0x00000080 |
						(u4bRegOffset & 0x7f) |
						((u4bRegValue & 0xff) << 8)));
	}

	//=============================================================================
//by amy for antenna
	//=============================================================================
//{by amy 080312
	// Config Sw/Hw  Combinational Antenna Diversity. Added by Roger, 2008.02.26.
	FUNC3(dev, priv->bDefaultAntenna1, priv->bSwAntennaDiverity);
//by amy 080312}
//by amy for antenna
}