
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct r8192_priv {int EEPROMVersion; int LegacyHTTxPowerDiff; int** TxPwrLegacyHtDiff; int TxPwrbandEdgeFlag; int** TxPwrbandEdgeLegacyOfdm; scalar_t__ CurrentChannelBW; int** TxPwrHt20Diff; int** TxPwrbandEdgeHt40; int** TxPwrbandEdgeHt20; int* MCSTxPowerLevelOriginalOffset; scalar_t__ rf_type; int* AntennaTxPwDiff; scalar_t__ bDynamicTxHighPower; scalar_t__ bIgnoreDiffRateTxPowerOffset; TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int channel; } ;
struct TYPE_4__ {TYPE_1__ current_network; } ;


 scalar_t__ HT_CHANNEL_WIDTH_20 ;
 scalar_t__ HT_CHANNEL_WIDTH_20_40 ;
 int RF6052_MAX_TX_PWR ;
 size_t RF90_PATH_A ;
 scalar_t__ RF_2T2R ;
 scalar_t__ TRUE ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rtl8192_setBBreg (struct net_device*,int,int,int) ;

extern void PHY_RF6052SetOFDMTxPower(struct net_device* dev, u8 powerlevel)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u32 writeVal, powerBase0, powerBase1;
 u8 index = 0;
 u16 RegOffset[6] = {0xe00, 0xe04, 0xe10, 0xe14, 0xe18, 0xe1c};

 u8 Channel = priv->ieee80211->current_network.channel;
 u8 rfa_pwr[4];
 u8 rfa_lower_bound = 0, rfa_upper_bound = 0 ;
 u8 i;
 u8 rf_pwr_diff = 0;
 u8 Legacy_pwrdiff=0, HT20_pwrdiff=0, BandEdge_Pwrdiff=0;
 u8 ofdm_bandedge_chnl_low=0, ofdm_bandedge_chnl_high=0;



 if (priv->EEPROMVersion != 2)
 powerBase0 = powerlevel + (priv->LegacyHTTxPowerDiff & 0xf);
 else if (priv->EEPROMVersion == 2)
 {



  Legacy_pwrdiff = priv->TxPwrLegacyHtDiff[RF90_PATH_A][Channel-1];


  powerBase0 = powerlevel + Legacy_pwrdiff;



  if (priv->TxPwrbandEdgeFlag == 1 )
  {
   ofdm_bandedge_chnl_low = 1;
   ofdm_bandedge_chnl_high = 11;
   BandEdge_Pwrdiff = 0;
   if (Channel <= ofdm_bandedge_chnl_low)
    BandEdge_Pwrdiff = priv->TxPwrbandEdgeLegacyOfdm[RF90_PATH_A][0];
   else if (Channel >= ofdm_bandedge_chnl_high)
   {
    BandEdge_Pwrdiff = priv->TxPwrbandEdgeLegacyOfdm[RF90_PATH_A][1];
   }
   powerBase0 -= BandEdge_Pwrdiff;
   if (Channel <= ofdm_bandedge_chnl_low || Channel >= ofdm_bandedge_chnl_high)
   {


   }
  }

 }
 powerBase0 = (powerBase0<<24) | (powerBase0<<16) |(powerBase0<<8) |powerBase0;


 if(priv->EEPROMVersion == 2)
 {



  if (priv->CurrentChannelBW == HT_CHANNEL_WIDTH_20)
  {

   HT20_pwrdiff = priv->TxPwrHt20Diff[RF90_PATH_A][Channel-1];


   if (HT20_pwrdiff < 8)
    powerlevel += HT20_pwrdiff;
   else
    powerlevel -= (16-HT20_pwrdiff);



  }


  if (priv->TxPwrbandEdgeFlag == 1 )
  {
   BandEdge_Pwrdiff = 0;
   if (priv->CurrentChannelBW == HT_CHANNEL_WIDTH_20_40)
   {
    if (Channel <= 3)
     BandEdge_Pwrdiff = priv->TxPwrbandEdgeHt40[RF90_PATH_A][0];
    else if (Channel >= 9)
     BandEdge_Pwrdiff = priv->TxPwrbandEdgeHt40[RF90_PATH_A][1];
    if (Channel <= 3 || Channel >= 9)
    {


    }
   }
   else if (priv->CurrentChannelBW == HT_CHANNEL_WIDTH_20)
   {
    if (Channel <= 1)
     BandEdge_Pwrdiff = priv->TxPwrbandEdgeHt20[RF90_PATH_A][0];
    else if (Channel >= 11)
     BandEdge_Pwrdiff = priv->TxPwrbandEdgeHt20[RF90_PATH_A][1];
    if (Channel <= 1 || Channel >= 11)
    {


    }
   }
   powerlevel -= BandEdge_Pwrdiff;

  }
 }
 powerBase1 = powerlevel;
 powerBase1 = (powerBase1<<24) | (powerBase1<<16) |(powerBase1<<8) |powerBase1;



 for(index=0; index<6; index++)
 {




  if(priv->bIgnoreDiffRateTxPowerOffset)
   writeVal = ((index<2)?powerBase0:powerBase1);
  else
  writeVal = priv->MCSTxPowerLevelOriginalOffset[index] + ((index<2)?powerBase0:powerBase1);
  if (priv->rf_type == RF_2T2R)
  {
   rf_pwr_diff = priv->AntennaTxPwDiff[0];


   if (rf_pwr_diff >= 8)
   {
    rfa_lower_bound = 0x10-rf_pwr_diff;

   }
   else if (rf_pwr_diff >= 0)
   {
    rfa_upper_bound = RF6052_MAX_TX_PWR-rf_pwr_diff;

   }
  }

  for (i= 0; i <4; i++)
  {
   rfa_pwr[i] = (u8)((writeVal & (0x7f<<(i*8)))>>(i*8));
   if (rfa_pwr[i] > RF6052_MAX_TX_PWR)
    rfa_pwr[i] = RF6052_MAX_TX_PWR;






   if (priv->rf_type == RF_2T2R)
   {
    if (rf_pwr_diff >= 8)
    {
     if (rfa_pwr[i] <rfa_lower_bound)
     {

      rfa_pwr[i] = rfa_lower_bound;
     }
    }
    else if (rf_pwr_diff >= 1)
    {
     if (rfa_pwr[i] > rfa_upper_bound)
     {

      rfa_pwr[i] = rfa_upper_bound;
     }
    }

   }

  }





  if(priv->bDynamicTxHighPower == TRUE)
  {

   if(index > 1)
   {
    writeVal = 0x03030303;
   }

   else
   {
    writeVal = (rfa_pwr[3]<<24) | (rfa_pwr[2]<<16) |(rfa_pwr[1]<<8) |rfa_pwr[0];
   }

  }
  else
  {
   writeVal = (rfa_pwr[3]<<24) | (rfa_pwr[2]<<16) |(rfa_pwr[1]<<8) |rfa_pwr[0];

  }





  rtl8192_setBBreg(dev, RegOffset[index], 0x7f7f7f7f, writeVal);
 }

}
