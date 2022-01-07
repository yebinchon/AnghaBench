
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct r8180_priv {int chan; scalar_t__ card_8185; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_network {int beacon_interval; scalar_t__ bssid; } ;
struct TYPE_2__ {struct ieee80211_network current_network; } ;


 scalar_t__ BEACON_INTERVAL ;
 int BEACON_INTERVAL_MASK ;
 scalar_t__ BSSID ;
 int EPROM_CMD_CONFIG ;
 int EPROM_CMD_NORMAL ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int read_nic_dword (struct net_device*,scalar_t__) ;
 int rtl8180_set_chan (struct net_device*,int ) ;
 int rtl8180_set_mode (struct net_device*,int ) ;
 int rtl8180_update_msr (struct net_device*) ;
 int write_nic_dword (struct net_device*,scalar_t__,int ) ;
 int write_nic_word (struct net_device*,scalar_t__,int ) ;

void rtl8180_link_change(struct net_device *dev)
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 u16 beacon_interval;
 struct ieee80211_network *net = &priv->ieee80211->current_network;

 rtl8180_update_msr(dev);

 rtl8180_set_mode(dev,EPROM_CMD_CONFIG);

 write_nic_dword(dev,BSSID,((u32*)net->bssid)[0]);
 write_nic_word(dev,BSSID+4,((u16*)net->bssid)[2]);

 beacon_interval = read_nic_dword(dev,BEACON_INTERVAL);
 beacon_interval &= ~ BEACON_INTERVAL_MASK;
 beacon_interval |= net->beacon_interval;
 write_nic_dword(dev, BEACON_INTERVAL, beacon_interval);

 rtl8180_set_mode(dev, EPROM_CMD_NORMAL);

 if(priv->card_8185)
  rtl8180_set_chan(dev, priv->chan);
}
