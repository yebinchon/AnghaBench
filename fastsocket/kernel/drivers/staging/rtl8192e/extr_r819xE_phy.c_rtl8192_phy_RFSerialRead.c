
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct r8192_priv {scalar_t__ rf_chip; int* RfReg0Value; scalar_t__ rf_type; TYPE_1__* PHYRegDef; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int rf3wireOffset; int rfLSSIReadBack; int rfHSSIPara2; } ;
typedef size_t RF90_RADIO_PATH_E ;
typedef TYPE_1__ BB_REGISTER_DEFINITION_T ;


 int COMP_ERR ;
 int COMP_PHY ;
 scalar_t__ RF_1T2R ;
 scalar_t__ RF_2T4R ;
 scalar_t__ RF_8256 ;
 int RT_TRACE (int,char*) ;
 int bLSSIReadAddress ;
 int bLSSIReadBackData ;
 int bLSSIReadEdge ;
 int bMaskDWord ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int msleep (int) ;
 int rFPGA0_AnalogParameter4 ;
 int rtl8192_QueryBBReg (struct net_device*,int ,int ) ;
 int rtl8192_setBBreg (struct net_device*,int ,int,int) ;

__attribute__((used)) static u32 rtl8192_phy_RFSerialRead(struct net_device* dev, RF90_RADIO_PATH_E eRFPath, u32 Offset)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u32 ret = 0;
 u32 NewOffset = 0;
 BB_REGISTER_DEFINITION_T* pPhyReg = &priv->PHYRegDef[eRFPath];


 Offset &= 0x3f;


 if (priv->rf_chip == RF_8256)
 {
  if (Offset >= 31)
  {
   priv->RfReg0Value[eRFPath] |= 0x140;

   rtl8192_setBBreg(dev, pPhyReg->rf3wireOffset, bMaskDWord, (priv->RfReg0Value[eRFPath]<<16) );

   NewOffset = Offset -30;
  }
  else if (Offset >= 16)
  {
   priv->RfReg0Value[eRFPath] |= 0x100;
   priv->RfReg0Value[eRFPath] &= (~0x40);

   rtl8192_setBBreg(dev, pPhyReg->rf3wireOffset, bMaskDWord, (priv->RfReg0Value[eRFPath]<<16) );

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

 rtl8192_setBBreg(dev, pPhyReg->rfHSSIPara2, bLSSIReadAddress, NewOffset);


 rtl8192_setBBreg(dev, pPhyReg->rfHSSIPara2, bLSSIReadEdge, 0x0);
 rtl8192_setBBreg(dev, pPhyReg->rfHSSIPara2, bLSSIReadEdge, 0x1);



 msleep(1);

 ret = rtl8192_QueryBBReg(dev, pPhyReg->rfLSSIReadBack, bLSSIReadBackData);



 if(priv->rf_chip == RF_8256)
 {
  priv->RfReg0Value[eRFPath] &= 0xebf;

  rtl8192_setBBreg(
   dev,
   pPhyReg->rf3wireOffset,
   bMaskDWord,
   (priv->RfReg0Value[eRFPath] << 16));
 }


 return ret;

}
