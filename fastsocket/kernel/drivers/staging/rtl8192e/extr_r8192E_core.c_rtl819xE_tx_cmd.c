
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {int FirstSeg; int LastSeg; int Offset; int TxFWInfoSize; int OWN; int TxBuffAddr; int TxBufferSize; scalar_t__ RATid; int QueueSelect; scalar_t__ PktSize; scalar_t__ CmdInit; int LINIP; } ;
typedef TYPE_1__ tx_desc_819x_pci ;
struct sk_buff {int len; scalar_t__ cb; int data; } ;
struct rtl8192_tx_ring {unsigned int idx; unsigned int entries; int queue; TYPE_1__* desc; } ;
struct r8192_priv {int irq_th_lock; int pdev; struct rtl8192_tx_ring* tx_ring; } ;
struct net_device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_5__ {scalar_t__ bCmdOrInit; scalar_t__ pkt_size; int bLastIniPkt; } ;
typedef TYPE_2__ cb_desc ;
typedef int TX_FWINFO_8190PCI ;


 scalar_t__ DESC_PACKET_TYPE_INIT ;
 scalar_t__ DESC_PACKET_TYPE_NORMAL ;
 scalar_t__ MAX_DEV_ADDR_SIZE ;
 int PCI_DMA_TODEVICE ;
 int QSLT_CMD ;
 int TPPoll ;
 int TPPoll_CQ ;
 size_t TXCMD_QUEUE ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int cpu_to_le32 (int ) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int memset (TYPE_1__*,int ,int) ;
 int pci_map_single (int ,int ,int ,int ) ;
 int printk (char*,...) ;
 unsigned int skb_queue_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_nic_byte (struct net_device*,int ,int ) ;

void rtl819xE_tx_cmd(struct net_device *dev, struct sk_buff *skb)
{
    struct r8192_priv *priv = ieee80211_priv(dev);
    struct rtl8192_tx_ring *ring;
    tx_desc_819x_pci *entry;
    unsigned int idx;
    dma_addr_t mapping;
    cb_desc *tcb_desc;
    unsigned long flags;

    ring = &priv->tx_ring[TXCMD_QUEUE];
    mapping = pci_map_single(priv->pdev, skb->data, skb->len, PCI_DMA_TODEVICE);

    spin_lock_irqsave(&priv->irq_th_lock,flags);
    idx = (ring->idx + skb_queue_len(&ring->queue)) % ring->entries;
    entry = &ring->desc[idx];

    tcb_desc = (cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
    memset(entry,0,12);
    entry->LINIP = tcb_desc->bLastIniPkt;
    entry->FirstSeg = 1;
    entry->LastSeg = 1;
    if(tcb_desc->bCmdOrInit == DESC_PACKET_TYPE_INIT) {
        entry->CmdInit = DESC_PACKET_TYPE_INIT;
    } else {
        entry->CmdInit = DESC_PACKET_TYPE_NORMAL;
        entry->Offset = sizeof(TX_FWINFO_8190PCI) + 8;
        entry->PktSize = (u16)(tcb_desc->pkt_size + entry->Offset);
        entry->QueueSelect = QSLT_CMD;
        entry->TxFWInfoSize = 0x08;
        entry->RATid = (u8)DESC_PACKET_TYPE_INIT;
    }
    entry->TxBufferSize = skb->len;
    entry->TxBuffAddr = cpu_to_le32(mapping);
    entry->OWN = 1;
    __skb_queue_tail(&ring->queue, skb);
    spin_unlock_irqrestore(&priv->irq_th_lock,flags);

    write_nic_byte(dev, TPPoll, TPPoll_CQ);

    return;
}
