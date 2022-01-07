
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct r8192_priv {size_t cck_present_attentuation; TYPE_2__* cck_txbbgain_ch14_table; TYPE_1__* cck_txbbgain_table; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int* ccktxbb_valuearray; } ;
struct TYPE_3__ {int* ccktxbb_valuearray; } ;


 int bMaskDWord ;
 int bMaskHWord ;
 int bMaskLWord ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rCCK0_DebugPort ;
 int rCCK0_TxFilter1 ;
 int rCCK0_TxFilter2 ;
 int rtl8192_setBBreg (struct net_device*,int ,int ,int) ;

__attribute__((used)) static void dm_CCKTxPowerAdjust_TSSI(struct net_device *dev, bool bInCH14)
{
 u32 TempVal;
 struct r8192_priv *priv = ieee80211_priv(dev);

 TempVal = 0;
 if(!bInCH14){

  TempVal = priv->cck_txbbgain_table[priv->cck_present_attentuation].ccktxbb_valuearray[0] +
     (priv->cck_txbbgain_table[priv->cck_present_attentuation].ccktxbb_valuearray[1]<<8) ;

  rtl8192_setBBreg(dev, rCCK0_TxFilter1,bMaskHWord, TempVal);

  TempVal = 0;
  TempVal = priv->cck_txbbgain_table[priv->cck_present_attentuation].ccktxbb_valuearray[2] +
     (priv->cck_txbbgain_table[priv->cck_present_attentuation].ccktxbb_valuearray[3]<<8) +
     (priv->cck_txbbgain_table[priv->cck_present_attentuation].ccktxbb_valuearray[4]<<16 )+
     (priv->cck_txbbgain_table[priv->cck_present_attentuation].ccktxbb_valuearray[5]<<24);
  rtl8192_setBBreg(dev, rCCK0_TxFilter2,bMaskDWord, TempVal);

  TempVal = 0;
  TempVal = priv->cck_txbbgain_table[priv->cck_present_attentuation].ccktxbb_valuearray[6] +
     (priv->cck_txbbgain_table[priv->cck_present_attentuation].ccktxbb_valuearray[7]<<8) ;

  rtl8192_setBBreg(dev, rCCK0_DebugPort,bMaskLWord, TempVal);
 }
 else
 {
  TempVal = priv->cck_txbbgain_ch14_table[priv->cck_present_attentuation].ccktxbb_valuearray[0] +
     (priv->cck_txbbgain_ch14_table[priv->cck_present_attentuation].ccktxbb_valuearray[1]<<8) ;

  rtl8192_setBBreg(dev, rCCK0_TxFilter1,bMaskHWord, TempVal);

  TempVal = 0;
  TempVal = priv->cck_txbbgain_ch14_table[priv->cck_present_attentuation].ccktxbb_valuearray[2] +
     (priv->cck_txbbgain_ch14_table[priv->cck_present_attentuation].ccktxbb_valuearray[3]<<8) +
     (priv->cck_txbbgain_ch14_table[priv->cck_present_attentuation].ccktxbb_valuearray[4]<<16 )+
     (priv->cck_txbbgain_ch14_table[priv->cck_present_attentuation].ccktxbb_valuearray[5]<<24);
  rtl8192_setBBreg(dev, rCCK0_TxFilter2,bMaskDWord, TempVal);

  TempVal = 0;
  TempVal = priv->cck_txbbgain_ch14_table[priv->cck_present_attentuation].ccktxbb_valuearray[6] +
     (priv->cck_txbbgain_ch14_table[priv->cck_present_attentuation].ccktxbb_valuearray[7]<<8) ;

  rtl8192_setBBreg(dev, rCCK0_DebugPort,bMaskLWord, TempVal);
 }


}
