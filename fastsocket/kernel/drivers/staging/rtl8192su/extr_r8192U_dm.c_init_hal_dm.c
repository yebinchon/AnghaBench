
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int undecorated_smoothed_pwdb; } ;
struct net_device {int dummy; } ;


 int dm_dig_init (struct net_device*) ;
 int dm_init_bandwidth_autoswitch (struct net_device*) ;
 int dm_init_ctstoself (struct net_device*) ;
 int dm_init_dynamic_txpower (struct net_device*) ;
 int dm_init_edca_turbo (struct net_device*) ;
 int dm_init_fsync (struct net_device*) ;
 int dm_init_rxpath_selection (struct net_device*) ;
 int dm_initialize_txpower_tracking (struct net_device*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int init_rate_adaptive (struct net_device*) ;

extern void
init_hal_dm(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);


 priv->undecorated_smoothed_pwdb = -1;


 dm_init_dynamic_txpower(dev);
 init_rate_adaptive(dev);
 dm_initialize_txpower_tracking(dev);
 dm_dig_init(dev);
 dm_init_edca_turbo(dev);
 dm_init_bandwidth_autoswitch(dev);
 dm_init_fsync(dev);
 dm_init_rxpath_selection(dev);
 dm_init_ctstoself(dev);

}
