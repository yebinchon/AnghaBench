
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct r8192_priv {scalar_t__ rf_type; } ;
struct net_device {int dummy; } ;
typedef int RT_STATUS ;
typedef int RF90_RADIO_PATH_E ;






 scalar_t__ RF_2T2R_GREEN ;
 int RT_STATUS_SUCCESS ;
 int RadioA_1T_ArrayLength ;
 int RadioB_ArrayLength ;
 int RadioB_GM_ArrayLength ;
 int* Rtl819XRadioA_Array ;
 int* Rtl819XRadioB_Array ;
 int* Rtl819XRadioB_GM_Array ;
 int bRFRegOffsetMask ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int mdelay (int) ;
 int rtl8192_phy_SetRFReg (struct net_device*,int,int,int ,int) ;
 int udelay (int) ;

u8 rtl8192_phy_ConfigRFWithHeaderFile(struct net_device* dev, RF90_RADIO_PATH_E eRFPath)
{

 struct r8192_priv *priv = ieee80211_priv(dev);
 int i;

 RT_STATUS rtStatus = RT_STATUS_SUCCESS;
 u32 *Rtl819XRadioA_Array_Table;
 u32 *Rtl819XRadioB_Array_Table;


 u16 RadioA_ArrayLen,RadioB_ArrayLen;

 {
  RadioA_ArrayLen = RadioA_1T_ArrayLength;
  Rtl819XRadioA_Array_Table=Rtl819XRadioA_Array;
  Rtl819XRadioB_Array_Table=Rtl819XRadioB_Array;
  RadioB_ArrayLen = RadioB_ArrayLength;
 }

 if( priv->rf_type == RF_2T2R_GREEN )
 {
  Rtl819XRadioB_Array_Table = Rtl819XRadioB_GM_Array;
  RadioB_ArrayLen = RadioB_GM_ArrayLength;
 }
 else
 {
  Rtl819XRadioB_Array_Table = Rtl819XRadioB_Array;
  RadioB_ArrayLen = RadioB_ArrayLength;
 }

 rtStatus = RT_STATUS_SUCCESS;







 switch(eRFPath){
  case 131:
   for(i = 0;i<RadioA_ArrayLen; i=i+2){
    if(Rtl819XRadioA_Array_Table[i] == 0xfe)
     {

      mdelay(1000);
    }
     else if (Rtl819XRadioA_Array_Table[i] == 0xfd)
      mdelay(5);
     else if (Rtl819XRadioA_Array_Table[i] == 0xfc)
      mdelay(1);
     else if (Rtl819XRadioA_Array_Table[i] == 0xfb)
      udelay(50);

     else if (Rtl819XRadioA_Array_Table[i] == 0xfa)
      udelay(5);
     else if (Rtl819XRadioA_Array_Table[i] == 0xf9)
      udelay(1);
     else
     {
     rtl8192_phy_SetRFReg(dev, eRFPath, Rtl819XRadioA_Array_Table[i], bRFRegOffsetMask, Rtl819XRadioA_Array_Table[i+1]);
     }
   }
   break;
  case 130:
   for(i = 0;i<RadioB_ArrayLen; i=i+2){
    if(Rtl819XRadioB_Array_Table[i] == 0xfe)
     {

      mdelay(1000);
    }
     else if (Rtl819XRadioB_Array_Table[i] == 0xfd)
      mdelay(5);
     else if (Rtl819XRadioB_Array_Table[i] == 0xfc)
      mdelay(1);
     else if (Rtl819XRadioB_Array_Table[i] == 0xfb)
      udelay(50);
     else if (Rtl819XRadioB_Array_Table[i] == 0xfa)
      udelay(5);
     else if (Rtl819XRadioB_Array_Table[i] == 0xf9)
      udelay(1);
     else
     {
     rtl8192_phy_SetRFReg(dev, eRFPath, Rtl819XRadioB_Array_Table[i], bRFRegOffsetMask, Rtl819XRadioB_Array_Table[i+1]);
     }
   }
   break;
  case 129:
   break;
  case 128:
   break;
  default:
   break;
 }

 return rtStatus;

}
