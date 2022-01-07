
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {int irq_prepare_beacon_tasklet; int irq_tx_tasklet; int irq_rx_tasklet; TYPE_1__* ieee80211; int qos_activate; int update_beacon_wq; int rfpath_check_wq; int txpower_tracking_wq; int watch_dog_wq; int reset_wq; void* priv_wq; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int hw_sleep_wq; int hw_wakeup_wq; } ;


 int DRV_NAME ;
 int INIT_DELAYED_WORK (int *,void*) ;
 int INIT_WORK (int *,int ) ;
 void* create_workqueue (int ,...) ;
 void* dm_rf_pathcheck_workitemcallback ;
 void* dm_txpower_trackingcallback ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 scalar_t__ rtl8192_hw_sleep_wq ;
 scalar_t__ rtl8192_hw_wakeup_wq ;
 scalar_t__ rtl8192_irq_rx_tasklet ;
 scalar_t__ rtl8192_irq_tx_tasklet ;
 scalar_t__ rtl8192_prepare_beacon ;
 int rtl8192_qos_activate ;
 int rtl8192_restart ;
 void* rtl8192_update_beacon ;
 void* rtl819x_watchdog_wqcallback ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;

__attribute__((used)) static void rtl8192_init_priv_task(struct net_device* dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);




 priv->priv_wq = create_workqueue(DRV_NAME);



 INIT_WORK(&priv->reset_wq, rtl8192_restart);

 INIT_DELAYED_WORK(&priv->watch_dog_wq, rtl819x_watchdog_wqcallback);
 INIT_DELAYED_WORK(&priv->txpower_tracking_wq, dm_txpower_trackingcallback);
 INIT_DELAYED_WORK(&priv->rfpath_check_wq, dm_rf_pathcheck_workitemcallback);
 INIT_DELAYED_WORK(&priv->update_beacon_wq, rtl8192_update_beacon);


 INIT_WORK(&priv->qos_activate, rtl8192_qos_activate);
 INIT_DELAYED_WORK(&priv->ieee80211->hw_wakeup_wq,(void*) rtl8192_hw_wakeup_wq);
 INIT_DELAYED_WORK(&priv->ieee80211->hw_sleep_wq,(void*) rtl8192_hw_sleep_wq);

 tasklet_init(&priv->irq_rx_tasklet,
      (void(*)(unsigned long))rtl8192_irq_rx_tasklet,
      (unsigned long)priv);
 tasklet_init(&priv->irq_tx_tasklet,
      (void(*)(unsigned long))rtl8192_irq_tx_tasklet,
      (unsigned long)priv);
        tasklet_init(&priv->irq_prepare_beacon_tasklet,
                (void(*)(unsigned long))rtl8192_prepare_beacon,
                (unsigned long)priv);
}
