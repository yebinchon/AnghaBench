#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int enableB; int clk; int read_write; int data; } ;
struct TYPE_4__ {int longData; TYPE_1__ struc; } ;
typedef  TYPE_2__ ThreeWireReg ;

/* Variables and functions */
 int /*<<< orphan*/  RFPinsEnable ; 
 int /*<<< orphan*/  RFPinsInput ; 
 int /*<<< orphan*/  RFPinsOutput ; 
 int /*<<< orphan*/  RFPinsSelect ; 
 int RF_SW_CFG_SI ; 
 int /*<<< orphan*/  RF_SW_CONFIG ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(
	struct net_device *dev,
	u32		data2Write,
	u8		wLength,
	u32		*data2Read,
	u8		rLength,
	u8		low2high
	)
{
	ThreeWireReg	twreg;
	int				i;
	u16			oval,oval2,oval3,tmp, wReg80;
	u32			mask;
	u8			u1bTmp;
	ThreeWireReg	tdata;
	//PHAL_DATA_8187	pHalData = GetHalData8187(pAdapter);
	{ // RTL8187S HSSI Read/Write Function
		u1bTmp = FUNC0(dev, RF_SW_CONFIG);
		u1bTmp |=   RF_SW_CFG_SI;   //reg08[1]=1 Serial Interface(SI)
		FUNC3(dev, RF_SW_CONFIG, u1bTmp);
	}

	wReg80 = oval = FUNC1(dev, RFPinsOutput);
	oval2 = FUNC1(dev, RFPinsEnable);
	oval3 = FUNC1(dev, RFPinsSelect);

	FUNC4(dev, RFPinsEnable, oval2|0xf);
	FUNC4(dev, RFPinsSelect, oval3|0xf);

	*data2Read = 0;

	// We must clear BIT0-3 here, otherwise,
	// SW_Enalbe will be true when we first call ZEBRA_RFSerialRead() after 8187MPVC open,
	// which will cause the value read become 0. 2005.04.11, by rcnjko.
	oval &= ~0xf;

	// Avoid collision with hardware three-wire.
	twreg.longData = 0;
	twreg.struc.enableB = 1;
	FUNC4(dev, RFPinsOutput, twreg.longData|oval); FUNC2(4);

	twreg.longData = 0;
	twreg.struc.enableB = 0;
	twreg.struc.clk = 0;
	twreg.struc.read_write = 0;
	FUNC4(dev, RFPinsOutput, twreg.longData|oval); FUNC2(5);

	mask = (low2high) ? 0x01 : ((u32)0x01<<(32-1));
	for(i = 0; i < wLength/2; i++)
	{
		twreg.struc.data = ((data2Write&mask) != 0) ? 1 : 0;
		FUNC4(dev, RFPinsOutput, twreg.longData|oval); FUNC2(1);
		twreg.struc.clk = 1;
		FUNC4(dev, RFPinsOutput, twreg.longData|oval); FUNC2(2);
		FUNC4(dev, RFPinsOutput, twreg.longData|oval); FUNC2(2);

		mask = (low2high) ? (mask<<1): (mask>>1);

		if(i == 2)
		{
			// Commented out by Jackie, 2004.08.26. <RJ_NOTE> We must comment out the following two lines for we cannot pull down VCOPDN during RF Serail Read.
			//PlatformEFIOWrite2Byte(pAdapter, RFPinsEnable, 0xe);     // turn off data enable
			//PlatformEFIOWrite2Byte(pAdapter, RFPinsSelect, 0xe);

			twreg.struc.read_write=1;
			FUNC4(dev, RFPinsOutput, twreg.longData|oval); FUNC2(2);
			twreg.struc.clk = 0;
			FUNC4(dev, RFPinsOutput, twreg.longData|oval); FUNC2(2);
			break;
		}
		twreg.struc.data = ((data2Write&mask) != 0) ? 1: 0;
		FUNC4(dev, RFPinsOutput, twreg.longData|oval); FUNC2(2);
		FUNC4(dev, RFPinsOutput, twreg.longData|oval); FUNC2(2);

		twreg.struc.clk = 0;
		FUNC4(dev, RFPinsOutput, twreg.longData|oval); FUNC2(1);

		mask = (low2high) ? (mask<<1) : (mask>>1);
	}

	twreg.struc.clk = 0;
	twreg.struc.data = 0;
	FUNC4(dev, RFPinsOutput, twreg.longData|oval); FUNC2(2);
	mask = (low2high) ? 0x01 : ((u32)0x01 << (12-1));

	//
	// 061016, by rcnjko:
	// We must set data pin to HW controled, otherwise RF can't driver it and
	// value RF register won't be able to read back properly.
	//
	FUNC4(dev, RFPinsEnable, ( ((oval2|0x0E) & (~0x01))) );

	for(i = 0; i < rLength; i++)
	{
		FUNC4(dev, RFPinsOutput, twreg.longData|oval); FUNC2(1);
		twreg.struc.clk = 1;
		FUNC4(dev, RFPinsOutput, twreg.longData|oval); FUNC2(2);
		FUNC4(dev, RFPinsOutput, twreg.longData|oval); FUNC2(2);
		FUNC4(dev, RFPinsOutput, twreg.longData|oval); FUNC2(2);
		tmp = FUNC1(dev, RFPinsInput);
		tdata.longData = tmp;
		*data2Read |= tdata.struc.clk ? mask : 0;

		twreg.struc.clk = 0;
		FUNC4(dev, RFPinsOutput, twreg.longData|oval); FUNC2(2);

		mask = (low2high) ? (mask<<1) : (mask>>1);
	}
	twreg.struc.enableB = 1;
	twreg.struc.clk = 0;
	twreg.struc.data = 0;
	twreg.struc.read_write = 1;
	FUNC4(dev, RFPinsOutput, twreg.longData|oval); FUNC2(2);

	//PlatformEFIOWrite2Byte(pAdapter, RFPinsEnable, oval2|0x8);   // Set To Output Enable
	FUNC4(dev, RFPinsEnable, oval2);   // Set To Output Enable, <RJ_NOTE> We cannot enable BIT3 here, otherwise, we will failed to switch channel. 2005.04.12.
	//PlatformEFIOWrite2Byte(pAdapter, RFPinsEnable, 0x1bff);
	FUNC4(dev, RFPinsSelect, oval3);   // Set To SW Switch
	//PlatformEFIOWrite2Byte(pAdapter, RFPinsSelect, 0x0488);
	FUNC4(dev, RFPinsOutput, 0x3a0);
	//PlatformEFIOWrite2Byte(pAdapter, RFPinsOutput, 0x0480);
}