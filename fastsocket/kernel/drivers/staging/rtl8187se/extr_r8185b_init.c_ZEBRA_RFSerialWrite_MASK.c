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
struct TYPE_3__ {int enableB; int data; int clk; } ;
struct TYPE_4__ {int longData; TYPE_1__ struc; } ;
typedef  TYPE_2__ ThreeWireReg ;

/* Variables and functions */
 int /*<<< orphan*/  RFPinsEnable ; 
 int /*<<< orphan*/  RFPinsOutput ; 
 int /*<<< orphan*/  RFPinsSelect ; 
 int RF_SW_CFG_SI ; 
 int /*<<< orphan*/  RF_SW_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void
FUNC6(
	struct net_device *dev,
	u32			data2Write,
	u8			totalLength,
	u8			low2high
	)
{
	ThreeWireReg		twreg;
	int 				i;
	u16				oval,oval2,oval3;
	u32				mask;
	u16				UshortBuffer;

	u8			u1bTmp;
	// RTL8187S HSSI Read/Write Function
	u1bTmp = FUNC1(dev, RF_SW_CONFIG);
	u1bTmp |=   RF_SW_CFG_SI;   //reg08[1]=1 Serial Interface(SI)
	FUNC4(dev, RF_SW_CONFIG, u1bTmp);
	UshortBuffer = FUNC2(dev, RFPinsOutput);
	oval = UshortBuffer & 0xfff8; // We shall clear bit0, 1, 2 first, 2005.10.28, by rcnjko.

	oval2 = FUNC2(dev, RFPinsEnable);
	oval3 = FUNC2(dev, RFPinsSelect);

	// <RJ_NOTE> 3-wire should be controled by HW when we finish SW 3-wire programming. 2005.08.10, by rcnjko.
	oval3 &= 0xfff8;

	FUNC5(dev, RFPinsEnable, (oval2|0x0007)); // Set To Output Enable
	FUNC5(dev, RFPinsSelect, (oval3|0x0007)); // Set To SW Switch
	FUNC3(10);

	// Add this to avoid hardware and software 3-wire conflict.
	// 2005.03.01, by rcnjko.
	twreg.longData = 0;
	twreg.struc.enableB = 1;
	FUNC5(dev, RFPinsOutput, (twreg.longData|oval)); // Set SI_EN (RFLE)
	FUNC3(2);
	twreg.struc.enableB = 0;
	FUNC5(dev, RFPinsOutput, (twreg.longData|oval)); // Clear SI_EN (RFLE)
	FUNC3(10);

	mask = (low2high)?0x01:((u32)0x01<<(totalLength-1));

	for(i=0; i<totalLength/2; i++)
	{
		twreg.struc.data = ((data2Write&mask)!=0) ? 1 : 0;
		FUNC5(dev, RFPinsOutput, (twreg.longData|oval));
		twreg.struc.clk = 1;
		FUNC5(dev, RFPinsOutput, (twreg.longData|oval));
		FUNC5(dev, RFPinsOutput, (twreg.longData|oval));

		mask = (low2high)?(mask<<1):(mask>>1);
		twreg.struc.data = ((data2Write&mask)!=0) ? 1 : 0;
		FUNC5(dev, RFPinsOutput, (twreg.longData|oval));
		FUNC5(dev, RFPinsOutput, (twreg.longData|oval));
		twreg.struc.clk = 0;
		FUNC5(dev, RFPinsOutput, (twreg.longData|oval));
		mask = (low2high)?(mask<<1):(mask>>1);
	}

	twreg.struc.enableB = 1;
	twreg.struc.clk = 0;
	twreg.struc.data = 0;
	FUNC5(dev, RFPinsOutput, twreg.longData|oval);
	FUNC3(10);

	FUNC5(dev, RFPinsOutput, oval|0x0004);
	FUNC5(dev, RFPinsSelect, oval3|0x0000);

	FUNC0(dev);
}