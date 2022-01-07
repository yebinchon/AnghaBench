
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int NextDescAddress; } ;
typedef TYPE_2__ tx_desc_819x_pci ;
struct r8192_priv {TYPE_1__* tx_ring; int pdev; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_5__ {unsigned int entries; int queue; scalar_t__ idx; scalar_t__ dma; TYPE_2__* desc; } ;


 int COMP_ERR ;
 int ENOMEM ;
 int RT_TRACE (int ,char*,unsigned int) ;
 int cpu_to_le32 (scalar_t__) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_2__* pci_alloc_consistent (int ,int,scalar_t__*) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int rtl8192_alloc_tx_desc_ring(struct net_device *dev,
        unsigned int prio, unsigned int entries)
{
    struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
    tx_desc_819x_pci *ring;
    dma_addr_t dma;
    int i;

    ring = pci_alloc_consistent(priv->pdev, sizeof(*ring) * entries, &dma);
    if (!ring || (unsigned long)ring & 0xFF) {
        RT_TRACE(COMP_ERR, "Cannot allocate TX ring (prio = %d)\n", prio);
        return -ENOMEM;
    }

    memset(ring, 0, sizeof(*ring)*entries);
    priv->tx_ring[prio].desc = ring;
    priv->tx_ring[prio].dma = dma;
    priv->tx_ring[prio].idx = 0;
    priv->tx_ring[prio].entries = entries;
    skb_queue_head_init(&priv->tx_ring[prio].queue);

    for (i = 0; i < entries; i++)
        ring[i].NextDescAddress =
            cpu_to_le32((u32)dma + ((i + 1) % entries) * sizeof(*ring));

    return 0;
}
