
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int skb; int skb_dma; } ;
struct TYPE_6__ {int nRxDescs1; } ;
struct TYPE_8__ {int rx_buf_sz; int pcid; TYPE_2__* aRD1Ring; TYPE_1__ sOpts; } ;
struct TYPE_7__ {TYPE_4__* pRDInfo; } ;
typedef int PVOID ;
typedef TYPE_2__* PSRxDesc ;
typedef TYPE_3__* PSDevice ;
typedef TYPE_4__* PDEVICE_RD_INFO ;


 int PCI_DMA_FROMDEVICE ;
 int dev_kfree_skb (int ) ;
 int kfree (int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void device_free_rd1_ring(PSDevice pDevice) {
    int i;


    for (i = 0; i < pDevice->sOpts.nRxDescs1; i++) {
        PSRxDesc pDesc=&(pDevice->aRD1Ring[i]);
        PDEVICE_RD_INFO pRDInfo=pDesc->pRDInfo;

        pci_unmap_single(pDevice->pcid,pRDInfo->skb_dma,
           pDevice->rx_buf_sz, PCI_DMA_FROMDEVICE);

        dev_kfree_skb(pRDInfo->skb);

        kfree((PVOID)pDesc->pRDInfo);
    }

}
