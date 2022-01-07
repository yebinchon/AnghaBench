
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct r8192_priv {scalar_t__ rf_chip; int* RfReg0Value; scalar_t__ rf_type; TYPE_1__* PHYRegDef; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int rf3wireOffset; } ;
typedef size_t RF90_RADIO_PATH_E ;
typedef TYPE_1__ BB_REGISTER_DEFINITION_T ;


 int COMP_ERR ;
 int COMP_PHY ;
 scalar_t__ RF_1T2R ;
 scalar_t__ RF_2T4R ;
 scalar_t__ RF_8256 ;
 int RT_TRACE (int,char*) ;
 int bMaskDWord ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rFPGA0_AnalogParameter4 ;
 int rtl8192_setBBreg (struct net_device*,int ,int,int) ;

__attribute__((used)) static void rtl8192_phy_RFSerialWrite(struct net_device* dev, RF90_RADIO_PATH_E eRFPath, u32 Offset, u32 Data)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u32 DataAndAddr = 0, NewOffset = 0;
 BB_REGISTER_DEFINITION_T *pPhyReg = &priv->PHYRegDef[eRFPath];

 Offset &= 0x3f;
 if (priv->rf_chip == RF_8256)
 {
  if (Offset >= 31)
  {
   priv->RfReg0Value[eRFPath] |= 0x140;
   rtl8192_setBBreg(dev, pPhyReg->rf3wireOffset, bMaskDWord, (priv->RfReg0Value[eRFPath] << 16));
   NewOffset = Offset - 30;
  }
  else if (Offset >= 16)
  {
   priv->RfReg0Value[eRFPath] |= 0x100;
   priv->RfReg0Value[eRFPath] &= (~0x40);
   rtl8192_setBBreg(dev, pPhyReg->rf3wireOffset, bMaskDWord, (priv->RfReg0Value[eRFPath]<<16));
   NewOffset = Offset - 15;
  }
  else
   NewOffset = Offset;
 }
 else
 {
  RT_TRACE((COMP_PHY|COMP_ERR), "check RF type here, need to be 8256\n");
  NewOffset = Offset;
 }


 DataAndAddr = (Data<<16) | (NewOffset&0x3f);


 rtl8192_setBBreg(dev, pPhyReg->rf3wireOffset, bMaskDWord, DataAndAddr);


 if(Offset==0x0)
  priv->RfReg0Value[eRFPath] = Data;


  if(priv->rf_chip == RF_8256)
 {
  if(Offset != 0)
  {
   priv->RfReg0Value[eRFPath] &= 0xebf;
   rtl8192_setBBreg(
    dev,
    pPhyReg->rf3wireOffset,
    bMaskDWord,
    (priv->RfReg0Value[eRFPath] << 16));
  }
 }

 return;
}
