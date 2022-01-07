
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct r8180_priv {int* rxring; int rxringcount; int rxbuffersize; int* rxringtail; int rx_skb_complete; struct buffer* rxbufferhead; struct buffer* rxbuffer; } ;
struct net_device {int dummy; } ;
struct buffer {int dma; struct buffer* next; } ;


 scalar_t__ ieee80211_priv (struct net_device*) ;
 int set_nic_rxring (struct net_device*) ;

void fix_rx_fifo(struct net_device *dev)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 u32 *tmp;
 struct buffer *rxbuf;
 u8 rx_desc_size;

 rx_desc_size = 8;

 for (tmp=priv->rxring, rxbuf=priv->rxbufferhead;
      (tmp < (priv->rxring)+(priv->rxringcount)*rx_desc_size);
      tmp+=rx_desc_size,rxbuf=rxbuf->next){
  *(tmp+2) = rxbuf->dma;
  *tmp=*tmp &~ 0xfff;
  *tmp=*tmp | priv->rxbuffersize;
  *tmp |= (1<<31);
 }

 priv->rxringtail=priv->rxring;
 priv->rxbuffer=priv->rxbufferhead;
 priv->rx_skb_complete=1;
 set_nic_rxring(dev);
}
