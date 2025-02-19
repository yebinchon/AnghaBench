
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int len; } ;
struct TYPE_10__ {scalar_t__ skb_dma; scalar_t__ buf_dma; TYPE_6__* skb; } ;
struct TYPE_7__ {int* nTxDescs; } ;
struct TYPE_9__ {int pcid; TYPE_2__* apTD0Rings; TYPE_1__ sOpts; } ;
struct TYPE_8__ {TYPE_4__* pTDInfo; } ;
typedef int PVOID ;
typedef TYPE_2__* PSTxDesc ;
typedef TYPE_3__* PSDevice ;
typedef TYPE_4__* PDEVICE_TD_INFO ;


 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb (TYPE_6__*) ;
 int kfree (int ) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void device_free_td0_ring(PSDevice pDevice) {
    int i;
    for (i = 0; i < pDevice->sOpts.nTxDescs[0]; i++) {
        PSTxDesc pDesc=&(pDevice->apTD0Rings[i]);
        PDEVICE_TD_INFO pTDInfo=pDesc->pTDInfo;

        if (pTDInfo->skb_dma && (pTDInfo->skb_dma != pTDInfo->buf_dma))
            pci_unmap_single(pDevice->pcid,pTDInfo->skb_dma,
               pTDInfo->skb->len, PCI_DMA_TODEVICE);

        if (pTDInfo->skb)
            dev_kfree_skb(pTDInfo->skb);

        kfree((PVOID)pDesc->pTDInfo);
    }
}
