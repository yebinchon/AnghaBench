
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r8192_priv {int CurrentChannelBW; int Record_CCK_20Mindex; int CCK_index; int Record_CCK_40Mindex; scalar_t__ bcck_in_ch14; TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int channel; } ;
struct TYPE_4__ {TYPE_1__ current_network; } ;


 int COMP_POWER_TRACKING ;
 scalar_t__ FALSE ;


 int RT_TRACE (int ,char*,int) ;
 scalar_t__ TRUE ;
 int dm_cck_txpower_adjust (struct net_device*,scalar_t__) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void CCK_Tx_Power_Track_BW_Switch_ThermalMeter(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 if(priv->ieee80211->current_network.channel == 14 && !priv->bcck_in_ch14)
  priv->bcck_in_ch14 = TRUE;
 else if(priv->ieee80211->current_network.channel != 14 && priv->bcck_in_ch14)
  priv->bcck_in_ch14 = FALSE;


 switch(priv->CurrentChannelBW)
 {

  case 129:
   if(priv->Record_CCK_20Mindex == 0)
    priv->Record_CCK_20Mindex = 6;
   priv->CCK_index = priv->Record_CCK_20Mindex;
   RT_TRACE(COMP_POWER_TRACKING, "20MHz, CCK_Tx_Power_Track_BW_Switch_ThermalMeter(),CCK_index = %d\n", priv->CCK_index);
  break;


  case 128:
   priv->CCK_index = priv->Record_CCK_40Mindex;
   RT_TRACE(COMP_POWER_TRACKING, "40MHz, CCK_Tx_Power_Track_BW_Switch_ThermalMeter(), CCK_index = %d\n", priv->CCK_index);
  break;
 }
 dm_cck_txpower_adjust(dev, priv->bcck_in_ch14);
}
