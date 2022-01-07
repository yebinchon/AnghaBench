
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int SifsTime; void* framesync; void* framesyncC34; void** DefaultInitialGain; void** MCSTxPowerLevelOriginalOffset; void* CCKTxPowerLevelOriginalOffset; } ;
struct net_device {int dummy; } ;


 scalar_t__ CCK_TXAGC ;
 int COMP_INIT ;
 scalar_t__ MCS_TXAGC ;
 int RT_TRACE (int ,char*,int ,void*,...) ;
 int SIFS ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 scalar_t__ rOFDM0_RxDetector2 ;
 int rOFDM0_RxDetector3 ;
 int rOFDM0_XAAGCCore1 ;
 int rOFDM0_XBAGCCore1 ;
 int rOFDM0_XCAGCCore1 ;
 int rOFDM0_XDAGCCore1 ;
 scalar_t__ rTxAGC_Mcs03_Mcs00 ;
 scalar_t__ rTxAGC_Mcs07_Mcs04 ;
 scalar_t__ rTxAGC_Mcs11_Mcs08 ;
 scalar_t__ rTxAGC_Mcs15_Mcs12 ;
 scalar_t__ rTxAGC_Rate18_06 ;
 scalar_t__ rTxAGC_Rate54_24 ;
 void* read_nic_byte (struct net_device*,int ) ;
 void* read_nic_dword (struct net_device*,scalar_t__) ;
 int read_nic_word (struct net_device*,int ) ;

void rtl8192_phy_getTxPower(struct net_device* dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 priv->DefaultInitialGain[0] = read_nic_byte(dev, rOFDM0_XAAGCCore1);
 priv->DefaultInitialGain[1] = read_nic_byte(dev, rOFDM0_XBAGCCore1);
 priv->DefaultInitialGain[2] = read_nic_byte(dev, rOFDM0_XCAGCCore1);
 priv->DefaultInitialGain[3] = read_nic_byte(dev, rOFDM0_XDAGCCore1);
 RT_TRACE(COMP_INIT, "Default initial gain (c50=0x%x, c58=0x%x, c60=0x%x, c68=0x%x) \n",
  priv->DefaultInitialGain[0], priv->DefaultInitialGain[1],
  priv->DefaultInitialGain[2], priv->DefaultInitialGain[3]);


 priv->framesync = read_nic_byte(dev, rOFDM0_RxDetector3);
 priv->framesyncC34 = read_nic_dword(dev, rOFDM0_RxDetector2);
 RT_TRACE(COMP_INIT, "Default framesync (0x%x) = 0x%x \n",
  rOFDM0_RxDetector3, priv->framesync);

 priv->SifsTime = read_nic_word(dev, SIFS);
 return;
}
