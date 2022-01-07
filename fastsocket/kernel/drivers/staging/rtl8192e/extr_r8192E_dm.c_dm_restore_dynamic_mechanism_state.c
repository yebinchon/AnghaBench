
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ rate_adaptive_disabled; int last_ratr; } ;
struct r8192_priv {scalar_t__ rf_type; scalar_t__ btxpower_tracking; scalar_t__ btxpower_trackingInit; TYPE_1__* ieee80211; TYPE_2__ rate_adaptive; int up; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ mode; } ;


 int COMP_RATE ;
 int RATE_ALL_OFDM_2SS ;
 int RATR0 ;
 scalar_t__ RF_1T2R ;
 int RT_TRACE (int ,char*) ;
 int UFWP ;
 scalar_t__ WIRELESS_MODE_N_24G ;
 scalar_t__ WIRELESS_MODE_N_5G ;
 int dm_bb_initialgain_restore (struct net_device*) ;
 int dm_txpower_reset_recovery (struct net_device*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_dword (struct net_device*,int ,int ) ;

void dm_restore_dynamic_mechanism_state(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u32 reg_ratr = priv->rate_adaptive.last_ratr;

 if(!priv->up)
 {
  RT_TRACE(COMP_RATE, "<---- dm_restore_dynamic_mechanism_state(): driver is going to unload\n");
  return;
 }




 if(priv->rate_adaptive.rate_adaptive_disabled)
  return;

 if( !(priv->ieee80211->mode==WIRELESS_MODE_N_24G ||
   priv->ieee80211->mode==WIRELESS_MODE_N_5G))
   return;
 {

   u32 ratr_value;
   ratr_value = reg_ratr;
   if(priv->rf_type == RF_1T2R)
   {
    ratr_value &=~ (RATE_ALL_OFDM_2SS);

   }


   write_nic_dword(dev, RATR0, ratr_value);
   write_nic_byte(dev, UFWP, 1);
 }

 if(priv->btxpower_trackingInit && priv->btxpower_tracking){
  dm_txpower_reset_recovery(dev);
 }




 dm_bb_initialgain_restore(dev);

}
