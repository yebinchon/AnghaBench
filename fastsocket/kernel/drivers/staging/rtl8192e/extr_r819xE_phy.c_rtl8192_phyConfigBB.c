
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct r8192_priv {scalar_t__ RF_Type; scalar_t__ rf_type; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ bInHctTest; } ;


 int AGCTAB_ArrayLength ;
 int AGCTAB_ArrayLengthDTM ;
 TYPE_1__* Adapter ;
 scalar_t__ BaseBand_Config_AGC_TAB ;
 scalar_t__ BaseBand_Config_PHY_REG ;
 int COMP_DBG ;
 int PHY_REGArrayLength ;
 int PHY_REGArrayLengthDTM ;
 int PHY_REG_1T2RArrayLength ;
 int PHY_REG_1T2RArrayLengthDTM ;
 scalar_t__ RF_1T2R ;
 scalar_t__ RF_2T4R ;
 int RT_TRACE (int ,char*,int,int ,int ) ;
 int * Rtl819XAGCTAB_Array ;
 int * Rtl819XAGCTAB_ArrayDTM ;
 int * Rtl819XPHY_REGArray ;
 int * Rtl819XPHY_REGArrayDTM ;
 int * Rtl819XPHY_REG_1T2RArray ;
 int * Rtl819XPHY_REG_1T2RArrayDTM ;
 int bMaskDWord ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rtl8192_setBBreg (struct net_device*,int ,int ,int ) ;

void rtl8192_phyConfigBB(struct net_device* dev, u8 ConfigType)
{
 int i;

 u32* Rtl819XPHY_REGArray_Table = ((void*)0);
 u32* Rtl819XAGCTAB_Array_Table = ((void*)0);
 u16 AGCTAB_ArrayLen, PHY_REGArrayLen = 0;
 struct r8192_priv *priv = ieee80211_priv(dev);
 {
  AGCTAB_ArrayLen = AGCTAB_ArrayLength;
  Rtl819XAGCTAB_Array_Table = Rtl819XAGCTAB_Array;
  if(priv->rf_type == RF_2T4R)
  {
   PHY_REGArrayLen = PHY_REGArrayLength;
   Rtl819XPHY_REGArray_Table = Rtl819XPHY_REGArray;
  }
  else if (priv->rf_type == RF_1T2R)
  {
   PHY_REGArrayLen = PHY_REG_1T2RArrayLength;
   Rtl819XPHY_REGArray_Table = Rtl819XPHY_REG_1T2RArray;
  }
 }

 if (ConfigType == BaseBand_Config_PHY_REG)
 {
  for (i=0; i<PHY_REGArrayLen; i+=2)
  {
   rtl8192_setBBreg(dev, Rtl819XPHY_REGArray_Table[i], bMaskDWord, Rtl819XPHY_REGArray_Table[i+1]);
   RT_TRACE(COMP_DBG, "i: %x, The Rtl819xUsbPHY_REGArray[0] is %x Rtl819xUsbPHY_REGArray[1] is %x \n",i, Rtl819XPHY_REGArray_Table[i], Rtl819XPHY_REGArray_Table[i+1]);
  }
 }
 else if (ConfigType == BaseBand_Config_AGC_TAB)
 {
  for (i=0; i<AGCTAB_ArrayLen; i+=2)
  {
   rtl8192_setBBreg(dev, Rtl819XAGCTAB_Array_Table[i], bMaskDWord, Rtl819XAGCTAB_Array_Table[i+1]);
   RT_TRACE(COMP_DBG, "i:%x, The rtl819XAGCTAB_Array[0] is %x rtl819XAGCTAB_Array[1] is %x \n",i, Rtl819XAGCTAB_Array_Table[i], Rtl819XAGCTAB_Array_Table[i+1]);
  }
 }
 return;


}
