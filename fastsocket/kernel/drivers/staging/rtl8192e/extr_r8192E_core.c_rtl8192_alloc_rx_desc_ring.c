
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int tail; scalar_t__ cb; } ;
struct r8192_priv {int rxringcount; int rxbuffersize; int pdev; struct sk_buff** rx_buf; TYPE_1__* rx_ring; scalar_t__ rx_idx; int rx_ring_dma; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int OWN; int EOR; int Length; int BufferAddress; } ;
typedef TYPE_1__ rx_desc_819x_pci ;
typedef int dma_addr_t ;


 int COMP_ERR ;
 short ENOMEM ;
 int PCI_DMA_FROMDEVICE ;
 int RT_TRACE (int ,char*) ;
 int cpu_to_le32 (int ) ;
 struct sk_buff* dev_alloc_skb (int ) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* pci_alloc_consistent (int ,int,int *) ;
 int pci_map_single (int ,int ,int ,int ) ;

__attribute__((used)) static short rtl8192_alloc_rx_desc_ring(struct net_device *dev)
{
    struct r8192_priv *priv = ieee80211_priv(dev);
    rx_desc_819x_pci *entry = ((void*)0);
    int i;

    priv->rx_ring = pci_alloc_consistent(priv->pdev,
            sizeof(*priv->rx_ring) * priv->rxringcount, &priv->rx_ring_dma);

    if (!priv->rx_ring || (unsigned long)priv->rx_ring & 0xFF) {
        RT_TRACE(COMP_ERR,"Cannot allocate RX ring\n");
        return -ENOMEM;
    }

    memset(priv->rx_ring, 0, sizeof(*priv->rx_ring) * priv->rxringcount);
    priv->rx_idx = 0;

    for (i = 0; i < priv->rxringcount; i++) {
        struct sk_buff *skb = dev_alloc_skb(priv->rxbuffersize);
        dma_addr_t *mapping;
        entry = &priv->rx_ring[i];
        if (!skb)
            return 0;
        priv->rx_buf[i] = skb;
        mapping = (dma_addr_t *)skb->cb;
        *mapping = pci_map_single(priv->pdev, skb->tail,
                priv->rxbuffersize, PCI_DMA_FROMDEVICE);

        entry->BufferAddress = cpu_to_le32(*mapping);

        entry->Length = priv->rxbuffersize;
        entry->OWN = 1;
    }

    entry->EOR = 1;
    return 0;
}
