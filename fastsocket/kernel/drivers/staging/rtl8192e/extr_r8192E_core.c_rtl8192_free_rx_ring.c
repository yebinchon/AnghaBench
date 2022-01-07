
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct r8192_priv {int rxringcount; int * rx_ring; int rx_ring_dma; int pdev; int rxbuffersize; struct sk_buff** rx_buf; } ;
struct net_device {int dummy; } ;
typedef int dma_addr_t ;


 int PCI_DMA_FROMDEVICE ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 int pci_free_consistent (int ,int,int *,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void rtl8192_free_rx_ring(struct net_device *dev)
{
    struct r8192_priv *priv = ieee80211_priv(dev);
    int i;

    for (i = 0; i < priv->rxringcount; i++) {
        struct sk_buff *skb = priv->rx_buf[i];
        if (!skb)
            continue;

        pci_unmap_single(priv->pdev,
                *((dma_addr_t *)skb->cb),
                priv->rxbuffersize, PCI_DMA_FROMDEVICE);
        kfree_skb(skb);
    }

    pci_free_consistent(priv->pdev, sizeof(*priv->rx_ring) * priv->rxringcount,
            priv->rx_ring, priv->rx_ring_dma);
    priv->rx_ring = ((void*)0);
}
