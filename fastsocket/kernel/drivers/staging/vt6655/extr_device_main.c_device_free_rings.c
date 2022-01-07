
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nRxDescs0; int nRxDescs1; int* nTxDescs; } ;
struct TYPE_5__ {int tx_bufs_dma0; scalar_t__ tx0_bufs; TYPE_1__ sOpts; int pcid; int pool_dma; scalar_t__ aRD0Ring; } ;
typedef int STxDesc ;
typedef int SRxDesc ;
typedef TYPE_2__* PSDevice ;


 int CB_BEACON_BUF_SIZE ;
 int CB_MAX_BUF_SIZE ;
 int PKT_BUF_SZ ;
 int pci_free_consistent (int ,int,scalar_t__,int ) ;

__attribute__((used)) static void device_free_rings(PSDevice pDevice) {

    pci_free_consistent(pDevice->pcid,
            pDevice->sOpts.nRxDescs0 * sizeof(SRxDesc) +
            pDevice->sOpts.nRxDescs1 * sizeof(SRxDesc) +
            pDevice->sOpts.nTxDescs[0] * sizeof(STxDesc) +
            pDevice->sOpts.nTxDescs[1] * sizeof(STxDesc)
            ,
            pDevice->aRD0Ring, pDevice->pool_dma
        );

    if (pDevice->tx0_bufs)
        pci_free_consistent(pDevice->pcid,
           pDevice->sOpts.nTxDescs[0] * PKT_BUF_SZ +
           pDevice->sOpts.nTxDescs[1] * PKT_BUF_SZ +
           CB_BEACON_BUF_SIZE +
           CB_MAX_BUF_SIZE,
           pDevice->tx0_bufs, pDevice->tx_bufs_dma0
        );
}
