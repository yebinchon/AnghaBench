
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct TYPE_8__ {scalar_t__ skb_dma; scalar_t__ buf_dma; int byFlags; struct sk_buff* skb; } ;
struct TYPE_7__ {int pcid; } ;
struct TYPE_6__ {TYPE_3__* pTDInfo; } ;
typedef TYPE_1__* PSTxDesc ;
typedef TYPE_2__* PSDevice ;
typedef TYPE_3__* PDEVICE_TD_INFO ;


 int PCI_DMA_TODEVICE ;
 int TD_FLAGS_NETIF_SKB ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void device_free_tx_buf(PSDevice pDevice, PSTxDesc pDesc) {
    PDEVICE_TD_INFO pTDInfo=pDesc->pTDInfo;
    struct sk_buff* skb=pTDInfo->skb;


    if (pTDInfo->skb_dma && (pTDInfo->skb_dma != pTDInfo->buf_dma)) {
        pci_unmap_single(pDevice->pcid,pTDInfo->skb_dma,skb->len,
              PCI_DMA_TODEVICE);
    }

    if ((pTDInfo->byFlags & TD_FLAGS_NETIF_SKB) != 0)
        dev_kfree_skb_irq(skb);

    pTDInfo->skb_dma = 0;
    pTDInfo->skb = 0;
    pTDInfo->byFlags = 0;
}
