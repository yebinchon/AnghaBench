
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r8192_priv {TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int bforced_tx20Mhz; int bautoswitch_enable; int threshold_40Mhzto20Mhz; int threshold_20Mhzto40Mhz; } ;
struct TYPE_3__ {TYPE_2__ bandwidth_auto_switch; } ;


 int BW_AUTO_SWITCH_HIGH_LOW ;
 int BW_AUTO_SWITCH_LOW_HIGH ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void dm_init_bandwidth_autoswitch(struct net_device * dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 priv->ieee80211->bandwidth_auto_switch.threshold_20Mhzto40Mhz = BW_AUTO_SWITCH_LOW_HIGH;
 priv->ieee80211->bandwidth_auto_switch.threshold_40Mhzto20Mhz = BW_AUTO_SWITCH_HIGH_LOW;
 priv->ieee80211->bandwidth_auto_switch.bforced_tx20Mhz = 0;
 priv->ieee80211->bandwidth_auto_switch.bautoswitch_enable = 0;

}
