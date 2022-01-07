
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct r8192_priv {TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_network {int beacon_interval; } ;
struct TYPE_2__ {struct ieee80211_network current_network; } ;


 int ATIMWND ;
 int BCN_DMATIME ;
 int BCN_DRV_EARLY_INT ;
 int BCN_ERR_THRESH ;
 int BCN_INTERVAL ;
 int BCN_TCFG ;
 int BCN_TCFG_CW_SHIFT ;
 int BCN_TCFG_IFS ;
 int DMESG (char*) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int rtl8192_irq_disable (struct net_device*) ;
 int rtl8192_irq_enable (struct net_device*) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_word (struct net_device*,int ,int) ;

void rtl8192_start_beacon(struct net_device *dev)
{
 struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 struct ieee80211_network *net = &priv->ieee80211->current_network;
 u16 BcnTimeCfg = 0;
        u16 BcnCW = 6;
        u16 BcnIFS = 0xf;

 DMESG("Enabling beacon TX");

 rtl8192_irq_disable(dev);



 write_nic_word(dev, ATIMWND, 2);


 write_nic_word(dev, BCN_INTERVAL, net->beacon_interval);






 write_nic_word(dev, BCN_DRV_EARLY_INT, 10);





 write_nic_word(dev, BCN_DMATIME, 256);





 write_nic_byte(dev, BCN_ERR_THRESH, 100);


 BcnTimeCfg |= BcnCW<<BCN_TCFG_CW_SHIFT;
 BcnTimeCfg |= BcnIFS<<BCN_TCFG_IFS;
 write_nic_word(dev, BCN_TCFG, BcnTimeCfg);



 rtl8192_irq_enable(dev);
}
