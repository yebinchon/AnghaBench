
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct r8192_priv {scalar_t__ ChannelPlan; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__* channel_map; } ;


 int COMP_INIT ;
 scalar_t__ COUNTRY_CODE_GLOBAL_DOMAIN ;
 int DMESG (char*) ;
 int RT_TRACE (int ,char*,scalar_t__) ;
 int channels ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int printk (char*) ;
 int rtl819x_set_channel_map (scalar_t__,struct r8192_priv*) ;

__attribute__((used)) static short rtl8192_get_channel_map(struct net_device * dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 int ch,i;

 if(!channels){
  DMESG("No channels, aborting");
  return -1;
 }
 ch=channels;
 priv->ChannelPlan= 0;

 for (i=1; i<=14; i++) {
  (priv->ieee80211->channel_map)[i] = (u8)(ch & 0x01);
  ch >>= 1;
 }

 return 0;
}
