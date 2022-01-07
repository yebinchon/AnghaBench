
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
typedef int RT_STATUS ;


 int AGCTAB_ArrayLength ;
 scalar_t__ BaseBand_Config_AGC_TAB ;
 scalar_t__ BaseBand_Config_PHY_REG ;
 int PHY_REG_2T2RArrayLength ;
 int RT_STATUS_SUCCESS ;
 int* Rtl819XAGCTAB_Array ;
 int* Rtl819XPHY_REG_Array ;
 int bMaskDWord ;
 int mdelay (int) ;
 int rtl8192_setBBreg (struct net_device*,int,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static RT_STATUS
phy_ConfigBBWithHeaderFile(struct net_device* dev,u8 ConfigType)
{
 int i;

 u32* Rtl819XPHY_REGArray_Table;
 u32* Rtl819XAGCTAB_Array_Table;
 u16 PHY_REGArrayLen, AGCTAB_ArrayLen;
 AGCTAB_ArrayLen = AGCTAB_ArrayLength;
 Rtl819XAGCTAB_Array_Table = Rtl819XAGCTAB_Array;
 PHY_REGArrayLen = PHY_REG_2T2RArrayLength;
 Rtl819XPHY_REGArray_Table = Rtl819XPHY_REG_Array;


 if(ConfigType == BaseBand_Config_PHY_REG)
 {
  for(i=0;i<PHY_REGArrayLen;i=i+2)
  {
   if (Rtl819XPHY_REGArray_Table[i] == 0xfe)
    mdelay(50);
   else if (Rtl819XPHY_REGArray_Table[i] == 0xfd)
    mdelay(5);
   else if (Rtl819XPHY_REGArray_Table[i] == 0xfc)
    mdelay(1);
   else if (Rtl819XPHY_REGArray_Table[i] == 0xfb)
    udelay(50);
   else if (Rtl819XPHY_REGArray_Table[i] == 0xfa)
    udelay(5);
   else if (Rtl819XPHY_REGArray_Table[i] == 0xf9)
    udelay(1);
   rtl8192_setBBreg(dev, Rtl819XPHY_REGArray_Table[i], bMaskDWord, Rtl819XPHY_REGArray_Table[i+1]);


  }
 }
 else if(ConfigType == BaseBand_Config_AGC_TAB){
  for(i=0;i<AGCTAB_ArrayLen;i=i+2)
  {
   rtl8192_setBBreg(dev, Rtl819XAGCTAB_Array_Table[i], bMaskDWord, Rtl819XAGCTAB_Array_Table[i+1]);
  }
 }

 return RT_STATUS_SUCCESS;
}
