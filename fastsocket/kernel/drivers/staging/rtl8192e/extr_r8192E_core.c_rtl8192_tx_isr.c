
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int TxBuffAddr; scalar_t__ OWN; } ;
typedef TYPE_1__ tx_desc_819x_pci ;
struct sk_buff {int len; } ;
struct rtl8192_tx_ring {size_t idx; int entries; int queue; TYPE_1__* desc; } ;
struct r8192_priv {int irq_tx_tasklet; TYPE_2__* ieee80211; int pdev; struct rtl8192_tx_ring* tx_ring; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ ack_tx_to_ieee; } ;


 int BEACON_QUEUE ;
 int MGNT_QUEUE ;
 int PCI_DMA_TODEVICE ;
 struct sk_buff* __skb_dequeue (int *) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int ieee80211_ps_tx_ack (TYPE_2__*,int) ;
 int kfree_skb (struct sk_buff*) ;
 int le32_to_cpu (int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 scalar_t__ rtl8192_is_tx_queue_empty (struct net_device*) ;
 scalar_t__ skb_queue_len (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void rtl8192_tx_isr(struct net_device *dev, int prio)
{
    struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);

    struct rtl8192_tx_ring *ring = &priv->tx_ring[prio];

    while (skb_queue_len(&ring->queue)) {
        tx_desc_819x_pci *entry = &ring->desc[ring->idx];
        struct sk_buff *skb;




        if(prio != BEACON_QUEUE) {
            if(entry->OWN)
                return;
            ring->idx = (ring->idx + 1) % ring->entries;
        }

        skb = __skb_dequeue(&ring->queue);
        pci_unmap_single(priv->pdev, le32_to_cpu(entry->TxBuffAddr),
                skb->len, PCI_DMA_TODEVICE);

        kfree_skb(skb);
    }
    if (prio == MGNT_QUEUE){
        if (priv->ieee80211->ack_tx_to_ieee){
            if (rtl8192_is_tx_queue_empty(dev)){
                priv->ieee80211->ack_tx_to_ieee = 0;
                ieee80211_ps_tx_ack(priv->ieee80211, 1);
            }
        }
    }

    if(prio != BEACON_QUEUE) {

        tasklet_schedule(&priv->irq_tx_tasklet);
    }

}
