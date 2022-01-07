
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8180_priv {TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; scalar_t__ iw_mode; int current_network; } ;


 int CW_VAL ;
 int DIFS ;
 int EIFS ;
 scalar_t__ IEEE80211_LINKED ;
 scalar_t__ IW_MODE_MONITOR ;
 int SIFS ;
 int SLOT ;
 int force_pci_posting (struct net_device*) ;
 scalar_t__ ieee80211_is_54g (int ) ;
 scalar_t__ ieee80211_is_shortslot (int ) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int mdelay (int) ;
 int rtl8225_SetTXPowerLevel (struct net_device*,short) ;
 int * rtl8225_chan ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_rtl8225 (struct net_device*,int,int ) ;

__attribute__((used)) static void rtl8225_rf_set_chan(struct net_device *dev, short ch)
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 short gset = (priv->ieee80211->state == IEEE80211_LINKED &&
  ieee80211_is_54g(priv->ieee80211->current_network)) ||
  priv->ieee80211->iw_mode == IW_MODE_MONITOR;

 rtl8225_SetTXPowerLevel(dev, ch);

 write_rtl8225(dev, 0x7, rtl8225_chan[ch]);

 force_pci_posting(dev);
 mdelay(10);

 if (gset) {
  write_nic_byte(dev, SIFS, 0x22);
  write_nic_byte(dev, DIFS, 0x14);
 } else {
  write_nic_byte(dev, SIFS, 0x44);
  write_nic_byte(dev, DIFS, 0x24);
 }

 if (priv->ieee80211->state == IEEE80211_LINKED &&
     ieee80211_is_shortslot(priv->ieee80211->current_network))
  write_nic_byte(dev, SLOT, 0x9);
 else
  write_nic_byte(dev, SLOT, 0x14);

 if (gset) {
  write_nic_byte(dev, EIFS, 81);
  write_nic_byte(dev, CW_VAL, 0x73);
 } else {
  write_nic_byte(dev, EIFS, 81);
  write_nic_byte(dev, CW_VAL, 0xa5);
 }
}
