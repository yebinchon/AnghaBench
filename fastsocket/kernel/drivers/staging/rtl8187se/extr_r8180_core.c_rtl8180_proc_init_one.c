
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {int dir_dev; } ;
struct proc_dir_entry {int dummy; } ;
struct net_device {int name; } ;


 int DMESGE (char*,int ) ;
 int S_IFREG ;
 int S_IRUGO ;
 struct proc_dir_entry* create_proc_read_entry (char*,int,int ,int ,struct net_device*) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int proc_get_registers ;
 int proc_get_stats_hw ;
 int proc_get_stats_rx ;
 int proc_get_stats_tx ;
 int rtl8180_proc ;

void rtl8180_proc_init_one(struct net_device *dev)
{
 struct proc_dir_entry *e;
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);

 priv->dir_dev = rtl8180_proc;
 if (!priv->dir_dev) {
  DMESGE("Unable to initialize /proc/net/r8180/%s\n",
        dev->name);
  return;
 }

 e = create_proc_read_entry("stats-hw", S_IFREG | S_IRUGO,
       priv->dir_dev, proc_get_stats_hw, dev);
 if (!e) {
  DMESGE("Unable to initialize "
        "/proc/net/r8180/%s/stats-hw\n",
        dev->name);
 }

 e = create_proc_read_entry("stats-rx", S_IFREG | S_IRUGO,
       priv->dir_dev, proc_get_stats_rx, dev);
 if (!e) {
  DMESGE("Unable to initialize "
        "/proc/net/r8180/%s/stats-rx\n",
        dev->name);
 }


 e = create_proc_read_entry("stats-tx", S_IFREG | S_IRUGO,
       priv->dir_dev, proc_get_stats_tx, dev);
 if (!e) {
  DMESGE("Unable to initialize "
        "/proc/net/r8180/%s/stats-tx\n",
        dev->name);
 }

 e = create_proc_read_entry("registers", S_IFREG | S_IRUGO,
       priv->dir_dev, proc_get_registers, dev);
 if (!e) {
  DMESGE("Unable to initialize "
        "/proc/net/r8180/%s/registers\n",
        dev->name);
 }
}
