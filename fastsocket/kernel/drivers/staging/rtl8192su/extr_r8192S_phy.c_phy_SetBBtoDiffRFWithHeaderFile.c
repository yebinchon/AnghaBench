
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct r8192_priv {scalar_t__ rf_type; } ;
struct net_device {int dummy; } ;
typedef int RT_STATUS ;


 scalar_t__ BaseBand_Config_PHY_REG ;
 int COMP_SEND ;
 int PHY_ChangeTo_1T1RArrayLength ;
 int PHY_ChangeTo_1T2RArrayLength ;
 scalar_t__ RF_1T1R ;
 scalar_t__ RF_1T2R ;
 int RT_STATUS_FAILURE ;
 int RT_STATUS_SUCCESS ;
 int RT_TRACE (int ,char*) ;
 int* Rtl819XPHY_REG_to1T1R_Array ;
 int* Rtl819XPHY_REG_to1T2R_Array ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int mdelay (int) ;
 int rtl8192_setBBreg (struct net_device*,int,int,int) ;
 int udelay (int) ;

__attribute__((used)) static RT_STATUS
phy_SetBBtoDiffRFWithHeaderFile(struct net_device* dev, u8 ConfigType)
{
 int i;
 struct r8192_priv *priv = ieee80211_priv(dev);
 u32* Rtl819XPHY_REGArraytoXTXR_Table;
 u16 PHY_REGArraytoXTXRLen;



 if(priv->rf_type == RF_1T1R)
 {
  Rtl819XPHY_REGArraytoXTXR_Table = Rtl819XPHY_REG_to1T1R_Array;
  PHY_REGArraytoXTXRLen = PHY_ChangeTo_1T1RArrayLength;
 }
 else if(priv->rf_type == RF_1T2R)
 {
  Rtl819XPHY_REGArraytoXTXR_Table = Rtl819XPHY_REG_to1T2R_Array;
  PHY_REGArraytoXTXRLen = PHY_ChangeTo_1T2RArrayLength;
 }





 else
 {
  return RT_STATUS_FAILURE;
 }

 if(ConfigType == BaseBand_Config_PHY_REG)
 {
  for(i=0;i<PHY_REGArraytoXTXRLen;i=i+3)
  {
   if (Rtl819XPHY_REGArraytoXTXR_Table[i] == 0xfe)
    mdelay(50);
   else if (Rtl819XPHY_REGArraytoXTXR_Table[i] == 0xfd)
    mdelay(5);
   else if (Rtl819XPHY_REGArraytoXTXR_Table[i] == 0xfc)
    mdelay(1);
   else if (Rtl819XPHY_REGArraytoXTXR_Table[i] == 0xfb)
    udelay(50);
   else if (Rtl819XPHY_REGArraytoXTXR_Table[i] == 0xfa)
    udelay(5);
   else if (Rtl819XPHY_REGArraytoXTXR_Table[i] == 0xf9)
    udelay(1);
   rtl8192_setBBreg(dev, Rtl819XPHY_REGArraytoXTXR_Table[i], Rtl819XPHY_REGArraytoXTXR_Table[i+1], Rtl819XPHY_REGArraytoXTXR_Table[i+2]);



  }
 }
 else {
  RT_TRACE(COMP_SEND, "phy_SetBBtoDiffRFWithHeaderFile(): ConfigType != BaseBand_Config_PHY_REG\n");
 }

 return RT_STATUS_SUCCESS;
}
