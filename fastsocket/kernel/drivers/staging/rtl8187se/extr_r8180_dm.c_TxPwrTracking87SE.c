
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct r8180_priv {int ThermalMeter; char* chtxpwr; char* chtxpwr_ofdm; TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int channel; } ;
struct TYPE_4__ {TYPE_1__ current_network; } ;


 int EN_LPF_CAL ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int read_nic_byte (struct net_device*,int ) ;
 int rtl8225z2_SetTXPowerLevel (struct net_device*,int ) ;

void
TxPwrTracking87SE(
 struct net_device *dev
)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 u8 tmpu1Byte, CurrentThermal, Idx;
 char CckTxPwrIdx, OfdmTxPwrIdx;


 tmpu1Byte = read_nic_byte(dev, EN_LPF_CAL);
 CurrentThermal = (tmpu1Byte & 0xf0)>>4;
 CurrentThermal = (CurrentThermal>0x0c)? 0x0c:CurrentThermal;



 if( CurrentThermal != priv->ThermalMeter)
 {



  for(Idx = 1; Idx<15; Idx++)
  {
   CckTxPwrIdx = priv->chtxpwr[Idx];
   OfdmTxPwrIdx = priv->chtxpwr_ofdm[Idx];

   if( CurrentThermal > priv->ThermalMeter )
   {
    CckTxPwrIdx += (CurrentThermal - priv->ThermalMeter)*2;
    OfdmTxPwrIdx += (CurrentThermal - priv->ThermalMeter)*2;

    if(CckTxPwrIdx >35)
     CckTxPwrIdx = 35;
    if(OfdmTxPwrIdx >35)
     OfdmTxPwrIdx = 35;
   }
   else
   {
    CckTxPwrIdx -= (priv->ThermalMeter - CurrentThermal)*2;
    OfdmTxPwrIdx -= (priv->ThermalMeter - CurrentThermal)*2;

    if(CckTxPwrIdx <0)
     CckTxPwrIdx = 0;
    if(OfdmTxPwrIdx <0)
     OfdmTxPwrIdx = 0;
   }


   priv->chtxpwr[Idx] = CckTxPwrIdx;
   priv->chtxpwr_ofdm[Idx] = OfdmTxPwrIdx;
  }


  rtl8225z2_SetTXPowerLevel(dev, priv->ieee80211->current_network.channel);
 }
 priv->ThermalMeter = CurrentThermal;
}
