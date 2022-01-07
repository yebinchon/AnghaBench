
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int dm_CheckRxAggregation (struct net_device*) ;
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

void hal_dm_watchdog(struct net_device *dev)
{





 dm_check_rate_adaptive(dev);
 dm_dynamic_txpower(dev);
 dm_check_txrateandretrycount(dev);

 dm_check_txpower_tracking(dev);

 dm_ctrl_initgain_byrssi(dev);
 dm_check_edca_turbo(dev);
 dm_bandwidth_autoswitch(dev);

 dm_check_rfctrl_gpio(dev);
 dm_check_rx_path_selection(dev);
 dm_check_fsync(dev);


 dm_check_pbc_gpio(dev);
 dm_send_rssi_tofw(dev);
 dm_ctstoself(dev);




}
