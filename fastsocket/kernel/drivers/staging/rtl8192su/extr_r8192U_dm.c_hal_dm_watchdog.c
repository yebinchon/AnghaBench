
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r8192_priv {scalar_t__ bInHctTest; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ mActingAsAp; } ;
struct TYPE_4__ {TYPE_1__ MgntInfo; } ;


 int AP_dm_CheckRateAdaptive (struct net_device*) ;
 TYPE_2__* Adapter ;
 int dm_CheckAggrPolicy (struct net_device*) ;
 int dm_CheckProtection (struct net_device*) ;
 int dm_bandwidth_autoswitch (struct net_device*) ;
 int dm_check_edca_turbo (struct net_device*) ;
 int dm_check_fsync (struct net_device*) ;
 int dm_check_pbc_gpio (struct net_device*) ;
 int dm_check_rate_adaptive (struct net_device*) ;
 int dm_check_rfctrl_gpio (struct net_device*) ;
 int dm_check_rx_path_selection (struct net_device*) ;
 int dm_check_txpower_tracking (struct net_device*) ;
 int dm_check_txrateandretrycount (struct net_device*) ;
 int dm_ctrl_initgain_byrssi (struct net_device*) ;
 int dm_ctstoself (struct net_device*) ;
 int dm_dynamic_txpower (struct net_device*) ;
 int dm_send_rssi_tofw (struct net_device*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

extern void hal_dm_watchdog(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 if(priv->bInHctTest)
  return;


 dm_check_rfctrl_gpio(dev);


 dm_check_pbc_gpio(dev);
 dm_check_txrateandretrycount(dev);
 dm_check_edca_turbo(dev);

 dm_CheckAggrPolicy(dev);
 return;
 {
  dm_check_rate_adaptive(dev);
 }
 dm_dynamic_txpower(dev);

 dm_check_txpower_tracking(dev);
 dm_ctrl_initgain_byrssi(dev);

 dm_bandwidth_autoswitch(dev);

 dm_check_rx_path_selection(dev);
 dm_check_fsync(dev);

 dm_send_rssi_tofw(dev);

 dm_ctstoself(dev);

}
