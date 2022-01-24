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
typedef  int u32 ;
struct r8192_priv {size_t CCK_index; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int** CCKSwingTable_Ch14 ; 
 int** CCKSwingTable_Ch1_Ch13 ; 
 int /*<<< orphan*/  COMP_POWER_TRACKING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  bMaskDWord ; 
 int /*<<< orphan*/  bMaskHWord ; 
 int /*<<< orphan*/  bMaskLWord ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  rCCK0_DebugPort ; 
 int /*<<< orphan*/  rCCK0_TxFilter1 ; 
 int /*<<< orphan*/  rCCK0_TxFilter2 ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,	bool  bInCH14)
{
	u32 TempVal;
	struct r8192_priv *priv = FUNC1(dev);

	TempVal = 0;
	if(!bInCH14)
	{
		//Write 0xa22 0xa23
		TempVal = 	CCKSwingTable_Ch1_Ch13[priv->CCK_index][0] +
					(CCKSwingTable_Ch1_Ch13[priv->CCK_index][1]<<8) ;
		FUNC2(dev, rCCK0_TxFilter1, bMaskHWord, TempVal);
		FUNC0(COMP_POWER_TRACKING, "CCK not chnl 14, reg 0x%x = 0x%x\n",
			rCCK0_TxFilter1, TempVal);
		//Write 0xa24 ~ 0xa27
		TempVal = 0;
		TempVal = 	CCKSwingTable_Ch1_Ch13[priv->CCK_index][2] +
					(CCKSwingTable_Ch1_Ch13[priv->CCK_index][3]<<8) +
					(CCKSwingTable_Ch1_Ch13[priv->CCK_index][4]<<16 )+
					(CCKSwingTable_Ch1_Ch13[priv->CCK_index][5]<<24);
		FUNC2(dev, rCCK0_TxFilter2, bMaskDWord, TempVal);
		FUNC0(COMP_POWER_TRACKING, "CCK not chnl 14, reg 0x%x = 0x%x\n",
			rCCK0_TxFilter2, TempVal);
		//Write 0xa28  0xa29
		TempVal = 0;
		TempVal = 	CCKSwingTable_Ch1_Ch13[priv->CCK_index][6] +
					(CCKSwingTable_Ch1_Ch13[priv->CCK_index][7]<<8) ;

		FUNC2(dev, rCCK0_DebugPort, bMaskLWord, TempVal);
		FUNC0(COMP_POWER_TRACKING, "CCK not chnl 14, reg 0x%x = 0x%x\n",
			rCCK0_DebugPort, TempVal);
	}
	else
	{
//		priv->CCKTxPowerAdjustCntNotCh14++;	//cosa add for debug.
		//Write 0xa22 0xa23
		TempVal = 	CCKSwingTable_Ch14[priv->CCK_index][0] +
					(CCKSwingTable_Ch14[priv->CCK_index][1]<<8) ;

		FUNC2(dev, rCCK0_TxFilter1, bMaskHWord, TempVal);
		FUNC0(COMP_POWER_TRACKING, "CCK chnl 14, reg 0x%x = 0x%x\n",
			rCCK0_TxFilter1, TempVal);
		//Write 0xa24 ~ 0xa27
		TempVal = 0;
		TempVal = 	CCKSwingTable_Ch14[priv->CCK_index][2] +
					(CCKSwingTable_Ch14[priv->CCK_index][3]<<8) +
					(CCKSwingTable_Ch14[priv->CCK_index][4]<<16 )+
					(CCKSwingTable_Ch14[priv->CCK_index][5]<<24);
		FUNC2(dev, rCCK0_TxFilter2, bMaskDWord, TempVal);
		FUNC0(COMP_POWER_TRACKING, "CCK chnl 14, reg 0x%x = 0x%x\n",
			rCCK0_TxFilter2, TempVal);
		//Write 0xa28  0xa29
		TempVal = 0;
		TempVal = 	CCKSwingTable_Ch14[priv->CCK_index][6] +
					(CCKSwingTable_Ch14[priv->CCK_index][7]<<8) ;

		FUNC2(dev, rCCK0_DebugPort, bMaskLWord, TempVal);
		FUNC0(COMP_POWER_TRACKING,"CCK chnl 14, reg 0x%x = 0x%x\n",
			rCCK0_DebugPort, TempVal);
	}
}