
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {int * dir_dev; } ;
struct net_device {char* name; } ;


 scalar_t__ ieee80211_priv (struct net_device*) ;
 int remove_proc_entry (char*,int *) ;
 int * rtl8180_proc ;

void rtl8180_proc_remove_one(struct net_device *dev)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 if (priv->dir_dev) {
  remove_proc_entry("stats-hw", priv->dir_dev);
  remove_proc_entry("stats-tx", priv->dir_dev);
  remove_proc_entry("stats-rx", priv->dir_dev);
  remove_proc_entry("registers", priv->dir_dev);
  remove_proc_entry(dev->name, rtl8180_proc);
  priv->dir_dev = ((void*)0);
 }
}
