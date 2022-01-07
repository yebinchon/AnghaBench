
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {int dma_poll_stop_mask; } ;
struct net_device {int dummy; } ;


 int EPROM_CMD_CONFIG ;
 int EPROM_CMD_NORMAL ;
 int TPPOLLSTOP_AC_VIQ ;
 int TPPollStop ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int rtl8180_set_mode (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int ) ;

void rtl8180_data_hard_stop(struct net_device *dev)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);

 rtl8180_set_mode(dev,EPROM_CMD_CONFIG);
 priv->dma_poll_stop_mask |= TPPOLLSTOP_AC_VIQ;
 write_nic_byte(dev,TPPollStop, priv->dma_poll_stop_mask);
 rtl8180_set_mode(dev,EPROM_CMD_NORMAL);
}
