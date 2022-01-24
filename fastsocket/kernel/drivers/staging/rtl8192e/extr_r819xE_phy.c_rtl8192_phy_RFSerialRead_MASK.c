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
typedef  int u32 ;
struct r8192_priv {scalar_t__ rf_chip; int* RfReg0Value; scalar_t__ rf_type; TYPE_1__* PHYRegDef; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rf3wireOffset; int /*<<< orphan*/  rfLSSIReadBack; int /*<<< orphan*/  rfHSSIPara2; } ;
typedef  size_t RF90_RADIO_PATH_E ;
typedef  TYPE_1__ BB_REGISTER_DEFINITION_T ;

/* Variables and functions */
 int COMP_ERR ; 
 int COMP_PHY ; 
 scalar_t__ RF_1T2R ; 
 scalar_t__ RF_2T4R ; 
 scalar_t__ RF_8256 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int bLSSIReadAddress ; 
 int /*<<< orphan*/  bLSSIReadBackData ; 
 int bLSSIReadEdge ; 
 int bMaskDWord ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  rFPGA0_AnalogParameter4 ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static u32 FUNC5(struct net_device* dev, RF90_RADIO_PATH_E eRFPath, u32 Offset)
{
	struct r8192_priv *priv = FUNC1(dev);
	u32 ret = 0;
	u32 NewOffset = 0;
	BB_REGISTER_DEFINITION_T* pPhyReg = &priv->PHYRegDef[eRFPath];
	//rtl8192_setBBreg(dev, pPhyReg->rfLSSIReadBack, bLSSIReadBackData, 0);
	//make sure RF register offset is correct
	Offset &= 0x3f;

	//switch page for 8256 RF IC
	if (priv->rf_chip == RF_8256)
	{
#ifdef RTL8190P
		//analog to digital off, for protection
		rtl8192_setBBreg(dev, rFPGA0_AnalogParameter4, 0xf00, 0x0);// 0x88c[11:8]
#else
	#ifdef RTL8192E
		//analog to digital off, for protection
		rtl8192_setBBreg(dev, rFPGA0_AnalogParameter4, 0xf00, 0x0);// 0x88c[11:8]
	#endif
#endif
		if (Offset >= 31)
		{
			priv->RfReg0Value[eRFPath] |= 0x140;
			//Switch to Reg_Mode2 for Reg 31-45
			FUNC4(dev, pPhyReg->rf3wireOffset, bMaskDWord, (priv->RfReg0Value[eRFPath]<<16) );
			//modify offset
			NewOffset = Offset -30;
		}
		else if (Offset >= 16)
		{
			priv->RfReg0Value[eRFPath] |= 0x100;
			priv->RfReg0Value[eRFPath] &= (~0x40);
			//Switch to Reg_Mode 1 for Reg16-30
			FUNC4(dev, pPhyReg->rf3wireOffset, bMaskDWord, (priv->RfReg0Value[eRFPath]<<16) );

			NewOffset = Offset - 15;
		}
		else
			NewOffset = Offset;
	}
	else
	{
		FUNC0((COMP_PHY|COMP_ERR), "check RF type here, need to be 8256\n");
		NewOffset = Offset;
	}
	//put desired read addr to LSSI control Register
	FUNC4(dev, pPhyReg->rfHSSIPara2, bLSSIReadAddress, NewOffset);
	//Issue a posedge trigger
	//
	FUNC4(dev, pPhyReg->rfHSSIPara2,  bLSSIReadEdge, 0x0);
	FUNC4(dev, pPhyReg->rfHSSIPara2,  bLSSIReadEdge, 0x1);


	// TODO: we should not delay such a  long time. Ask help from SD3
	FUNC2(1);

	ret = FUNC3(dev, pPhyReg->rfLSSIReadBack, bLSSIReadBackData);


	// Switch back to Reg_Mode0;
	if(priv->rf_chip == RF_8256)
	{
		priv->RfReg0Value[eRFPath] &= 0xebf;

		FUNC4(
			dev,
			pPhyReg->rf3wireOffset,
			bMaskDWord,
			(priv->RfReg0Value[eRFPath] << 16));

#ifdef RTL8190P
		if(priv->rf_type == RF_2T4R)
		{
			//analog to digital on
			rtl8192_setBBreg(dev, rFPGA0_AnalogParameter4, 0xf00, 0xf);// 0x88c[11:8]
		}
		else if(priv->rf_type == RF_1T2R)
		{
			//analog to digital on
			rtl8192_setBBreg(dev, rFPGA0_AnalogParameter4, 0xc00, 0x3);// 0x88c[11:10]
		}
#else
	#ifdef RTL8192E
		//analog to digital on
		rtl8192_setBBreg(dev, rFPGA0_AnalogParameter4, 0x300, 0x3);// 0x88c[9:8]
	#endif
#endif
	}


	return ret;

}