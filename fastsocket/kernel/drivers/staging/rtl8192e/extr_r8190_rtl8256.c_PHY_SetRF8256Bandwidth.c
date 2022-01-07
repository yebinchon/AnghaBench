
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct r8192_priv {scalar_t__ NumTotalRFPath; int chan; int card_8192_version; } ;
struct net_device {int dummy; } ;
typedef int RF90_RADIO_PATH_E ;
typedef int HT_CHANNEL_WIDTH ;


 int COMP_ERR ;


 int RT_TRACE (int ,char*,...) ;
 int VERSION_8190_BD ;
 int VERSION_8190_BE ;
 int bMask12Bits ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rtl8192_phy_CheckIsLegalRFPath (struct net_device*,scalar_t__) ;
 int rtl8192_phy_SetRFReg (struct net_device*,int ,int,int ,int) ;

void PHY_SetRF8256Bandwidth(struct net_device* dev , HT_CHANNEL_WIDTH Bandwidth)
{
 u8 eRFPath;
 struct r8192_priv *priv = ieee80211_priv(dev);


 for(eRFPath = 0; eRFPath <priv->NumTotalRFPath; eRFPath++)
 {
  if (!rtl8192_phy_CheckIsLegalRFPath(dev, eRFPath))
    continue;

  switch(Bandwidth)
  {
   case 129:
    if(priv->card_8192_version == VERSION_8190_BD || priv->card_8192_version == VERSION_8190_BE)
    {
     rtl8192_phy_SetRFReg(dev, (RF90_RADIO_PATH_E)eRFPath, 0x0b, bMask12Bits, 0x100);
     rtl8192_phy_SetRFReg(dev, (RF90_RADIO_PATH_E)eRFPath, 0x2c, bMask12Bits, 0x3d7);
     rtl8192_phy_SetRFReg(dev, (RF90_RADIO_PATH_E)eRFPath, 0x0e, bMask12Bits, 0x021);



    }
    else
    {
     RT_TRACE(COMP_ERR, "PHY_SetRF8256Bandwidth(): unknown hardware version\n");
    }

    break;
   case 128:
    if(priv->card_8192_version == VERSION_8190_BD ||priv->card_8192_version == VERSION_8190_BE)
    {
     rtl8192_phy_SetRFReg(dev, (RF90_RADIO_PATH_E)eRFPath, 0x0b, bMask12Bits, 0x300);
     rtl8192_phy_SetRFReg(dev, (RF90_RADIO_PATH_E)eRFPath, 0x2c, bMask12Bits, 0x3ff);
     rtl8192_phy_SetRFReg(dev, (RF90_RADIO_PATH_E)eRFPath, 0x0e, bMask12Bits, 0x0e1);
    }
    else
    {
     RT_TRACE(COMP_ERR, "PHY_SetRF8256Bandwidth(): unknown hardware version\n");
    }


    break;
   default:
    RT_TRACE(COMP_ERR, "PHY_SetRF8256Bandwidth(): unknown Bandwidth: %#X\n",Bandwidth );
    break;

  }
 }
 return;
}
