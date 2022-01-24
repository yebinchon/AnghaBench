#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct r8192_priv {int /*<<< orphan*/  irq_prepare_beacon_tasklet; int /*<<< orphan*/  irq_tx_tasklet; int /*<<< orphan*/  irq_rx_tasklet; TYPE_1__* ieee80211; int /*<<< orphan*/  qos_activate; int /*<<< orphan*/  update_beacon_wq; int /*<<< orphan*/  rfpath_check_wq; int /*<<< orphan*/  txpower_tracking_wq; int /*<<< orphan*/  watch_dog_wq; int /*<<< orphan*/  reset_wq; void* priv_wq; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_sleep_wq; int /*<<< orphan*/  hw_wakeup_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,...) ; 
 void* dm_rf_pathcheck_workitemcallback ; 
 void* dm_txpower_trackingcallback ; 
 struct r8192_priv* FUNC3 (struct net_device*) ; 
 scalar_t__ rtl8192_hw_sleep_wq ; 
 scalar_t__ rtl8192_hw_wakeup_wq ; 
 scalar_t__ rtl8192_irq_rx_tasklet ; 
 scalar_t__ rtl8192_irq_tx_tasklet ; 
 scalar_t__ rtl8192_prepare_beacon ; 
 int /*<<< orphan*/  rtl8192_qos_activate ; 
 int /*<<< orphan*/  rtl8192_restart ; 
 void* rtl8192_update_beacon ; 
 void* rtl819x_watchdog_wqcallback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void (*) (unsigned long),unsigned long) ; 

__attribute__((used)) static void FUNC5(struct net_device* dev)
{
	struct r8192_priv *priv = FUNC3(dev);

#ifdef PF_SYNCTHREAD
	priv->priv_wq = create_workqueue(DRV_NAME,0);
#else
	priv->priv_wq = FUNC2(DRV_NAME);
#endif

//	INIT_WORK(&priv->reset_wq, (void(*)(void*)) rtl8192_restart);
	FUNC1(&priv->reset_wq,  rtl8192_restart);
//	INIT_DELAYED_WORK(&priv->watch_dog_wq, hal_dm_watchdog);
	FUNC0(&priv->watch_dog_wq, rtl819x_watchdog_wqcallback);
	FUNC0(&priv->txpower_tracking_wq,  dm_txpower_trackingcallback);
	FUNC0(&priv->rfpath_check_wq,  dm_rf_pathcheck_workitemcallback);
	FUNC0(&priv->update_beacon_wq, rtl8192_update_beacon);
	//INIT_WORK(&priv->SwChnlWorkItem,  rtl8192_SwChnl_WorkItem);
	//INIT_WORK(&priv->SetBWModeWorkItem,  rtl8192_SetBWModeWorkItem);
	FUNC1(&priv->qos_activate, rtl8192_qos_activate);
	FUNC0(&priv->ieee80211->hw_wakeup_wq,(void*) rtl8192_hw_wakeup_wq);
	FUNC0(&priv->ieee80211->hw_sleep_wq,(void*) rtl8192_hw_sleep_wq);

	FUNC4(&priv->irq_rx_tasklet,
	     (void(*)(unsigned long))rtl8192_irq_rx_tasklet,
	     (unsigned long)priv);
	FUNC4(&priv->irq_tx_tasklet,
	     (void(*)(unsigned long))rtl8192_irq_tx_tasklet,
	     (unsigned long)priv);
        FUNC4(&priv->irq_prepare_beacon_tasklet,
                (void(*)(unsigned long))rtl8192_prepare_beacon,
                (unsigned long)priv);
}