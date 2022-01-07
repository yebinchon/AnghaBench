
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int TxBuffAddr; } ;
typedef TYPE_1__ tx_desc_819x_pci ;
struct sk_buff {int len; } ;
struct rtl8192_tx_ring {size_t idx; int entries; int queue; TYPE_1__* desc; } ;
struct r8192_priv {int rxringcount; int pdev; struct rtl8192_tx_ring* tx_ring; scalar_t__ rx_idx; TYPE_2__* rx_ring; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int OWN; } ;
typedef TYPE_2__ rx_desc_819x_pci ;


 int MAX_TX_QUEUE_COUNT ;
 int PCI_DMA_TODEVICE ;
 struct sk_buff* __skb_dequeue (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 int le32_to_cpu (int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 scalar_t__ skb_queue_len (int *) ;

__attribute__((used)) static void rtl8192_pci_resetdescring(struct net_device *dev)
{
    struct r8192_priv *priv = ieee80211_priv(dev);
    int i;


    if(priv->rx_ring) {
        rx_desc_819x_pci *entry = ((void*)0);
        for (i = 0; i < priv->rxringcount; i++) {
            entry = &priv->rx_ring[i];
            entry->OWN = 1;
        }
        priv->rx_idx = 0;
    }



    for (i = 0; i < MAX_TX_QUEUE_COUNT; i++) {
        if (priv->tx_ring[i].desc) {
            struct rtl8192_tx_ring *ring = &priv->tx_ring[i];

            while (skb_queue_len(&ring->queue)) {
                tx_desc_819x_pci *entry = &ring->desc[ring->idx];
                struct sk_buff *skb = __skb_dequeue(&ring->queue);

                pci_unmap_single(priv->pdev, le32_to_cpu(entry->TxBuffAddr),
                        skb->len, PCI_DMA_TODEVICE);
                kfree_skb(skb);
                ring->idx = (ring->idx + 1) % ring->entries;
            }
            ring->idx = 0;
        }
    }
}
