
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {scalar_t__ ChannelPlan; } ;
struct net_device {int dummy; } ;


 int COMP_INIT ;
 scalar_t__ COUNTRY_CODE_GLOBAL_DOMAIN ;
 int RT_TRACE (int ,char*,scalar_t__) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int printk (char*) ;
 int rtl819x_set_channel_map (scalar_t__,struct r8192_priv*) ;

short rtl8192_get_channel_map(struct net_device * dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 if(priv->ChannelPlan > COUNTRY_CODE_GLOBAL_DOMAIN){
  printk("rtl8180_init:Error channel plan! Set to default.\n");
  priv->ChannelPlan= 0;
 }
 RT_TRACE(COMP_INIT, "Channel plan is %d\n",priv->ChannelPlan);

 rtl819x_set_channel_map(priv->ChannelPlan, priv);
 return 0;
}
