
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int dir_dev; } ;
struct proc_dir_entry {int dummy; } ;
struct net_device {int name; } ;


 int COMP_ERR ;
 int RT_TRACE (int ,char*,int ) ;
 int S_IFDIR ;
 int S_IFREG ;
 int S_IRUGO ;
 int S_IXUGO ;
 int create_proc_entry (int ,int,int ) ;
 struct proc_dir_entry* create_proc_read_entry (char*,int,int ,int ,struct net_device*) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int proc_get_registers ;
 int proc_get_stats_ap ;
 int proc_get_stats_rx ;
 int proc_get_stats_tx ;
 int rtl8192_proc ;

__attribute__((used)) static void rtl8192_proc_init_one(struct net_device *dev)
{
 struct proc_dir_entry *e;
 struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 priv->dir_dev = create_proc_entry(dev->name,
       S_IFDIR | S_IRUGO | S_IXUGO,
       rtl8192_proc);
 if (!priv->dir_dev) {
  RT_TRACE(COMP_ERR, "Unable to initialize /proc/net/rtl8192/%s\n",
        dev->name);
  return;
 }
 e = create_proc_read_entry("stats-rx", S_IFREG | S_IRUGO,
       priv->dir_dev, proc_get_stats_rx, dev);

 if (!e) {
  RT_TRACE(COMP_ERR,"Unable to initialize "
        "/proc/net/rtl8192/%s/stats-rx\n",
        dev->name);
 }


 e = create_proc_read_entry("stats-tx", S_IFREG | S_IRUGO,
       priv->dir_dev, proc_get_stats_tx, dev);

 if (!e) {
  RT_TRACE(COMP_ERR, "Unable to initialize "
        "/proc/net/rtl8192/%s/stats-tx\n",
        dev->name);
 }

 e = create_proc_read_entry("stats-ap", S_IFREG | S_IRUGO,
       priv->dir_dev, proc_get_stats_ap, dev);

 if (!e) {
  RT_TRACE(COMP_ERR, "Unable to initialize "
        "/proc/net/rtl8192/%s/stats-ap\n",
        dev->name);
 }

 e = create_proc_read_entry("registers", S_IFREG | S_IRUGO,
       priv->dir_dev, proc_get_registers, dev);
 if (!e) {
  RT_TRACE(COMP_ERR, "Unable to initialize "
        "/proc/net/rtl8192/%s/registers\n",
        dev->name);
 }
}
