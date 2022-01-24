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
struct r8192_priv {int /*<<< orphan*/  SifsTime; void* framesync; void* framesyncC34; void** DefaultInitialGain; void** MCSTxPowerLevelOriginalOffset; void* CCKTxPowerLevelOriginalOffset; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CCK_TXAGC ; 
 int /*<<< orphan*/  COMP_INIT ; 
 scalar_t__ MCS_TXAGC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*,...) ; 
 int /*<<< orphan*/  SIFS ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 scalar_t__ rOFDM0_RxDetector2 ; 
 int /*<<< orphan*/  rOFDM0_RxDetector3 ; 
 int /*<<< orphan*/  rOFDM0_XAAGCCore1 ; 
 int /*<<< orphan*/  rOFDM0_XBAGCCore1 ; 
 int /*<<< orphan*/  rOFDM0_XCAGCCore1 ; 
 int /*<<< orphan*/  rOFDM0_XDAGCCore1 ; 
 scalar_t__ rTxAGC_Mcs03_Mcs00 ; 
 scalar_t__ rTxAGC_Mcs07_Mcs04 ; 
 scalar_t__ rTxAGC_Mcs11_Mcs08 ; 
 scalar_t__ rTxAGC_Mcs15_Mcs12 ; 
 scalar_t__ rTxAGC_Rate18_06 ; 
 scalar_t__ rTxAGC_Rate54_24 ; 
 void* FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 

void FUNC5(struct net_device* dev)
{
	struct r8192_priv *priv = FUNC1(dev);
#ifdef RTL8190P
	priv->MCSTxPowerLevelOriginalOffset[0] =
		read_nic_dword(dev, MCS_TXAGC);
	priv->MCSTxPowerLevelOriginalOffset[1] =
		read_nic_dword(dev, (MCS_TXAGC+4));
	priv->CCKTxPowerLevelOriginalOffset =
		read_nic_dword(dev, CCK_TXAGC);
#else
	#ifdef RTL8192E
	priv->MCSTxPowerLevelOriginalOffset[0] =
		read_nic_dword(dev, rTxAGC_Rate18_06);
	priv->MCSTxPowerLevelOriginalOffset[1] =
		read_nic_dword(dev, rTxAGC_Rate54_24);
	priv->MCSTxPowerLevelOriginalOffset[2] =
		read_nic_dword(dev, rTxAGC_Mcs03_Mcs00);
	priv->MCSTxPowerLevelOriginalOffset[3] =
		read_nic_dword(dev, rTxAGC_Mcs07_Mcs04);
	priv->MCSTxPowerLevelOriginalOffset[4] =
		read_nic_dword(dev, rTxAGC_Mcs11_Mcs08);
	priv->MCSTxPowerLevelOriginalOffset[5] =
		read_nic_dword(dev, rTxAGC_Mcs15_Mcs12);
	#endif
#endif

	// read rx initial gain
	priv->DefaultInitialGain[0] = FUNC2(dev, rOFDM0_XAAGCCore1);
	priv->DefaultInitialGain[1] = FUNC2(dev, rOFDM0_XBAGCCore1);
	priv->DefaultInitialGain[2] = FUNC2(dev, rOFDM0_XCAGCCore1);
	priv->DefaultInitialGain[3] = FUNC2(dev, rOFDM0_XDAGCCore1);
	FUNC0(COMP_INIT, "Default initial gain (c50=0x%x, c58=0x%x, c60=0x%x, c68=0x%x) \n",
		priv->DefaultInitialGain[0], priv->DefaultInitialGain[1],
		priv->DefaultInitialGain[2], priv->DefaultInitialGain[3]);

	// read framesync
	priv->framesync = FUNC2(dev, rOFDM0_RxDetector3);
	priv->framesyncC34 = FUNC3(dev, rOFDM0_RxDetector2);
	FUNC0(COMP_INIT, "Default framesync (0x%x) = 0x%x \n",
		rOFDM0_RxDetector3, priv->framesync);
	// read SIFS (save the value read fome MACPHY_REG.txt)
	priv->SifsTime = FUNC4(dev, SIFS);
	return;
}