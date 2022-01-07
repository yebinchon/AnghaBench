
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct r8192_priv {scalar_t__ bTXPowerDataReadFromEEPORM; size_t** RfTxPwrLevelCck; scalar_t__ rf_type; size_t** RfTxPwrLevelOfdm1T; size_t** RfTxPwrLevelOfdm2T; int EEPROMVersion; scalar_t__ CurrentChannelBW; size_t** TxPwrHt20Diff; int TxPwrbandEdgeFlag; size_t** TxPwrbandEdgeHt40; size_t** TxPwrbandEdgeHt20; size_t* AntennaTxPwDiff; size_t LegacyHTTxPowerDiff; size_t CurrentCckTxPwrIdx; size_t CurrentOfdm24GTxPwrIdx; int rf_chip; int CcxCellPwr; TYPE_2__* ieee80211; scalar_t__ bWithCcxCellPwr; } ;
struct net_device {int dummy; } ;
typedef int s8 ;
struct TYPE_3__ {size_t channel; } ;
struct TYPE_4__ {scalar_t__ iw_mode; TYPE_1__ current_network; } ;


 int COMP_TXAGC ;
 scalar_t__ EEPROM_Default_TxPower ;
 scalar_t__ FALSE ;
 scalar_t__ HT_CHANNEL_WIDTH_20 ;
 scalar_t__ HT_CHANNEL_WIDTH_20_40 ;
 scalar_t__ IW_MODE_INFRA ;
 int PHY_RF6052SetCckTxPower (struct net_device*,size_t) ;
 int PHY_RF6052SetOFDMTxPower (struct net_device*,size_t) ;
 scalar_t__ RF_1T1R ;
 scalar_t__ RF_1T2R ;
 scalar_t__ RF_2T2R ;




 int RT_TRACE (int ,char*) ;
 int WIRELESS_MODE_B ;
 int WIRELESS_MODE_G ;
 int WIRELESS_MODE_N_24G ;
 int bXBTxAGC ;
 int bXCTxAGC ;
 int bXDTxAGC ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 size_t phy_DbmToTxPwrIdx (struct net_device*,int ,int ) ;
 int rFPGA0_TxGainStage ;
 int rtl8192_setBBreg (struct net_device*,int ,int,int) ;

void PHY_SetTxPowerLevel8192S(struct net_device* dev, u8 channel)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 u8 powerlevel = (u8)EEPROM_Default_TxPower, powerlevelOFDM24G = 0x10;
 s8 ant_pwr_diff = 0;
 u32 u4RegValue;
 u8 index = (channel -1);

 u8 pwrdiff[2] = {0};
 u8 ht20pwr[2] = {0}, ht40pwr[2] = {0};
 u8 rfpath = 0, rfpathnum = 2;

 if(priv->bTXPowerDataReadFromEEPORM == FALSE)
  return;





 {
  powerlevel = priv->RfTxPwrLevelCck[0][index];

  if (priv->rf_type == RF_1T2R || priv->rf_type == RF_1T1R)
  {

  powerlevelOFDM24G = priv->RfTxPwrLevelOfdm1T[0][index];






  rfpathnum = 1;
  ht20pwr[0] = ht40pwr[0] = priv->RfTxPwrLevelOfdm1T[0][index];
  }
  else if (priv->rf_type == RF_2T2R)
  {

  powerlevelOFDM24G = priv->RfTxPwrLevelOfdm2T[0][index];

  ant_pwr_diff = priv->RfTxPwrLevelOfdm2T[1][index] -
      priv->RfTxPwrLevelOfdm2T[0][index];
  ht20pwr[0] = ht40pwr[0] = priv->RfTxPwrLevelOfdm2T[0][index];
  ht20pwr[1] = ht40pwr[1] = priv->RfTxPwrLevelOfdm2T[1][index];
 }





 if (priv->EEPROMVersion == 2)
 {
  if (priv->CurrentChannelBW == HT_CHANNEL_WIDTH_20)
  {
   for (rfpath = 0; rfpath < rfpathnum; rfpath++)
   {

    pwrdiff[rfpath] = priv->TxPwrHt20Diff[rfpath][index];


    if (pwrdiff[rfpath] < 8)
    {
     ht20pwr[rfpath] += pwrdiff[rfpath];
    }
    else
    {
     ht20pwr[rfpath] -= (15-pwrdiff[rfpath]);
    }
   }


   if (priv->rf_type == RF_2T2R)
    ant_pwr_diff = ht20pwr[1] - ht20pwr[0];




  }


  if (priv->TxPwrbandEdgeFlag == 1 )
  {
   for (rfpath = 0; rfpath < rfpathnum; rfpath++)
   {
    pwrdiff[rfpath] = 0;
    if (priv->CurrentChannelBW == HT_CHANNEL_WIDTH_20_40)
    {
     if (channel <= 3)
      pwrdiff[rfpath] = priv->TxPwrbandEdgeHt40[rfpath][0];
     else if (channel >= 9)
      pwrdiff[rfpath] = priv->TxPwrbandEdgeHt40[rfpath][1];
     else
      pwrdiff[rfpath] = 0;

     ht40pwr[rfpath] -= pwrdiff[rfpath];
    }
    else if (priv->CurrentChannelBW == HT_CHANNEL_WIDTH_20)
    {
     if (channel == 1)
      pwrdiff[rfpath] = priv->TxPwrbandEdgeHt20[rfpath][0];
     else if (channel >= 11)
      pwrdiff[rfpath] = priv->TxPwrbandEdgeHt20[rfpath][1];
     else
      pwrdiff[rfpath] = 0;

     ht20pwr[rfpath] -= pwrdiff[rfpath];
    }
   }

   if (priv->rf_type == RF_2T2R)
   {

    if (priv->CurrentChannelBW == HT_CHANNEL_WIDTH_20_40)
     ant_pwr_diff = ht40pwr[1] - ht40pwr[0];
    else
     ant_pwr_diff = ht20pwr[1] - ht20pwr[0];
   }
   if (priv->CurrentChannelBW == HT_CHANNEL_WIDTH_20)
   {
    if (channel <= 1 || channel >= 11)
    {



    }
   }
   else
   {
    if (channel <= 3 || channel >= 9)
    {



    }
   }
  }
  }



 if(ant_pwr_diff > 7)
  ant_pwr_diff = 7;
 if(ant_pwr_diff < -8)
  ant_pwr_diff = -8;





  ant_pwr_diff &= 0xf;


  priv->AntennaTxPwDiff[2] = 0;
  priv->AntennaTxPwDiff[1] = 0;
  priv->AntennaTxPwDiff[0] = (u8)(ant_pwr_diff);


  u4RegValue = ( priv->AntennaTxPwDiff[2]<<8 |
      priv->AntennaTxPwDiff[1]<<4 |
      priv->AntennaTxPwDiff[0] );


  rtl8192_setBBreg(dev, rFPGA0_TxGainStage, (bXBTxAGC|bXCTxAGC|bXDTxAGC), u4RegValue);
 }
 priv->CurrentCckTxPwrIdx = powerlevel;
 priv->CurrentOfdm24GTxPwrIdx = powerlevelOFDM24G;

 switch(priv->rf_chip)
 {
  case 130:


  break;

  case 129:
   break;

  case 131:
   PHY_RF6052SetCckTxPower(dev, powerlevel);
   PHY_RF6052SetOFDMTxPower(dev, powerlevelOFDM24G);
   break;

  case 128:
   break;
  default:
   break;
 }

}
