
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int gpio_change_rf_wq; int priv_wq; } ;
struct net_device {int dummy; } ;


 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void dm_check_rfctrl_gpio(struct net_device * dev)
{
}
