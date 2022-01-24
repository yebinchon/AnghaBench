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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct r8192_priv {scalar_t__ rf_type; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  RT_STATUS ;

/* Variables and functions */
 scalar_t__ BaseBand_Config_PHY_REG ; 
 int /*<<< orphan*/  COMP_SEND ; 
 int PHY_ChangeTo_1T1RArrayLength ; 
 int PHY_ChangeTo_1T2RArrayLength ; 
 scalar_t__ RF_1T1R ; 
 scalar_t__ RF_1T2R ; 
 int /*<<< orphan*/  RT_STATUS_FAILURE ; 
 int /*<<< orphan*/  RT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int* Rtl819XPHY_REG_to1T1R_Array ; 
 int* Rtl819XPHY_REG_to1T2R_Array ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static RT_STATUS
FUNC5(struct net_device* dev, u8 ConfigType)
{
	int i;
	struct r8192_priv 	*priv = FUNC1(dev);
	u32* 			Rtl819XPHY_REGArraytoXTXR_Table;
	u16				PHY_REGArraytoXTXRLen;

//#if (HAL_CODE_BASE != RTL8192_S)

	if(priv->rf_type == RF_1T1R)
	{
		Rtl819XPHY_REGArraytoXTXR_Table = Rtl819XPHY_REG_to1T1R_Array;
		PHY_REGArraytoXTXRLen = PHY_ChangeTo_1T1RArrayLength;
	}
	else if(priv->rf_type == RF_1T2R)
	{
		Rtl819XPHY_REGArraytoXTXR_Table = Rtl819XPHY_REG_to1T2R_Array;
		PHY_REGArraytoXTXRLen = PHY_ChangeTo_1T2RArrayLength;
	}
	//else if(priv->rf_type == RF_2T2R || priv->rf_type == RF_2T2R_GREEN)
	//{
	//	Rtl819XPHY_REGArraytoXTXR_Table = Rtl819XPHY_REG_to2T2R_Array;
	//	PHY_REGArraytoXTXRLen = PHY_ChangeTo_2T2RArrayLength;
	//}
	else
	{
		return RT_STATUS_FAILURE;
	}

	if(ConfigType == BaseBand_Config_PHY_REG)
	{
		for(i=0;i<PHY_REGArraytoXTXRLen;i=i+3)
		{
			if (Rtl819XPHY_REGArraytoXTXR_Table[i] == 0xfe)
				FUNC2(50);
			else if (Rtl819XPHY_REGArraytoXTXR_Table[i] == 0xfd)
				FUNC2(5);
			else if (Rtl819XPHY_REGArraytoXTXR_Table[i] == 0xfc)
				FUNC2(1);
			else if (Rtl819XPHY_REGArraytoXTXR_Table[i] == 0xfb)
				FUNC4(50);
			else if (Rtl819XPHY_REGArraytoXTXR_Table[i] == 0xfa)
				FUNC4(5);
			else if (Rtl819XPHY_REGArraytoXTXR_Table[i] == 0xf9)
				FUNC4(1);
			FUNC3(dev, Rtl819XPHY_REGArraytoXTXR_Table[i], Rtl819XPHY_REGArraytoXTXR_Table[i+1], Rtl819XPHY_REGArraytoXTXR_Table[i+2]);
			//RT_TRACE(COMP_SEND,
			//"The Rtl819XPHY_REGArraytoXTXR_Table[0] is %lx Rtl819XPHY_REGArraytoXTXR_Table[1] is %lx Rtl819XPHY_REGArraytoXTXR_Table[2] is %lx \n",
			//Rtl819XPHY_REGArraytoXTXR_Table[i],Rtl819XPHY_REGArraytoXTXR_Table[i+1], Rtl819XPHY_REGArraytoXTXR_Table[i+2]);
		}
	}
	else {
		FUNC0(COMP_SEND, "phy_SetBBtoDiffRFWithHeaderFile(): ConfigType != BaseBand_Config_PHY_REG\n");
	}
//#endif	// #if (HAL_CODE_BASE != RTL8192_S)
	return RT_STATUS_SUCCESS;
}