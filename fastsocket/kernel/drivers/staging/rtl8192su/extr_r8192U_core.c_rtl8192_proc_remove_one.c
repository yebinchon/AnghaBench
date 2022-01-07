
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int * dir_dev; } ;
struct net_device {int dummy; } ;


 scalar_t__ ieee80211_priv (struct net_device*) ;
 int remove_proc_entry (char*,int *) ;
 int * rtl8192_proc ;

void rtl8192_proc_remove_one(struct net_device *dev)
{
 struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);


 if (priv->dir_dev) {

  remove_proc_entry("stats-tx", priv->dir_dev);
  remove_proc_entry("stats-rx", priv->dir_dev);

  remove_proc_entry("stats-ap", priv->dir_dev);
  remove_proc_entry("registers", priv->dir_dev);
  remove_proc_entry("registers-1", priv->dir_dev);
  remove_proc_entry("registers-2", priv->dir_dev);
  remove_proc_entry("registers-8", priv->dir_dev);
  remove_proc_entry("registers-9", priv->dir_dev);
  remove_proc_entry("registers-a", priv->dir_dev);
  remove_proc_entry("registers-b", priv->dir_dev);
  remove_proc_entry("registers-c", priv->dir_dev);
  remove_proc_entry("registers-d", priv->dir_dev);
  remove_proc_entry("registers-e", priv->dir_dev);



  remove_proc_entry("wlan0", rtl8192_proc);
  priv->dir_dev = ((void*)0);
 }
}
