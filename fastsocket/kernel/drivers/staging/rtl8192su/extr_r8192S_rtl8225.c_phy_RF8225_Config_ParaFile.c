
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct r8192_priv {size_t NumTotalRFPath; TYPE_1__* PHYRegDef; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int rfintfs; int rfHSSIPara2; int rfintfo; int rfintfe; } ;
typedef int RF90_RADIO_PATH_E ;
typedef TYPE_1__ BB_REGISTER_DEFINITION_T ;






 int b3WireAddressLength ;
 int b3WireDataLength ;
 int bRFSI_RFENV ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rtl8192_QueryBBReg (struct net_device*,int ,int) ;
 int rtl8192_phy_ConfigRFWithHeaderFile (struct net_device*,int ) ;
 int rtl8192_setBBreg (struct net_device*,int ,int,int) ;

bool phy_RF8225_Config_ParaFile(struct net_device* dev)
{
 u32 u4RegValue = 0;


 u8 eRFPath;
 bool rtStatus = 1;
 struct r8192_priv *priv = ieee80211_priv(dev);
 BB_REGISTER_DEFINITION_T *pPhyReg;







 for(eRFPath = 0; eRFPath <priv->NumTotalRFPath; eRFPath++)
 {

  pPhyReg = &priv->PHYRegDef[eRFPath];


  switch(eRFPath)
  {
  case 131:
  case 129:
   u4RegValue = rtl8192_QueryBBReg(dev, pPhyReg->rfintfs, bRFSI_RFENV);
   break;
  case 130 :
  case 128:
   u4RegValue = rtl8192_QueryBBReg(dev, pPhyReg->rfintfs, bRFSI_RFENV<<16);
   break;
  }


  rtl8192_setBBreg(dev, pPhyReg->rfintfe, bRFSI_RFENV<<16, 0x1);


  rtl8192_setBBreg(dev, pPhyReg->rfintfo, bRFSI_RFENV, 0x1);


  rtl8192_setBBreg(dev, pPhyReg->rfHSSIPara2, b3WireAddressLength, 0x0);
  rtl8192_setBBreg(dev, pPhyReg->rfHSSIPara2, b3WireDataLength, 0x0);



  switch(eRFPath)
  {
  case 131:

   rtStatus = rtl8192_phy_ConfigRFWithHeaderFile(dev,(RF90_RADIO_PATH_E)eRFPath);
   break;
  case 130:

   rtStatus = rtl8192_phy_ConfigRFWithHeaderFile(dev,(RF90_RADIO_PATH_E)eRFPath);
   break;
  case 129:
   break;
  case 128:
   break;
  }

                                        ;
  switch(eRFPath)
  {
  case 131:
  case 129:
   rtl8192_setBBreg(dev, pPhyReg->rfintfs, bRFSI_RFENV, u4RegValue);
   break;
  case 130 :
  case 128:
   rtl8192_setBBreg(dev, pPhyReg->rfintfs, bRFSI_RFENV<<16, u4RegValue);
   break;
  }

  if(rtStatus == 0){

   goto phy_RF8225_Config_ParaFile_Fail;
  }

 }


 return rtStatus;

phy_RF8225_Config_ParaFile_Fail:

 return rtStatus;
}
