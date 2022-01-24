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
struct r8192_priv {size_t rfa_txpowertrackingindex; size_t cck_present_attentuation; size_t rfc_txpowertrackingindex; TYPE_1__* txbbgain_table; int /*<<< orphan*/  bcck_in_ch14; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {size_t txbbgain_value; size_t txbb_iq_amplifygain; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_POWER_TRACKING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  bMaskDWord ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  rOFDM0_XATxIQImbalance ; 
 int /*<<< orphan*/  rOFDM0_XCTxIQImbalance ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC4(
	struct net_device *dev
)
{
	struct r8192_priv *priv = FUNC2(dev);

	FUNC0(COMP_POWER_TRACKING, "Start Reset Recovery ==>\n");
	FUNC3(dev, rOFDM0_XATxIQImbalance, bMaskDWord, priv->txbbgain_table[priv->rfa_txpowertrackingindex].txbbgain_value);
	FUNC0(COMP_POWER_TRACKING, "Reset Recovery: Fill in 0xc80 is %08x\n",priv->txbbgain_table[priv->rfa_txpowertrackingindex].txbbgain_value);
	FUNC0(COMP_POWER_TRACKING, "Reset Recovery: Fill in RFA_txPowerTrackingIndex is %x\n",priv->rfa_txpowertrackingindex);
	FUNC0(COMP_POWER_TRACKING, "Reset Recovery : RF A I/Q Amplify Gain is %ld\n",priv->txbbgain_table[priv->rfa_txpowertrackingindex].txbb_iq_amplifygain);
	FUNC0(COMP_POWER_TRACKING, "Reset Recovery: CCK Attenuation is %d dB\n",priv->cck_present_attentuation);
	FUNC1(dev,priv->bcck_in_ch14);

	FUNC3(dev, rOFDM0_XCTxIQImbalance, bMaskDWord, priv->txbbgain_table[priv->rfc_txpowertrackingindex].txbbgain_value);
	FUNC0(COMP_POWER_TRACKING, "Reset Recovery: Fill in 0xc90 is %08x\n",priv->txbbgain_table[priv->rfc_txpowertrackingindex].txbbgain_value);
	FUNC0(COMP_POWER_TRACKING, "Reset Recovery: Fill in RFC_txPowerTrackingIndex is %x\n",priv->rfc_txpowertrackingindex);
	FUNC0(COMP_POWER_TRACKING, "Reset Recovery : RF C I/Q Amplify Gain is %ld\n",priv->txbbgain_table[priv->rfc_txpowertrackingindex].txbb_iq_amplifygain);

}