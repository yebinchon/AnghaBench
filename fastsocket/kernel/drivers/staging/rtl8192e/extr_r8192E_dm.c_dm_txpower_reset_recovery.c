
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {size_t rfa_txpowertrackingindex; size_t CCKPresentAttentuation; size_t rfc_txpowertrackingindex; TYPE_1__* txbbgain_table; int bcck_in_ch14; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {size_t txbbgain_value; size_t txbb_iq_amplifygain; } ;


 int COMP_POWER_TRACKING ;
 int RT_TRACE (int ,char*,...) ;
 int bMaskDWord ;
 int dm_cck_txpower_adjust (struct net_device*,int ) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rOFDM0_XATxIQImbalance ;
 int rOFDM0_XCTxIQImbalance ;
 int rtl8192_setBBreg (struct net_device*,int ,int ,size_t) ;

__attribute__((used)) static void dm_txpower_reset_recovery(
 struct net_device *dev
)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 RT_TRACE(COMP_POWER_TRACKING, "Start Reset Recovery ==>\n");
 rtl8192_setBBreg(dev, rOFDM0_XATxIQImbalance, bMaskDWord, priv->txbbgain_table[priv->rfa_txpowertrackingindex].txbbgain_value);
 RT_TRACE(COMP_POWER_TRACKING, "Reset Recovery: Fill in 0xc80 is %08x\n",priv->txbbgain_table[priv->rfa_txpowertrackingindex].txbbgain_value);
 RT_TRACE(COMP_POWER_TRACKING, "Reset Recovery: Fill in RFA_txPowerTrackingIndex is %x\n",priv->rfa_txpowertrackingindex);
 RT_TRACE(COMP_POWER_TRACKING, "Reset Recovery : RF A I/Q Amplify Gain is %ld\n",priv->txbbgain_table[priv->rfa_txpowertrackingindex].txbb_iq_amplifygain);
 RT_TRACE(COMP_POWER_TRACKING, "Reset Recovery: CCK Attenuation is %d dB\n",priv->CCKPresentAttentuation);
 dm_cck_txpower_adjust(dev,priv->bcck_in_ch14);

 rtl8192_setBBreg(dev, rOFDM0_XCTxIQImbalance, bMaskDWord, priv->txbbgain_table[priv->rfc_txpowertrackingindex].txbbgain_value);
 RT_TRACE(COMP_POWER_TRACKING, "Reset Recovery: Fill in 0xc90 is %08x\n",priv->txbbgain_table[priv->rfc_txpowertrackingindex].txbbgain_value);
 RT_TRACE(COMP_POWER_TRACKING, "Reset Recovery: Fill in RFC_txPowerTrackingIndex is %x\n",priv->rfc_txpowertrackingindex);
 RT_TRACE(COMP_POWER_TRACKING, "Reset Recovery : RF C I/Q Amplify Gain is %ld\n",priv->txbbgain_table[priv->rfc_txpowertrackingindex].txbb_iq_amplifygain);

}
