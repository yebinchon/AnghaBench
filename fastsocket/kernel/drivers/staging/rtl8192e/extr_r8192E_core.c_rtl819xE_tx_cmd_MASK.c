#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_4__ {int FirstSeg; int LastSeg; int Offset; int TxFWInfoSize; int OWN; int /*<<< orphan*/  TxBuffAddr; int /*<<< orphan*/  TxBufferSize; scalar_t__ RATid; int /*<<< orphan*/  QueueSelect; scalar_t__ PktSize; scalar_t__ CmdInit; int /*<<< orphan*/  LINIP; } ;
typedef  TYPE_1__ tx_desc_819x_pci ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ cb; int /*<<< orphan*/  data; } ;
struct rtl8192_tx_ring {unsigned int idx; unsigned int entries; int /*<<< orphan*/  queue; TYPE_1__* desc; } ;
struct r8192_priv {int /*<<< orphan*/  irq_th_lock; int /*<<< orphan*/  pdev; struct rtl8192_tx_ring* tx_ring; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_5__ {scalar_t__ bCmdOrInit; scalar_t__ pkt_size; int /*<<< orphan*/  bLastIniPkt; } ;
typedef  TYPE_2__ cb_desc ;
typedef  int /*<<< orphan*/  TX_FWINFO_8190PCI ;

/* Variables and functions */
 scalar_t__ DESC_PACKET_TYPE_INIT ; 
 scalar_t__ DESC_PACKET_TYPE_NORMAL ; 
 scalar_t__ MAX_DEV_ADDR_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  QSLT_CMD ; 
 int /*<<< orphan*/  TPPoll ; 
 int /*<<< orphan*/  TPPoll_CQ ; 
 size_t TXCMD_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(struct net_device *dev, struct sk_buff *skb)
{
    struct r8192_priv *priv = FUNC2(dev);
    struct rtl8192_tx_ring *ring;
    tx_desc_819x_pci *entry;
    unsigned int idx;
    dma_addr_t mapping;
    cb_desc *tcb_desc;
    unsigned long flags;

    ring = &priv->tx_ring[TXCMD_QUEUE];
    mapping = FUNC4(priv->pdev, skb->data, skb->len, PCI_DMA_TODEVICE);

    FUNC7(&priv->irq_th_lock,flags);
    idx = (ring->idx + FUNC6(&ring->queue)) % ring->entries;
    entry = &ring->desc[idx];

    tcb_desc = (cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
    FUNC3(entry,0,12);
    entry->LINIP = tcb_desc->bLastIniPkt;
    entry->FirstSeg = 1;//first segment
    entry->LastSeg = 1; //last segment
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
    entry->TxBuffAddr = FUNC1(mapping);
    entry->OWN = 1;

#ifdef JOHN_DUMP_TXDESC
    {       int i;
        tx_desc_819x_pci *entry1 =  &ring->desc[0];
        unsigned int *ptr= (unsigned int *)entry1;
        printk("<Tx descriptor>:\n");
        for (i = 0; i < 8; i++)
            printk("%8x ", ptr[i]);
        printk("\n");
    }
#endif
    FUNC0(&ring->queue, skb);
    FUNC8(&priv->irq_th_lock,flags);

    FUNC9(dev, TPPoll, TPPoll_CQ);

    return;
}