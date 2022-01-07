
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int * dir_dev; } ;
struct net_device {int name; } ;


 scalar_t__ ieee80211_priv (struct net_device*) ;
 int printk (char*,int ) ;
 int remove_proc_entry (char*,int *) ;
 int * rtl8192_proc ;

__attribute__((used)) static void rtl8192_proc_remove_one(struct net_device *dev)
{
 struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);

 printk("dev name=======> %s\n",dev->name);

 if (priv->dir_dev) {

  remove_proc_entry("stats-tx", priv->dir_dev);
  remove_proc_entry("stats-rx", priv->dir_dev);

  remove_proc_entry("stats-ap", priv->dir_dev);
  remove_proc_entry("registers", priv->dir_dev);



  remove_proc_entry("wlan0", rtl8192_proc);
  priv->dir_dev = ((void*)0);
 }
}
