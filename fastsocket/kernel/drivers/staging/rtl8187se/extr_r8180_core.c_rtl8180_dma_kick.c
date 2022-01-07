
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {int dma_poll_mask; } ;
struct net_device {int dummy; } ;


 int EPROM_CMD_CONFIG ;
 int EPROM_CMD_NORMAL ;
 int TX_DMA_POLLING ;
 int force_pci_posting (struct net_device*) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int rtl8180_set_mode (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;

void rtl8180_dma_kick(struct net_device *dev, int priority)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);

 rtl8180_set_mode(dev,EPROM_CMD_CONFIG);
 write_nic_byte(dev, TX_DMA_POLLING,
   (1 << (priority + 1)) | priv->dma_poll_mask);
 rtl8180_set_mode(dev,EPROM_CMD_NORMAL);

 force_pci_posting(dev);
}
